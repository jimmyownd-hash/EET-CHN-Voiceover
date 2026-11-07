-- MMMerge supplement: elemental prisons stay open after the Ring of Keys was used once.

local Prisons = {
    [502] = {
        title = "进入天空领主之囚牢",
        flag = "AirPrisonOpen",
        destination = {-733, -2563, -1051, 960, 0, 0, 341, 1, "d36.blv"},
    },
    [503] = {
        title = "进入火焰领主之囚牢",
        flag = "FirePrisonOpen",
        destination = {-128, 896, 1, 1536, 0, 0, 343, 1, "d37.blv"},
    },
    [504] = {
        title = "进入流水领主之囚牢",
        flag = "WaterPrisonOpen",
        destination = {2393, -10664, 1, 520, 0, 0, 342, 1, "d38.blv"},
    },
    [505] = {
        title = "进入大地领主之囚牢",
        flag = "EarthPrisonOpen",
        destination = {-2, 118, 1, 2047, 0, 0, 379, 1, "d39.blv"},
    },
}

for eventId, prison in pairs(Prisons) do
    local prisonEventId = eventId
    local prisonDefinition = prison

    ReplaceMapEvent(prisonEventId, prisonDefinition.title, function()
        evt.ForPlayer(Players.All)

        if HasItem(629) or MM8.GetMapFlag(prisonDefinition.flag) then
            MM8.SetMapFlag(prisonDefinition.flag, true)
            evt.ForPlayer(Players.Current)
            evt.MoveToMap(table.unpack(prisonDefinition.destination))
            return
        end

        evt.ForPlayer(Players.Current)
        evt.FaceAnimation(FaceAnimation.DoorLocked)
    end, prisonDefinition.title)
end
