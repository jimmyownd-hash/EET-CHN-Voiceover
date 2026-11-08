-- Barrow X
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {},
    openedChestIds = {
    [176] = {0, 1},
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
    },
    contextActions = {
    [1] = { kind = "open_door", source = "opcode" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "opcode" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "opcode" },
    [176] = { kind = "open_chest", source = "opcode", chestIds = {0, 1} },
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
    [376] = { kind = "open_door", source = "opcode" },
    [451] = { kind = "use_lever", source = "title" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out11.odm", targetName = "丘陵地" },
    [502] = { kind = "passage", source = "opcode", targetMap = "mdk01.blv", targetName = "7号墓穴" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if not IsQBitSet(QBit(705)) then -- Turn on map in mdrXX(Dwarven Barrow)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn AGog A, spawn Rat A
        return
    end
    evt.SetDoorState(25, DoorAction.Open)
    evt.SetDoorState(26, DoorAction.Open)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn AGog A, spawn Rat A
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(1, DoorAction.Open)
end, "门")

RegisterEvent(4, nil, function()
    evt.SetDoorState(1, DoorAction.Close)
end)

RegisterEvent(5, "门", function()
    evt.SetDoorState(2, DoorAction.Open)
end, "门")

RegisterEvent(6, nil, function()
    evt.SetDoorState(2, DoorAction.Close)
end)

RegisterEvent(176, "箱子", function()
    if not IsQBitSet(QBit(705)) then -- Turn on map in mdrXX(Dwarven Barrow)
        evt.OpenChest(0)
        return
    end
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

RegisterEvent(376, "锁孔", function()
    if IsQBitSet(QBit(705)) then return end -- Turn on map in mdrXX(Dwarven Barrow)
    evt.ForPlayer(Players.All)
    if HasItem(1459) then -- Barrow Key
        evt.SetDoorState(25, DoorAction.Open)
        evt.SetDoorState(26, DoorAction.Open)
        SetQBit(QBit(705)) -- Turn on map in mdrXX(Dwarven Barrow)
        RemoveItem(1459) -- Barrow Key
    end
end, "锁孔")

RegisterEvent(451, "拉杆", function()
    if not IsAtLeast(MapVar(2), 2) then
        evt.SetDoorState(20, DoorAction.Open)
        SetValue(MapVar(2), 2)
        return
    end
    evt.SetDoorState(20, DoorAction.Close)
    SetValue(MapVar(2), 1)
end, "拉杆")

RegisterEvent(501, "离开矮人墓穴", function()
    evt.MoveToMap(-13827, 20039, 961, 1536, 0, 0, 0, 0, "out11.odm") -- The Barrow Downs
end, "离开矮人墓穴")

RegisterEvent(502, "离开矮人墓穴", function()
    if not IsAtLeast(MapVar(2), 2) then
        evt.MoveToMap(407, -1064, 1, 768, 0, 0, 0, 0, "mdk01.blv") -- Barrow VII
        return
    end
    evt.MoveToMap(-404, -1041, 1, 256, 0, 0, 0, 0, "mdk05.blv") -- Barrow III
end, "离开矮人墓穴")

