#include "game/gameplay/JournalArcomageRuntime.h"

#include "game/party/Party.h"
#include "game/tables/HouseTable.h"
#include "game/tables/MapStats.h"

#include <algorithm>
#include <map>
#include <tuple>

namespace OpenYAMM::Game
{
namespace
{
std::string continentName(uint32_t continentId)
{
    switch (continentId)
    {
        case 1:
            return "Jadame";
        case 2:
            return "Antagarich";
        case 3:
            return "Enroth";
        default:
            return "Elsewhere";
    }
}

struct ArcomageTavern
{
    std::string town;
    std::string name;
    bool won = false;
};
} // namespace

std::vector<std::string> buildArcomageTavernTexts(const HouseTable &houseTable, const MapStats &mapStats,
    const Party &party)
{
    std::map<uint32_t, std::vector<ArcomageTavern>> tavernsByContinent;

    for (const auto &[houseId, house] : houseTable.entries())
    {
        if (!house.arcomageRule)
        {
            continue;
        }

        const MapStatsEntry *pMap = mapStats.findById(house.mapId);
        ArcomageTavern tavern;
        tavern.town = pMap != nullptr ? pMap->name : std::string();
        tavern.name = house.name;
        tavern.won = party.hasArcomageWinAt(houseId);
        tavernsByContinent[pMap != nullptr ? pMap->mergedContinentId : 0].push_back(std::move(tavern));
    }

    std::vector<std::string> texts;

    for (auto &[continentId, taverns] : tavernsByContinent)
    {
        std::sort(taverns.begin(), taverns.end(), [](const ArcomageTavern &left, const ArcomageTavern &right)
            {
                return std::tie(left.town, left.name) < std::tie(right.town, right.name);
            });
        const size_t wonCount = size_t(std::count_if(taverns.begin(), taverns.end(),
            [](const ArcomageTavern &tavern) { return tavern.won; }));
        texts.push_back(continentName(continentId) + ": " + std::to_string(wonCount) + " of "
            + std::to_string(taverns.size()) + " taverns won.");

        for (const ArcomageTavern &tavern : taverns)
        {
            const std::string place = tavern.town.empty() ? tavern.name : tavern.name + ", " + tavern.town;
            texts.push_back(place + (tavern.won ? ": won" : ": not won yet"));
        }
    }

    return texts;
}

std::vector<ArcomageJournalRow> buildArcomageJournalRows(const HouseTable &houseTable, const MapStats &mapStats,
    const Party &party)
{
    std::map<uint32_t, std::vector<ArcomageTavern>> tavernsByContinent;

    for (const auto &[houseId, house] : houseTable.entries())
    {
        if (!house.arcomageRule)
        {
            continue;
        }

        const MapStatsEntry *pMap = mapStats.findById(house.mapId);
        ArcomageTavern tavern;
        tavern.town = pMap != nullptr ? pMap->name : std::string();
        tavern.name = house.name;
        tavern.won = party.hasArcomageWinAt(houseId);
        tavernsByContinent[pMap != nullptr ? pMap->mergedContinentId : 0].push_back(std::move(tavern));
    }

    std::vector<ArcomageJournalRow> texts;

    for (auto &[continentId, taverns] : tavernsByContinent)
    {
        std::sort(taverns.begin(), taverns.end(), [](const ArcomageTavern &left, const ArcomageTavern &right)
            {
                return std::tie(left.town, left.name) < std::tie(right.town, right.name);
            });
        const size_t wonCount = size_t(std::count_if(taverns.begin(), taverns.end(),
            [](const ArcomageTavern &tavern) { return tavern.won; }));
        ArcomageJournalRow heading;
        heading.heading = true;
        heading.title = continentName(continentId) + ": " + std::to_string(wonCount) + " of "
            + std::to_string(taverns.size()) + " taverns won.";
        texts.push_back(std::move(heading));

        for (const ArcomageTavern &tavern : taverns)
        {
            ArcomageJournalRow row;
            row.title = tavern.name;
            row.town = tavern.town;
            row.won = tavern.won;
            texts.push_back(std::move(row));
        }
    }

    return texts;
}
} // namespace OpenYAMM::Game
