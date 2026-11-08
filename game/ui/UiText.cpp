#include "game/ui/UiText.h"

#include "engine/AssetFileSystem.h"

#include <algorithm>
#include <cctype>
#include <mutex>
#include <optional>
#include <unordered_map>
#include <utility>
#include <vector>

namespace
{
struct PatternPart
{
    bool placeholder = false;
    std::string text; // literal text, or the placeholder name
};

struct Pattern
{
    std::vector<PatternPart> parts;
    std::string value;
};

struct Overrides
{
    std::unordered_map<std::string, std::string> exact;
    std::unordered_map<std::string, std::string> lowerExact; // keys in lower case, for text the game upper-cases
    std::vector<std::pair<std::string, std::string>> prefixes;
    std::vector<Pattern> patterns;
    std::unordered_map<std::string, std::string> cache;
    bool loaded = false;
};

Overrides &overrides()
{
    static Overrides instance;
    return instance;
}

std::mutex &overridesMutex()
{
    static std::mutex instance;
    return instance;
}

std::string unescape(const std::string &text)
{
    std::string out;
    out.reserve(text.size());

    for (size_t i = 0; i < text.size(); ++i)
    {
        if (text[i] == '\\' && i + 1 < text.size() && text[i + 1] == 'n')
        {
            out += '\n';
            ++i;
        }
        else
        {
            out += text[i];
        }
    }

    return out;
}

// A placeholder is {name} with a name of letters, digits and underscores.
std::optional<Pattern> parsePattern(const std::string &key, const std::string &value)
{
    Pattern pattern;
    pattern.value = value;
    std::string literal;
    bool hasPlaceholder = false;

    for (size_t i = 0; i < key.size();)
    {
        if (key[i] == '{')
        {
            const size_t close = key.find('}', i);

            if (close != std::string::npos && close > i + 1)
            {
                bool nameOk = true;

                for (size_t k = i + 1; k < close; ++k)
                {
                    const char c = key[k];
                    nameOk = nameOk && (std::isalnum(static_cast<unsigned char>(c)) || c == '_' || c == '#');
                }

                if (nameOk)
                {
                    if (!literal.empty())
                    {
                        pattern.parts.push_back({false, literal});
                        literal.clear();
                    }

                    pattern.parts.push_back({true, key.substr(i + 1, close - i - 1)});
                    hasPlaceholder = true;
                    i = close + 1;
                    continue;
                }
            }
        }

        literal += key[i++];
    }

    if (!literal.empty())
    {
        pattern.parts.push_back({false, literal});
    }

    if (!hasPlaceholder)
    {
        return std::nullopt;
    }

    return pattern;
}

std::string translateLocked(Overrides &data, const std::string &text, int depth);

// A placeholder whose name ends in '#' ({n#}) stands for a number (a count, a price, a level): digits with their
// punctuation, percent signs and colour codes. Any other text fails the pattern, so a short pattern such as
// "{a#} of {b#}" never rewrites an item name.
bool numericCaptureOk(const std::string &capture)
{
    bool digit = false;

    for (const char c : capture)
    {
        const bool ok = std::isdigit(static_cast<unsigned char>(c)) || c == ' ' || c == '.' || c == ',' || c == '%'
            || c == '+' || c == '-' || c == '/' || c == 'x' || c == '\f';
        digit = digit || std::isdigit(static_cast<unsigned char>(c));

        if (!ok)
        {
            return false;
        }
    }

    return digit;
}

bool matchFrom(
    const Pattern &pattern,
    const std::string &text,
    size_t index,
    size_t position,
    std::unordered_map<std::string, std::string> &captures)
{
    const size_t count = pattern.parts.size();

    if (index == count)
    {
        return position == text.size();
    }

    const PatternPart &part = pattern.parts[index];

    if (!part.placeholder)
    {
        if (text.compare(position, part.text.size(), part.text) != 0)
        {
            return false;
        }

        return matchFrom(pattern, text, index + 1, position + part.text.size(), captures);
    }

    const bool numeric = !part.text.empty() && part.text.back() == '#';

    if (index + 1 == count)
    {
        std::string capture = text.substr(position);

        if (numeric && !numericCaptureOk(capture))
        {
            return false;
        }

        captures[part.text] = std::move(capture);
        return true;
    }

    // The next part is a literal (placeholders never touch). Take the shortest text that lets the rest match, and
    // try later occurrences of that literal when the rest does not.
    const std::string &next = pattern.parts[index + 1].text;

    for (size_t from = position;;)
    {
        const size_t found = text.find(next, from);

        if (found == std::string::npos)
        {
            return false;
        }

        std::string capture = text.substr(position, found - position);

        if (!numeric || numericCaptureOk(capture))
        {
            captures[part.text] = std::move(capture);

            if (matchFrom(pattern, text, index + 2, found + next.size(), captures))
            {
                return true;
            }
        }

        from = found + 1;
    }
}

// Matches text against a pattern; placeholders take the shortest text that lets the following literal match.
bool matchPattern(const Pattern &pattern, const std::string &text, std::unordered_map<std::string, std::string> &captures)
{
    return matchFrom(pattern, text, 0, 0, captures);
}

std::string translateLocked(Overrides &data, const std::string &text, int depth)
{
    if (text.empty() || depth > 4)
    {
        return text;
    }

    const auto exact = data.exact.find(text);

    if (exact != data.exact.end())
    {
        return exact->second;
    }

    if (text.size() >= 3)
    {
        std::string lower = text;
        bool hasUpper = false;

        for (char &c : lower)
        {
            hasUpper = hasUpper || std::isupper(static_cast<unsigned char>(c));
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        }

        if (hasUpper)
        {
            const auto found = data.lowerExact.find(lower);

            if (found != data.lowerExact.end())
            {
                return found->second;
            }
        }
    }

    for (const Pattern &pattern : data.patterns)
    {
        std::unordered_map<std::string, std::string> captures;

        if (!matchPattern(pattern, text, captures))
        {
            continue;
        }

        std::string result;

        for (size_t i = 0; i < pattern.value.size();)
        {
            if (pattern.value[i] == '{')
            {
                const size_t close = pattern.value.find('}', i);

                if (close != std::string::npos)
                {
                    const auto capture = captures.find(pattern.value.substr(i + 1, close - i - 1));

                    if (capture != captures.end())
                    {
                        result += translateLocked(data, capture->second, depth + 1);
                        i = close + 1;
                        continue;
                    }
                }
            }

            result += pattern.value[i++];
        }

        return result;
    }

    for (const auto &[prefix, value] : data.prefixes)
    {
        if (text.size() > prefix.size() && text.compare(0, prefix.size(), prefix) == 0)
        {
            return value + translateLocked(data, text.substr(prefix.size()), depth + 1);
        }
    }

    // Lists the game joins with " · " or ", ": translate each piece. Only pieces that are entries themselves change,
    // so ordinary sentences with commas stay as they are. A trailing "*" or " +N" (a count of further names) stays.
    struct Separator
    {
        const char *find;
        const char *join;
    };

    // A trailing comma (a line the game wrapped inside a list) or a " +N" count of further names stays as it is.
    {
        std::string core = text;
        std::string tail;

        if (core.size() > 1 && core.back() == ',')
        {
            core.pop_back();
            tail = "、";
        }
        else
        {
            const size_t plus = core.rfind(" +");

            if (plus != std::string::npos && plus + 2 < core.size()
                && core.find_first_not_of("0123456789", plus + 2) == std::string::npos)
            {
                tail = core.substr(plus);
                core.erase(plus);
            }
        }

        if (!tail.empty() && !core.empty())
        {
            const std::string translated = translateLocked(data, core, depth + 1);

            if (translated != core)
            {
                return translated + tail;
            }
        }
    }

    // Colour codes (\f + 5 digits) split the text into separately coloured pieces; translate each piece.
    {
        std::string result;
        bool changed = false;
        bool hasCode = false;
        size_t i = 0;
        size_t segmentStart = 0;

        const auto flush = [&](size_t end)
        {
            const std::string segment = text.substr(segmentStart, end - segmentStart);
            const std::string translated = segment.size() <= 4000 ? translateLocked(data, segment, depth + 1) : segment;
            changed = changed || translated != segment;
            result += translated;
        };

        while (i < text.size())
        {
            if (text[i] == '\f' && i + 5 < text.size()
                && text.find_first_not_of("0123456789", i + 1) >= i + 6)
            {
                hasCode = true;
                flush(i);
                result += text.substr(i, 6);
                i += 6;
                segmentStart = i;
                continue;
            }

            ++i;
        }

        if (hasCode)
        {
            flush(text.size());

            if (changed)
            {
                return result;
            }
        }
    }

    for (const Separator &separator :
         {Separator{"\n", "\n"}, Separator{" - ", " - "}, Separator{" · ", " · "}, Separator{", ", "、"},
          Separator{" / ", " / "}, Separator{" and ", "和"}})
    {
        if (depth == 0 && std::string(separator.find) == " and ")
        {
            continue;
        }

        const std::string find = separator.find;

        if (text.find(find) == std::string::npos)
        {
            continue;
        }

        std::string result;
        bool changed = false;
        size_t start = 0;

        while (start <= text.size())
        {
            size_t end = text.find(find, start);

            if (end == std::string::npos)
            {
                end = text.size();
            }

            std::string piece = text.substr(start, end - start);
            std::string tail;

            if (!piece.empty() && piece.back() == '*')
            {
                tail = "*";
                piece.pop_back();
            }
            else
            {
                const size_t plus = piece.rfind(" +");

                if (plus != std::string::npos && plus + 2 < piece.size()
                    && piece.find_first_not_of("0123456789", plus + 2) == std::string::npos)
                {
                    tail = piece.substr(plus);
                    piece.erase(plus);
                }
            }

            const std::string translated = piece.size() <= (find == "\n" ? 400 : 48) ? translateLocked(data, piece, depth + 1) : piece;
            changed = changed || translated != piece;
            result += (result.empty() && start == 0 ? "" : separator.join) + translated + tail;
            start = end + find.size();

            if (end == text.size())
            {
                break;
            }
        }

        if (changed)
        {
            return result;
        }
    }

    return text;
}
}

