#include "game/ui/ImeComposition.h"

#include <algorithm>

namespace
{
struct State
{
    std::string text;
    std::vector<std::string> candidates;
    int selected = -1;
};

State &state()
{
    static State instance;
    return instance;
}
}

namespace ImeComposition
{
void handleEvent(const SDL_Event &event)
{
    State &data = state();

    switch (event.type)
    {
        case SDL_EVENT_TEXT_EDITING:
            data.text = event.edit.text != nullptr ? event.edit.text : "";

            if (data.text.empty())
            {
                data.candidates.clear();
                data.selected = -1;
            }
            break;

        case SDL_EVENT_TEXT_EDITING_CANDIDATES:
            data.candidates.clear();

            for (int i = 0; event.edit_candidates.candidates != nullptr && i < event.edit_candidates.num_candidates; ++i)
            {
                const char *pCandidate = event.edit_candidates.candidates[i];
                data.candidates.emplace_back(pCandidate != nullptr ? pCandidate : "");
            }

            data.selected = event.edit_candidates.selected_candidate;
            break;

        case SDL_EVENT_TEXT_INPUT:
        case SDL_EVENT_WINDOW_FOCUS_LOST:
            clear();
            break;

        default:
            break;
    }
}

void clear()
{
    State &data = state();
    data.text.clear();
    data.candidates.clear();
    data.selected = -1;
}

const std::string &text()
{
    return state().text;
}

const std::vector<std::string> &candidates()
{
    return state().candidates;
}

int selectedCandidate()
{
    return state().selected;
}

std::string candidateLine(size_t maxCount)
{
    const State &data = state();
    std::string line;
    const size_t count = std::min(maxCount, data.candidates.size());

    for (size_t i = 0; i < count; ++i)
    {
        const std::string entry = std::to_string(i + 1) + "." + data.candidates[i];

        if (!line.empty())
        {
            line += " ";
        }

        line += int(i) == data.selected ? "[" + entry + "]" : entry;
    }

    return line;
}

std::string caret(bool withCandidates)
{
    std::string result = state().text + "_";

    if (withCandidates && !state().candidates.empty())
    {
        result += "  " + candidateLine(5);
    }

    return result;
}
}
