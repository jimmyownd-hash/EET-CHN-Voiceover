-- Fort Riverstride
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {455},
    onLoad = {1},
    onLeave = {},
    openedChestIds = {
    [177] = {1},
    [178] = {2},
    [179] = {3},
    [180] = {4},
    [181] = {5},
    [182] = {6},
    [183] = {7},
    [184] = {8},
    [185] = {9},
    [186] = {10},
    [187] = {11},
    [188] = {12},
    [189] = {13},
    [190] = {14},
    [191] = {15},
    [192] = {16},
    [193] = {17},
    [194] = {18},
    [195] = {19},
    [196] = {0},
    },
    contextActions = {
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "open_door", source = "title" },
    [24] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [26] = { kind = "open_door", source = "title" },
    [27] = { kind = "open_door", source = "title" },
    [30] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_door", source = "title" },
    [32] = { kind = "open_door", source = "title" },
    [176] = { kind = "open_door", source = "opcode" },
    [177] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [178] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [179] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [180] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [181] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [182] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [183] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [184] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [185] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [186] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [187] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [188] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [189] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [190] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [191] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [192] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [193] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [194] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [195] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [196] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [454] = { kind = "use_lever", source = "title" },
    [455] = { kind = "secret_event", source = "heuristic", hidden = true },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "伊拉西亚" },
    [502] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "伊拉西亚" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {6, 15, 24},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Archer A, spawn Fighter Chain A, spawn Swordsman A
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Archer A, spawn Fighter Chain A, spawn Swordsman A
    else
        return
    end
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(5, DoorAction.Open)
    evt.SetDoorState(6, DoorAction.Open)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(8, DoorAction.Open)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(9, DoorAction.Open)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(10, DoorAction.Open)
    evt.SetDoorState(11, DoorAction.Open)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(12, DoorAction.Open)
    evt.SetDoorState(13, DoorAction.Open)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(14, DoorAction.Open)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(15, DoorAction.Open)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(16, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(18, DoorAction.Open)
    evt.SetDoorState(19, DoorAction.Open)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(20, DoorAction.Open)
    evt.SetDoorState(21, DoorAction.Open)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(22, DoorAction.Open)
    evt.SetDoorState(23, DoorAction.Open)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(24, DoorAction.Open)
    evt.SetDoorState(25, DoorAction.Open)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(26, DoorAction.Open)
    evt.SetDoorState(27, DoorAction.Open)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(28, DoorAction.Open)
    evt.SetDoorState(29, DoorAction.Open)
end, "门")

RegisterEvent(17, "门", function()
    evt.CastSpell(15, 7, 4, -3200, -544, -496, -3200, -544, 0) -- Sparks
    evt.SetDoorState(30, DoorAction.Open)
    evt.SetDoorState(31, DoorAction.Open)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(32, DoorAction.Open)
    evt.SetDoorState(33, DoorAction.Open)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(34, DoorAction.Open)
    evt.SetDoorState(35, DoorAction.Open)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(36, DoorAction.Open)
    evt.SetDoorState(37, DoorAction.Open)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(38, DoorAction.Open)
    evt.SetDoorState(39, DoorAction.Open)
end, "门")

RegisterEvent(22, "门", function()
    evt.SetDoorState(40, DoorAction.Open)
    evt.SetDoorState(41, DoorAction.Open)
end, "门")

RegisterEvent(23, "门", function()
    evt.SetDoorState(42, DoorAction.Open)
end, "门")

RegisterEvent(24, "门", function()
    evt.SetDoorState(43, DoorAction.Open)
    evt.SetDoorState(44, DoorAction.Open)
end, "门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(45, DoorAction.Open)
    evt.SetDoorState(46, DoorAction.Open)
end, "门")

RegisterEvent(26, "门", function()
    evt.SetDoorState(47, DoorAction.Close)
    evt.SetDoorState(49, DoorAction.Close)
end, "门")