namespace UiText
{
void load(const OpenYAMM::Engine::AssetFileSystem &assetFileSystem)
{
    std::lock_guard<std::mutex> lock(overridesMutex());
    Overrides &data = overrides();

    if (data.loaded)
    {
        return;
    }

    data.loaded = true;
    const std::optional<std::string> content = assetFileSystem.readTextFile("data_tables/english/ui_text.txt");

    if (!content || content->empty())
    {
        return;
    }

    size_t start = 0;

    while (start < content->size())
    {
        size_t end = content->find('\n', start);

        if (end == std::string::npos)
        {
            end = content->size();
        }

        std::string line = content->substr(start, end - start);
        start = end + 1;

        if (!line.empty() && line.back() == '\r')
        {
            line.pop_back();
        }

        if (line.empty() || line[0] == '#')
        {
            continue;
        }

        const size_t tab = line.find('\t');

        if (tab == std::string::npos || tab == 0)
        {
            continue;
        }

        const std::string key = unescape(line.substr(0, tab));
        const std::string value = unescape(line.substr(tab + 1));

        if (key.back() == '*')
        {
            data.prefixes.emplace_back(key.substr(0, key.size() - 1), value);
        }
        else if (const std::optional<Pattern> pattern = parsePattern(key, value))
        {
            data.patterns.push_back(*pattern);
        }
        else
        {
            data.exact[key] = value;

            if (key.size() >= 3)
            {
                std::string lower = key;

                for (char &c : lower)
                {
                    c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
                }

                data.lowerExact.emplace(lower, value);
            }
        }
    }

    // Patterns with more literal text are more specific; try them first (file order breaks ties).
    const auto literalSize = [](const Pattern &pattern)
    {
        size_t total = 0;

        for (const PatternPart &part : pattern.parts)
        {
            total += part.placeholder ? 0 : part.text.size();
        }

        return total;
    };
    std::stable_sort(
        data.patterns.begin(),
        data.patterns.end(),
        [&](const Pattern &left, const Pattern &right) { return literalSize(left) > literalSize(right); });

    // Longer prefixes first, so the most specific one wins.
    std::sort(
        data.prefixes.begin(),
        data.prefixes.end(),
        [](const auto &left, const auto &right) { return left.first.size() > right.first.size(); });
}

bool hasOverrides()
{
    std::lock_guard<std::mutex> lock(overridesMutex());
    const Overrides &data = overrides();
    return !data.exact.empty() || !data.prefixes.empty() || !data.patterns.empty();
}

std::string translate(const std::string &text)
{
    std::lock_guard<std::mutex> lock(overridesMutex());
    Overrides &data = overrides();

    if (data.exact.empty() && data.prefixes.empty() && data.patterns.empty())
    {
        return text;
    }

    const auto cached = data.cache.find(text);

    if (cached != data.cache.end())
    {
        return cached->second;
    }

    // The game writes the middle dot of its lists as a lone Latin-1 byte (\xB7); the table is UTF-8, so match on the
    // UTF-8 form and show that one.
    std::string normalized;
    normalized.reserve(text.size() + 4);

    for (size_t i = 0; i < text.size();)
    {
        const unsigned char c = static_cast<unsigned char>(text[i]);
        size_t length = 1;

        // Valid UTF-8 sequences (including the real middle dot C2 B7 and Chinese characters whose last byte is B7,
        // such as the one in "scroll") pass through unchanged; only a stray 0xB7 is the game's Latin-1 middle dot.
        if (c >= 0xC2 && c <= 0xF4)
        {
            const size_t expected = c >= 0xF0 ? 4 : (c >= 0xE0 ? 3 : 2);
            bool valid = i + expected <= text.size();

            for (size_t k = 1; valid && k < expected; ++k)
            {
                valid = (static_cast<unsigned char>(text[i + k]) & 0xC0) == 0x80;
            }

            if (valid)
            {
                length = expected;
            }
        }

        if (length == 1 && c == 0xB7)
        {
            normalized += "\xC2\xB7";
        }
        else
        {
            normalized.append(text, i, length);
        }

        i += length;
    }

    std::string result = translateLocked(data, normalized, 0);

    if (result == normalized)
    {
        result = text;
    }

    if (data.cache.size() > 40000)
    {
        data.cache.clear();
    }

    data.cache.emplace(text, result);
    return result;
}
}

namespace UiText
{
std::string nameAndTitle(const std::string &name, const std::string &title)
{
    return hasOverrides() ? name + " " + translate(title) : name + " the " + title;
}
}
