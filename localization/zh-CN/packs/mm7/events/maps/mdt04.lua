-- Barrow VIII
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
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
    [1] = { kind = "open_door", source = "opcode" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
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
    [451] = { kind = "use_lever", source = "title" },
    [452] = { kind = "use_lever", source = "title" },
    [501] = { kind = "passage", source = "opcode", targetMap = "mdr05.blv", targetName = "古墓XV" },
    [502] = { kind = "passage", source = "opcode", targetMap = "mdk04.blv", targetName = "古墓XIV" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if not IsQBitSet(QBit(703)) then -- Turn on map in mdtXX(Dwarven Barrow)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Rat A, spawn Wight A
        return
    end
    evt.SetDoorState(25, DoorAction.Open)
    evt.SetDoorState(26, DoorAction.Open)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Rat A, spawn Wight A
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(1, DoorAction.Trigger)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(2, DoorAction.Trigger)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(3, DoorAction.Trigger)
end, "门")

RegisterEvent(176, "门", function()
    evt.OpenChest(1)
end, "门")

RegisterEvent(177, "门", function()
    evt.OpenChest(2)
end, "门")

RegisterEvent(178, "门", function()
    evt.OpenChest(3)
end, "门")

RegisterEvent(179, "门", function()
    evt.OpenChest(4)
end, "门")

RegisterEvent(180, "门", function()
    evt.OpenChest(5)
end, "门")

RegisterEvent(181, "门", function()
    evt.OpenChest(6)
end, "门")

RegisterEvent(182, "门", function()
    evt.OpenChest(7)
end, "门")

RegisterEvent(183, "门", function()
    evt.OpenChest(8)
end, "门")

RegisterEvent(184, "门", function()
    evt.OpenChest(9)
end, "门")

RegisterEvent(185, "门", function()
    evt.OpenChest(10)
end, "门")

RegisterEvent(186, "门", function()
    evt.OpenChest(11)
end, "门")

RegisterEvent(187, "门", function()
    evt.OpenChest(12)
end, "门")

RegisterEvent(188, "门", function()
    evt.OpenChest(13)
end, "门")

RegisterEvent(189, "门", function()
    evt.OpenChest(14)
end, "门")

RegisterEvent(190, "门", function()
    evt.OpenChest(15)
end, "门")

RegisterEvent(191, "门", function()
    evt.OpenChest(16)
end, "门")

RegisterEvent(192, "门", function()
    evt.OpenChest(17)
end, "门")

RegisterEvent(193, "门", function()
    evt.OpenChest(18)
end, "门")

RegisterEvent(194, "门", function()
    evt.OpenChest(19)
end, "门")

RegisterEvent(195, "门", function()
    evt.OpenChest(0)
end, "门")

RegisterEvent(451, "拉杆", function()
    if not IsAtLeast(MapVar(2), 2) then
        evt.SetDoorState(20, DoorAction.Open)
        SetValue(MapVar(2), 2)
        return
    end
    evt.SetDoorState(20, DoorAction.Close)
    SetValue(MapVar(2), 1)
end, "拉杆")

RegisterEvent(452, "拉杆", function()
    if not IsAtLeast(MapVar(3), 2) then
        evt.SetDoorState(21, DoorAction.Open)
        SetValue(MapVar(3), 2)
        return
    end
    evt.SetDoorState(21, DoorAction.Close)
    SetValue(MapVar(3), 1)
end, "拉杆")

RegisterEvent(501, "离开矮人墓穴", function()
    if not IsAtLeast(MapVar(3), 2) then
        evt.MoveToMap(100, 2418, 65, 1408, 0, 0, 0, 0, "mdr05.blv") -- Barrow XV
        return
    end
    evt.MoveToMap(504, 301, 65, 1408, 0, 0, 0, 0, "mdt05.blv") -- Barrow XIII
end, "离开矮人墓穴")

RegisterEvent(502, "离开矮人墓穴", function()
    if not IsAtLeast(MapVar(2), 2) then
        evt.MoveToMap(401, -1010, 1, 768, 0, 0, 0, 0, "mdk04.blv") -- Barrow XIV
        return
    end
    evt.MoveToMap(423, -1059, 1, 640, 0, 0, 0, 0, "mdk05.blv") -- Barrow III
end, "离开矮人墓穴")

