-- Barrow I
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
    [2] = { kind = "open_door", source = "opcode" },
    [3] = { kind = "open_door", source = "opcode" },
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
    [501] = { kind = "passage", source = "opcode", targetMap = "mdr03.blv", targetName = "古墓V" },
    [502] = { kind = "passage", source = "opcode", targetMap = "mdr04.blv", targetName = "古墓XI" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if not IsQBitSet(QBit(703)) then -- Turn on map in mdtXX(Dwarven Barrow)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Bat A, spawn Wight A
        return
    end
    evt.SetDoorState(25, DoorAction.Open)
    evt.SetDoorState(26, DoorAction.Open)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Bat A, spawn Wight A
end)

RegisterEvent(2, nil, function()
    evt.SetDoorState(1, DoorAction.Trigger)
end)

RegisterEvent(3, nil, function()
    evt.SetDoorState(2, DoorAction.Trigger)
end)

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
        evt.MoveToMap(3737, 1466, 679, 768, 0, 0, 0, 0, "mdr03.blv") -- Barrow V
        return
    end
    evt.MoveToMap(915, 2418, 65, 1408, 0, 0, 0, 0, "mdr05.blv") -- Barrow XV
end, "离开矮人墓穴")

RegisterEvent(502, "离开矮人墓穴", function()
    if not IsAtLeast(MapVar(2), 2) then
        evt.MoveToMap(2826, 2025, -15, 896, 0, 0, 0, 0, "mdr04.blv") -- Barrow XI
        return
    end
    evt.MoveToMap(414, 278, -31, 1408, 0, 0, 0, 0, "mdt02.blv") -- Barrow VI
end, "离开矮人墓穴")

