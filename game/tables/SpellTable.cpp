#include "game/tables/SpellTable.h"

#include <algorithm>
#include <cctype>

namespace OpenYAMM::Game
{
namespace
{
// English spell names by id: a localized spells table renames the spells, while monster tables, saves and rules refer to them by their English names.
struct EnglishSpellName
{
    int id;
    const char *pName;
    const char *pShortName;
};

constexpr EnglishSpellName EnglishSpellNames[] = {
    {1, "Torch Light", "Torch Light"},
    {2, "Fire Bolt", "Fire Bolt"},
    {3, "Fire Resistance", "Prot Fire"},
    {4, "Fire Aura", "Fire Aura"},
    {5, "Haste", "Haste"},
    {6, "Fireball", "Fireball"},
    {7, "Fire Spike", "Fire Spike"},
    {8, "Immolation", "Immolation"},
    {9, "Meteor Shower", "Meteor Shwr"},
    {10, "Inferno", "Inferno"},
    {11, "Incinerate", "Incinerate"},
    {12, "Wizard Eye", "Wizard Eye"},
    {13, "Feather Fall", "Feather Fall"},
    {14, "Air Resistance", "Air Resist"},
    {15, "Sparks", "Sparks"},
    {16, "Jump", "Jump"},
    {17, "Shield", "Shield"},
    {18, "Lightning Bolt", "Lightning"},
    {19, "Invisibility", "Invisibility"},
    {20, "Implosion", "Implosion"},
    {21, "Fly", "Fly"},
    {22, "Starburst", "Starburst"},
    {23, "Awaken", "Awaken"},
    {24, "Poison Spray", "Poison Spr"},
    {25, "Water Resistance", "Water Resist"},
    {26, "Ice Bolt", "Ice Bolt"},
    {27, "Water Walk", "Water Walk"},
    {28, "Recharge Item", "Recharge"},
    {29, "Acid Burst", "Acid Burst"},
    {30, "Enchant Item", "Enchant Item"},
    {31, "Town Portal", "Town Portal"},
    {32, "Ice Blast", "Ice Blast"},
    {33, "Lloyd's Beacon", "Lloyd's"},
    {34, "Stun", "Stun"},
    {35, "Slow", "Slow"},
    {36, "Earth Resistance", "Earth Resist"},
    {37, "Deadly Swarm", "Swarm"},
    {38, "Stone Skin", "Stone Skin"},
    {39, "Blades", "Blades"},
    {40, "Stone to Flesh", "Stone - Flesh"},
    {41, "Rock Blast", "Rock Blast"},
    {42, "Telekinesis", "Telekinesis"},
    {43, "Death Blossom", "Death Blsm"},
    {44, "Mass Distortion", "Mass Distort"},
    {45, "Detect Life", "Detect Life"},
    {46, "Bless", "Bless"},
    {47, "Fate", "Fate"},
    {48, "Turn Undead", "Turn Undead"},
    {49, "Remove Curse", "Rmv. Curse"},
    {50, "Preservation", "Preservation"},
    {51, "Heroism", "Heroism"},
    {52, "Spirit Lash", "Spirit Lash"},
    {53, "Raise Dead", "Raise Dead"},
    {54, "Shared Life", "Shared Life"},
    {55, "Resurrection", "Resurrection"},
    {56, "Telepathy", "Telepathy"},
    {57, "Remove Fear", "Remove Fear"},
    {58, "Mind Resistance", "Mind Resist"},
    {59, "Mind Blast", "Mind Blast"},
    {60, "Charm", "Charm"},
    {61, "Cure Paralysis", "Cure P-lyze"},
    {62, "Berserk", "Berserk"},
    {63, "Mass Fear", "Mass Fear"},
    {64, "Cure Insanity", "Cure Insane"},
    {65, "Psychic Shock", "Psy - Shock"},
    {66, "Enslave", "Enslave"},
    {67, "Cure Weakness", "Cure Weak"},
    {68, "Heal", "Heal"},
    {69, "Body Resistance", "Body Resist"},
    {70, "Harm", "Harm"},
    {71, "Regeneration", "Regeneration"},
    {72, "Cure Poison", "Cure Poison"},
    {73, "Hammerhands", "Hammerhand"},
    {74, "Cure Disease", "Cure Disease"},
    {75, "Protection from Magic", "Pro V. Magic"},
    {76, "Flying Fist", "Flying Fist"},
    {77, "Power Cure", "Power Cure"},
    {78, "Light Bolt", "Light Bolt"},
    {79, "Destroy Undead", "Dest Undead"},
    {80, "Dispel Magic", "Dispel Magic"},
    {81, "Paralyze", "Paralyze"},
    {82, "Summon Wisp", "Summon"},
    {83, "Day of the Gods", "Day -o- Gods"},
    {84, "Prismatic Light", "Pris Light"},
    {85, "Day of Protection", "Day -o- Prot"},
    {86, "Hour of Power", "Hour -o- Pwr"},
    {87, "Sunray", "Sunray"},
    {88, "Divine Intervention", "Divine Inter"},
    {89, "Reanimate", "Reanimate"},
    {90, "Toxic Cloud", "Toxic Cloud"},
    {91, "Vampiric Weapon", "Vamp Weap"},
    {92, "Shrinking Ray", "Shrink Ray"},
    {93, "Shrapmetal", "Shrapmetal"},
    {94, "Control Undead", "Cntrl Undead"},
    {95, "Pain Reflection", "Pain Reflect"},
    {96, "Dark Grasp", "Dark Grasp"},
    {97, "Dragon Breath", "Drag Breath"},
    {98, "Armageddon", "Armageddon"},
    {99, "Souldrinker", "Souldrinker"},
    {100, "Glamour", "Glamour"},
    {101, "Travelers' Boon", "Travel Boon"},
    {102, "Blind", "Blind"},
    {103, "Darkfire Bolt", "Darkfire"},
    {104, "Unused!!!", "0"},
    {105, "Unused!!!", "0"},
    {106, "Unused!!!", "0"},
    {107, "Unused!!!", "0"},
    {108, "Unused!!!", "0"},
    {109, "Unused!!!", "0"},
    {110, "Unused!!!", "0"},
    {111, "Lifedrain", "Lifedrain"},
    {112, "Levitate", "Levitate"},
    {113, "Charm", "Charm"},
    {114, "Mistform", "Mistform"},
    {115, "Unused!!!", "0"},
    {116, "Unused!!!", "0"},
    {117, "Unused!!!", "0"},
    {118, "Unused!!!", "0"},
    {119, "Unused!!!", "0"},
    {120, "Unused!!!", "0"},
    {121, "Unused!!!", "0"},
    {122, "Fear", "Fear"},
    {123, "Flame Blast", "Flame Blast"},
    {124, "Flight", "Flight"},
    {125, "Wing Buffet", "Buffet"},
    {126, "Unused!!!", "0"},
    {127, "Unused!!!", "0"},
    {128, "Unused!!!", "0"},
    {129, "Unused!!!", "0"},
    {130, "Unused!!!", "0"},
    {131, "Unused!!!", "0"},
    {132, "Unused!!!", "0"},
};

std::string normalizeName(std::string value)
{
    std::string normalized;
    normalized.reserve(value.size());

    for (char &character : value)
    {
        if (std::isspace(static_cast<unsigned char>(character)) != 0)
        {
            if (!normalized.empty() && normalized.back() != ' ')
            {
                normalized.push_back(' ');
            }

            continue;
        }

        if (character == '-' && !normalized.empty() && normalized.back() == ' ')
        {
            normalized.pop_back();
        }

        normalized.push_back(static_cast<char>(std::tolower(static_cast<unsigned char>(character))));
    }

    if (!normalized.empty() && normalized.back() == ' ')
    {
        normalized.pop_back();
    }

    return normalized;
}

std::string compactName(const std::string &value)
{
    std::string compacted;
    compacted.reserve(value.size());

    for (unsigned char character : value)
    {
        if (std::isalnum(character) != 0)
        {
            compacted.push_back(static_cast<char>(std::tolower(character)));
        }
    }

    return compacted;
}

std::string canonicalLegacySpellAlias(const std::string &normalizedName)
{
    if (normalizedName == "day-o-gods" || normalizedName == "day o gods")
    {
        return "day of the gods";
    }

    if (normalizedName == "psychic shockt")
    {
        return "psychic shock";
    }

    return normalizedName;
}

bool isNumericString(const std::string &value)
{
    if (value.empty())
    {
        return false;
    }

    for (char character : value)
    {
        if (!std::isdigit(static_cast<unsigned char>(character)))
        {
            return false;
        }
    }

    return true;
}

int intCell(const std::vector<std::string> &row, size_t column, int fallback)
{
    return row.size() > column && !row[column].empty() ? std::stoi(row[column]) : fallback;
}

int scaledDamage(int value, int percent)
{
    return (value * percent + 50) / 100;
}
}

SpellMasteryNumbers spellNumbersAtMastery(const SpellEntry &entry, SkillMastery mastery)
{
    const size_t index = mastery == SkillMastery::Grandmaster ? 3
        : mastery == SkillMastery::Master                     ? 2
        : mastery == SkillMastery::Expert                     ? 1
                                                              : 0;
    const std::array<int, 4> manaCosts = {
        entry.normalManaCost, entry.expertManaCost, entry.masterManaCost, entry.grandmasterManaCost};
    const std::array<int, 4> recoveryTicks = {
        entry.normalRecoveryTicks, entry.expertRecoveryTicks, entry.masterRecoveryTicks,
        entry.grandmasterRecoveryTicks};
    const int percent = entry.damagePercents[index];
    const bool fixed = entry.damageDiceMin == entry.damageDiceSides;
    SpellMasteryNumbers numbers = {};
    numbers.manaCost = std::max(0, manaCosts[index]);
    numbers.recoveryTicks = recoveryTicks[index];
    numbers.damageBase = scaledDamage(entry.damageBase, percent);
    numbers.damageDiceMax = scaledDamage(std::max(entry.damageDiceMin, entry.damageDiceSides), percent);
    numbers.damageDiceMin = fixed ? numbers.damageDiceMax : entry.damageDiceMin;
    numbers.projectileCount = std::max<uint32_t>(1, entry.projectileCounts[index]);
    return numbers;
}

bool SpellTable::loadFromRows(const std::vector<std::vector<std::string>> &rows)
{
    m_entries.clear();
    m_entryIndexById.clear();
    m_entryIndexByNormalizedName.clear();

    for (const std::vector<std::string> &row : rows)
    {
        if (row.size() < 6 || !isNumericString(row[0]))
        {
            continue;
        }

        SpellEntry entry = {};
        entry.id = std::stoi(row[0]);
        entry.name = row[2];
        entry.normalizedName = canonicalLegacySpellAlias(normalizeName(entry.name));
        entry.schoolName = row.size() > 3 ? row[3] : "";
        entry.shortName = row.size() > 4 ? row[4] : "";
        entry.description = row.size() > 5 ? row[5] : "";
        entry.normalText = row.size() > 6 ? row[6] : "";
        entry.expertText = row.size() > 7 ? row[7] : "";
        entry.masterText = row.size() > 8 ? row[8] : "";
        entry.grandmasterText = row.size() > 9 ? row[9] : "";
        entry.statsText = row.size() > 10 ? row[10] : "";
        entry.normalManaCost = row.size() > 11 && !row[11].empty() ? std::stoi(row[11]) : 0;
        entry.expertManaCost = row.size() > 12 && !row[12].empty() ? std::stoi(row[12]) : 0;
        entry.masterManaCost = row.size() > 13 && !row[13].empty() ? std::stoi(row[13]) : 0;
        entry.grandmasterManaCost = row.size() > 14 && !row[14].empty() ? std::stoi(row[14]) : 0;
        entry.normalRecoveryTicks = row.size() > 15 && !row[15].empty() ? std::stoi(row[15]) : 0;
        entry.expertRecoveryTicks = row.size() > 16 && !row[16].empty() ? std::stoi(row[16]) : 0;
        entry.masterRecoveryTicks = row.size() > 17 && !row[17].empty() ? std::stoi(row[17]) : 0;
        entry.grandmasterRecoveryTicks = row.size() > 18 && !row[18].empty() ? std::stoi(row[18]) : 0;
        entry.effectSoundId = row.size() > 19 && !row[19].empty() ? std::stoi(row[19]) : 0;
        entry.displayObjectId = row.size() > 20 && !row[20].empty() ? std::stoi(row[20]) : 0;
        entry.impactDisplayObjectId = row.size() > 21 && !row[21].empty() ? std::stoi(row[21]) : 0;
        entry.damageBase = row.size() > 22 && !row[22].empty() ? std::stoi(row[22]) : 0;
        entry.damageDiceSides = row.size() > 23 && !row[23].empty() ? std::stoi(row[23]) : 0;
        entry.requiredMastery = row.size() > 24 ? parseSkillMasteryToken(row[24]) : SkillMastery::None;
        entry.requiredMastery = entry.requiredMastery == SkillMastery::None ? SkillMastery::Normal
                                                                            : entry.requiredMastery;
        entry.damageDiceMin = intCell(row, 25, 1);

        for (size_t index = 0; index < 4; ++index)
        {
            entry.projectileCounts[index] = static_cast<uint32_t>(std::max(1, intCell(row, 26 + index, 1)));
            entry.damagePercents[index] = intCell(row, 30 + index, 100);
        }

        m_entryIndexById[entry.id] = m_entries.size();
        m_entryIndexByNormalizedName[entry.normalizedName] = m_entries.size();
        if (!compactName(entry.name).empty())
        {
            m_entryIndexByNormalizedName[compactName(entry.name)] = m_entries.size();
        }
        m_entries.push_back(std::move(entry));
    }

    // Also find the spells by their English names, which a localized table no longer carries.
    for (const EnglishSpellName &english : EnglishSpellNames)
    {
        const auto idIt = m_entryIndexById.find(english.id);

        if (idIt == m_entryIndexById.end())
        {
            continue;
        }

        for (const char *pName : {english.pName, english.pShortName})
        {
            const std::string name = pName;
            const std::string normalized = canonicalLegacySpellAlias(normalizeName(name));
            const std::string compact = compactName(name);

            if (!normalized.empty())
            {
                m_entryIndexByNormalizedName.emplace(normalized, idIt->second);
            }

            if (!compact.empty())
            {
                m_entryIndexByNormalizedName.emplace(compact, idIt->second);
            }
        }
    }

    return !m_entries.empty();
}

const SpellEntry *SpellTable::findById(int id) const
{
    const auto entryIt = m_entryIndexById.find(id);

    if (entryIt == m_entryIndexById.end())
    {
        return nullptr;
    }

    return &m_entries[entryIt->second];
}

const SpellEntry *SpellTable::findByName(const std::string &name) const
{
    const std::string normalizedName = canonicalLegacySpellAlias(normalizeName(name));
    auto entryIt = m_entryIndexByNormalizedName.find(normalizedName);

    if (entryIt == m_entryIndexByNormalizedName.end())
    {
        entryIt = m_entryIndexByNormalizedName.find(compactName(name));
    }

    if (entryIt == m_entryIndexByNormalizedName.end())
    {
        return nullptr;
    }

    return &m_entries[entryIt->second];
}

const std::vector<SpellEntry> &SpellTable::entries() const
{
    return m_entries;
}
}
