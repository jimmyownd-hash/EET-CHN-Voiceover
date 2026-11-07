-- Silver Helm Stronghold
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [16] = {1},
    [17] = {2},
    [18] = {3},
    [19] = {4},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "opcode" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "opcode" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [17] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [18] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [19] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [20] = { kind = "open_door", source = "opcode" },
    [21] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd1.odm", targetName = "银湾" },
    [24] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {"d5walc", "john01"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "骷髅门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "骷髅门")

RegisterEvent(2, "骷髅门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "骷髅门")

RegisterEvent(3, "骷髅门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "骷髅门")

RegisterEvent(4, "骷髅门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "骷髅门")

RegisterEvent(5, "骷髅门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "骷髅门")

RegisterEvent(6, "骷髅门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "骷髅门")

RegisterEvent(7, "骷髅门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "骷髅门")

RegisterEvent(8, nil, function()
    evt.SetDoorState(8, DoorAction.Close)
end)

RegisterEvent(9, "骷髅门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "骷髅门")

RegisterEvent(10, nil, function()
    evt.SetDoorState(10, DoorAction.Close)
end)

RegisterEvent(11, "骷髅门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "骷髅门")

RegisterEvent(12, "骷髅门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "骷髅门")

RegisterEvent(13, "骷髅门", function()
    evt.SetDoorState(13, DoorAction.Close)
end, "骷髅门")

RegisterEvent(16, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(17, "箱子", function()
    if not IsAtLeast(MapVar(2), 2) then
        evt.SummonMonsters(2, 1, 3, 322, 524, 1, 0, 0) -- encounter slot 2 "FighterChain" tier A, count 3, pos=(322, 524, 1), actor group 0, no unique actor name
        evt.SummonMonsters(2, 2, 1, -740, 717, 1, 0, 0) -- encounter slot 2 "FighterChain" tier B, count 1, pos=(-740, 717, 1), actor group 0, no unique actor name
        evt.SummonMonsters(1, 1, 3, -628, 649, 1, 0, 0) -- encounter slot 1 "Nobleman" tier A, count 3, pos=(-628, 649, 1), actor group 0, no unique actor name
        evt.SummonMonsters(3, 2, 1, 617, 1921, 1, 0, 0) -- encounter slot 3 "Sorcerer" tier B, count 1, pos=(617, 1921, 1), actor group 0, no unique actor name
        evt.SummonMonsters(1, 1, 1, -437, 3194, 1, 0, 0) -- encounter slot 1 "Nobleman" tier A, count 1, pos=(-437, 3194, 1), actor group 0, no unique actor name
        evt.SummonMonsters(1, 1, 1, 190, 3217, 1, 0, 0) -- encounter slot 1 "Nobleman" tier A, count 1, pos=(190, 3217, 1), actor group 0, no unique actor name
        AddValue(MapVar(2), 1)
        evt.OpenChest(2)
        return
    end
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(18, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(19, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(20, nil, function()
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(10, DoorAction.Open)
end)

RegisterEvent(21, "出口", function()
    evt.MoveToMap(-533, -2681, 944, 1536, 0, 0, 0, 0, "outd1.odm") -- Silver Cove
end, "出口")

RegisterEvent(22, nil, function()
    if IsQBitSet(QBit(1115)) then return end -- 91 D12 John Silver only talks to you once.
    evt.SetFacetBit(-1420, 16384, 1)
    evt.SetTexture(-1420, "john01")
end)

RegisterEvent(23, nil, function()
    if IsQBitSet(QBit(1115)) then return end -- 91 D12 John Silver only talks to you once.
    SetQBit(QBit(1115)) -- 91 D12 John Silver only talks to you once.
    evt.SetFacetBit(-1420, 16384, 0)
    evt.SetTexture(-1420, "d5walc")
    evt.SpeakNPC(1079) -- Ghost of John Silver
end)

RegisterEvent(24, nil, function()
    if IsAtLeast(MapVar(11), 1) then return end
    SetValue(MapVar(11), 1)
    evt.GiveItem(6, 30)
end)

