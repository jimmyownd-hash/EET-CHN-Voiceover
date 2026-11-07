-- The Erathian Sewers
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {457, 458, 459},
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [176] = {1},
    [177] = {2},
    [178] = {3},
    [179] = {4},
    [180] = {5},
    [181] = {6},
    [182] = {7},
    [183] = {8},
    [184] = {9},
    [185] = {10},
    [186] = {11},
    [187] = {12},
    [188] = {13},
    [189] = {14},
    [190] = {15},
    [191] = {16},
    [192] = {17},
    [193] = {18},
    [194] = {19},
    [195] = {0},
    },
    contextActions = {
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [151] = { kind = "open_door", source = "opcode" },
    [152] = { kind = "open_door", source = "opcode" },
    [153] = { kind = "teleport", source = "heuristic" },
    [154] = { kind = "teleport", source = "heuristic" },
    [176] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [177] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [178] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [179] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [180] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [181] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [182] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [183] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [184] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [185] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [186] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [187] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [188] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [189] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [190] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [191] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [192] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [193] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [194] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [195] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [376] = { kind = "enter_house", source = "opcode", houseId = 1162, targetName = "盗贼大师" },
    [451] = { kind = "open_door", source = "opcode" },
    [452] = { kind = "open_door", source = "opcode" },
    [453] = { kind = "open_door", source = "opcode" },
    [454] = { kind = "open_door", source = "opcode" },
    [455] = { kind = "open_door", source = "opcode" },
    [456] = { kind = "open_door", source = "opcode" },
    [457] = { kind = "secret_event", source = "heuristic", hidden = true },
    [458] = { kind = "secret_event", source = "heuristic", hidden = true },
    [459] = { kind = "secret_event", source = "heuristic", hidden = true },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "埃拉西亚" },
    [502] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "埃拉西亚" },
    [503] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "埃拉西亚" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {24, 39},
    timers = {
    },
})

RegisterEvent(3, "门", function()
    evt.SetDoorState(22, DoorAction.Close)
    SetValue(MapVar(3), 1)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(23, DoorAction.Close)
    SetValue(MapVar(3), 1)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Trigger)
    evt.SetDoorState(6, DoorAction.Trigger)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Trigger)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Trigger)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Trigger)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(13, DoorAction.Trigger)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Trigger)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(15, DoorAction.Trigger)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(16, DoorAction.Trigger)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Trigger)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
    SetValue(MapVar(3), 0)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Trigger)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(20, DoorAction.Trigger)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(21, DoorAction.Close)
    SetValue(MapVar(3), 0)
end, "门")

RegisterEvent(151, nil, function()
    evt.SetFacetBit(2, FacetBits.Invisible, 0)
    evt.SetFacetBit(2, FacetBits.Untouchable, 0)
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(2, DoorAction.Trigger)
end)

RegisterEvent(152, nil, function()
    evt.SetFacetBit(1, FacetBits.Invisible, 0)
    evt.SetFacetBit(1, FacetBits.Untouchable, 0)
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(4, DoorAction.Open)
end)

RegisterEvent(153, nil, function()
    evt.MoveToMap(768, 10880, 1, -1, 0, 0, 0, 0)
end)

RegisterEvent(154, nil, function()
    evt.MoveToMap(768, 10400, 0, -1, 0, 0, 0, 0)
end)

RegisterEvent(176, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(177, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(178, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(179, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(180, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(181, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(182, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(183, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(184, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(185, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(186, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(187, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(188, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(189, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(190, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(191, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(192, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(193, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(194, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(195, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(376, "盗贼大师", function()
    evt.EnterHouse(1162) -- Master Thief
end, "盗贼大师")

RegisterEvent(451, nil, function()
    evt.SetDoorState(24, DoorAction.Trigger)
    evt.SetDoorState(30, DoorAction.Trigger)
    evt.SetDoorState(31, DoorAction.Trigger)
    evt.SetDoorState(34, DoorAction.Trigger)
end)

RegisterEvent(452, nil, function()
    evt.SetDoorState(25, DoorAction.Trigger)
    evt.SetDoorState(34, DoorAction.Trigger)
    evt.SetDoorState(31, DoorAction.Trigger)
end)

RegisterEvent(453, nil, function()
    evt.SetDoorState(26, DoorAction.Trigger)
    evt.SetDoorState(30, DoorAction.Open)
    evt.SetDoorState(31, DoorAction.Open)
    evt.SetDoorState(32, DoorAction.Open)
    evt.SetDoorState(33, DoorAction.Open)
    evt.SetDoorState(34, DoorAction.Open)
    evt.SetDoorState(24, DoorAction.Open)
    evt.SetDoorState(25, DoorAction.Open)
    evt.SetDoorState(27, DoorAction.Open)
    evt.SetDoorState(28, DoorAction.Open)
    evt.SetDoorState(29, DoorAction.Open)
end)

RegisterEvent(454, nil, function()
    evt.SetDoorState(27, DoorAction.Trigger)
    evt.SetDoorState(32, DoorAction.Trigger)
    evt.SetDoorState(33, DoorAction.Trigger)
end)

RegisterEvent(455, nil, function()
    evt.SetDoorState(28, DoorAction.Trigger)
    evt.SetDoorState(34, DoorAction.Trigger)
end)

RegisterEvent(456, nil, function()
    evt.SetDoorState(29, DoorAction.Trigger)
    evt.SetDoorState(32, DoorAction.Trigger)
end)

RegisterEvent(457, nil, function()
    if IsAtLeast(MapVar(3), 1) then
        evt.CastSpell(39, 10, 4, 5632, 4736, 542, 5632, 12352, 542) -- Blades
    end
end)

RegisterEvent(458, nil, function()
    if IsAtLeast(MapVar(3), 1) then
        evt.CastSpell(39, 10, 4, -5632, 4736, 542, -5632, 12352, 542) -- Blades
    end
end)

RegisterEvent(459, nil, function()
    evt.CastSpell(24, 10, 4, 0, 4736, 368, 0, 5632, 64) -- Poison Spray
    evt.CastSpell(24, 10, 4, 0, 6528, 368, 0, 5632, 64) -- Poison Spray
end)

RegisterEvent(501, "离开埃拉西亚下水道", function()
    evt.MoveToMap(2727, -9254, 164, 1536, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开埃拉西亚下水道")

RegisterEvent(502, "离开埃拉西亚下水道", function()
    evt.MoveToMap(-2184, 14886, 25, 512, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开埃拉西亚下水道")

RegisterEvent(503, "离开埃拉西亚下水道", function()
    evt.MoveToMap(-18356, 15481, 158, 1, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开埃拉西亚下水道")