RegisterEvent(27, "门", function()
    evt.SetDoorState(48, DoorAction.Close)
    evt.SetDoorState(50, DoorAction.Close)
end, "门")

RegisterEvent(30, "门", function()
    evt.SetDoorState(51, DoorAction.Open)
    evt.SetDoorState(52, DoorAction.Open)
end, "门")

RegisterEvent(31, "门", function()
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(2, DoorAction.Open)
end, "门")

RegisterEvent(32, "门", function()
    evt.SetDoorState(3, DoorAction.Open)
    evt.SetDoorState(4, DoorAction.Open)
end, "门")

RegisterEvent(176, "宝库", function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(606)) then -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
        return
    elseif IsQBitSet(QBit(592)) then -- Gave plans to elfking
        return
    elseif IsQBitSet(QBit(594)) then -- Gave false plans to elfking (betray)
        return
    elseif IsQBitSet(QBit(604)) then -- Fort Riverstride. Opened chest with plans
        return
    else
        evt.SetDoorState(60, DoorAction.Open)
        evt.SetDoorState(61, DoorAction.Trigger)
        evt.ForPlayer(Players.All)
        SetQBit(QBit(604)) -- Fort Riverstride. Opened chest with plans
        return
    end
end, "宝库")

RegisterEvent(177, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(178, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(179, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(180, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(181, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(182, "柜子", function()
    evt.OpenChest(6)
end, "柜子")

RegisterEvent(183, "柜子", function()
    evt.OpenChest(7)
end, "柜子")

RegisterEvent(184, "柜子", function()
    evt.OpenChest(8)
end, "柜子")

RegisterEvent(185, "柜子", function()
    evt.OpenChest(9)
end, "柜子")

RegisterEvent(186, "柜子", function()
    evt.OpenChest(10)
end, "柜子")

RegisterEvent(187, "柜子", function()
    evt.OpenChest(11)
end, "柜子")

RegisterEvent(188, "柜子", function()
    evt.OpenChest(12)
end, "柜子")

RegisterEvent(189, "柜子", function()
    evt.OpenChest(13)
end, "柜子")

RegisterEvent(190, "柜子", function()
    evt.OpenChest(14)
end, "柜子")

RegisterEvent(191, "柜子", function()
    evt.OpenChest(15)
end, "柜子")

RegisterEvent(192, "柜子", function()
    evt.OpenChest(16)
end, "柜子")

RegisterEvent(193, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(194, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(195, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(196, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(451, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 1) then return end
    evt.SpeakNPC(612) -- Guard
    SetValue(MapVar(6), 1)
end)

RegisterEvent(452, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 2) then return end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Archer A, spawn Fighter Chain A, spawn Swordsman A
    SetValue(MapVar(6), 2)
    evt.PlaySound(42317, -2304, 640)
    evt.PlaySound(42317, 256, 256)
end)

RegisterEvent(453, nil, function()
    if IsAtLeast(MapVar(6), 2) then return end
    SetValue(MapVar(6), 0)
end)

RegisterEvent(454, "拉杆", function()
    evt.SetDoorState(53, DoorAction.Trigger)
    evt.CastSpell(24, 10, 4, 448, 400, -208, 448, 586, -527) -- Poison Spray
    evt.CastSpell(24, 10, 4, 0, 400, -208, 0, 586, -527) -- Poison Spray
    evt.CastSpell(24, 10, 4, -448, 400, -208, -448, 586, -527) -- Poison Spray
end, "拉杆")

RegisterEvent(455, nil, function()
    evt.CastSpell(6, 10, 4, -1152, 1344, -288, 1152, 1472, -288) -- Fireball
    evt.CastSpell(6, 10, 4, 1152, 1344, -288, -1152, 1472, -288) -- Fireball
end)

RegisterEvent(501, "离开河滨要塞", function()
    evt.MoveToMap(11270, -2144, 1601, 1536, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开河滨要塞")

RegisterEvent(502, "离开河滨要塞", function()
    evt.MoveToMap(10531, -1536, 513, 0, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开河滨要塞")

