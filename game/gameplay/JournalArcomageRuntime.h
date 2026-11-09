#pragma once

#include <string>
#include <vector>

namespace OpenYAMM::Game
{
class HouseTable;
class MapStats;
class Party;

// The Journal's Arcomage notes: per continent, how many of its taverns the party has beaten, then each tavern with
// its town and whether it is won.
std::vector<std::string> buildArcomageTavernTexts(const HouseTable &houseTable, const MapStats &mapStats,
    const Party &party);

// The same notes as columns: a heading row per continent, then tavern, town and whether it is won.
struct ArcomageJournalRow
{
    bool heading = false;
    std::string title; // the heading text, or the tavern's name
    std::string town;
    bool won = false;
};

std::vector<ArcomageJournalRow> buildArcomageJournalRows(const HouseTable &houseTable, const MapStats &mapStats,
    const Party &party);
} // namespace OpenYAMM::Game
