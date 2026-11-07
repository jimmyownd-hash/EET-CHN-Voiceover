-- Plane of Fire
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapFaceMask = 0x08000000,
    onLoad = {1, 2, 3, 4, 5},
    onLeave = {6, 7, 8, 9, 10},
    openedChestIds = {
    [81] = {0},
    [82] = {1},
    [83] = {2},
    [84] = {3},
    [85] = {4},
    [86] = {5},
    [87] = {6},
    [88] = {7},
    [89] = {8},
    [90] = {9},
    [91] = {10},
    [92] = {11},
    [93] = {12},
    [94] = {13},
    [95] = {14},
    [96] = {15},
    [97] = {16},
    [98] = {17},
    [99] = {18},
    [100] = {19},
    },
    contextActions = {
    [11] = { kind = "enter_house", source = "opcode", houseId = 686, targetName = "余烬之家" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 687, targetName = "恒焰之家" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 688, targetName = "空屋" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 689, targetName = "空屋" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 690, targetName = "空屋" },
    [21] = { kind = "enter_house", source = "opcode", houseId = 543, targetName = "伯恩之家" },
    [81] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [82] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [83] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [84] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [85] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [86] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [87] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [88] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [89] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [90] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [91] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [92] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [93] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [94] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [95] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [96] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [97] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [98] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [99] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [100] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [451] = { kind = "generic_event", source = "opcode" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "d29.blv", targetName = "火焰城堡" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "d30.blv", targetName = "军营" },
    [505] = { kind = "travel", source = "opcode", targetMap = "out04.odm", targetName = "铁沙沙漠" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterNoOpEvent(1, nil)

RegisterNoOpEvent(2, nil)

RegisterNoOpEvent(3, nil)

RegisterNoOpEvent(4, nil)

RegisterNoOpEvent(5, nil)

RegisterEvent(6, nil, function()
    if IsQBitSet(QBit(242)) then return end -- Got the heart of fire
    evt.ForPlayer(Players.All)
    if HasItem(606) then -- Heart of Fire
        SetQBit(QBit(242)) -- Got the heart of fire
        AddValue(Experience, 100000)
        SetQBit(QBit(205)) -- Heart of Fire - I lost it
    end
end)

RegisterNoOpEvent(7, nil)

RegisterNoOpEvent(8, nil)

RegisterNoOpEvent(9, nil)

RegisterNoOpEvent(10, nil)

RegisterEvent(11, "余烬之家", function()
    evt.EnterHouse(686) -- Ember's House
end, "余烬之家")

RegisterEvent(12, "余烬之家", nil, "余烬之家")

RegisterEvent(13, "恒焰之家", function()
    evt.EnterHouse(687) -- Evenblaze's House
end, "恒焰之家")

RegisterEvent(14, "恒焰之家", nil, "恒焰之家")

RegisterEvent(15, "空房屋", function()
    evt.EnterHouse(688) -- Empty House
end, "空房屋")

RegisterEvent(16, "空房屋", nil, "空房屋")

RegisterEvent(17, "空房屋", function()
    evt.EnterHouse(689) -- Empty House
end, "空房屋")

RegisterEvent(18, "空房屋", nil, "空房屋")

RegisterEvent(19, "空房屋", function()
    evt.EnterHouse(690) -- Empty House
end, "空房屋")

RegisterEvent(20, "空房屋", nil, "空房屋")

RegisterEvent(21, "伯恩之家", function()
    evt.EnterHouse(543) -- Burn's House
end, "伯恩之家")

RegisterEvent(22, "伯恩之家", nil, "伯恩之家")

RegisterEvent(81, nil, function()
    evt.OpenChest(0)
end)

RegisterEvent(82, nil, function()
    evt.OpenChest(1)
end)

RegisterEvent(83, nil, function()
    evt.OpenChest(2)
end)

RegisterEvent(84, nil, function()
    evt.OpenChest(3)
end)

RegisterEvent(85, nil, function()
    evt.OpenChest(4)
end)

RegisterEvent(86, nil, function()
    evt.OpenChest(5)
end)

RegisterEvent(87, nil, function()
    evt.OpenChest(6)
end)

RegisterEvent(88, nil, function()
    evt.OpenChest(7)
end)

RegisterEvent(89, nil, function()
    evt.OpenChest(8)
end)

RegisterEvent(90, nil, function()
    evt.OpenChest(9)
end)

RegisterEvent(91, nil, function()
    evt.OpenChest(10)
end)

RegisterEvent(92, nil, function()
    evt.OpenChest(11)
end)

RegisterEvent(93, nil, function()
    evt.OpenChest(12)
end)

RegisterEvent(94, nil, function()
    evt.OpenChest(13)
end)

RegisterEvent(95, nil, function()
    evt.OpenChest(14)
end)

RegisterEvent(96, nil, function()
    evt.OpenChest(15)
end)

RegisterEvent(97, nil, function()
    evt.OpenChest(16)
end)

RegisterEvent(98, nil, function()
    evt.OpenChest(17)
end)

RegisterEvent(99, nil, function()
    evt.OpenChest(18)
end)

RegisterEvent(100, nil, function()
    evt.OpenChest(19)
end)

RegisterEvent(401, "火焰城堡", nil, "火焰城堡")

RegisterEvent(402, "军营", nil, "军营")

RegisterEvent(403, "离开火焰位面之门", nil, "离开火焰位面之门")

RegisterEvent(451, "喝一口", function()
    if not IsAtLeast(FireResistanceBonus, 25) then
        AddValue(FireResistanceBonus, 25)
        evt.StatusText("火系抗性+25（临时）")
        SetAutonote(231) -- Well in the Plane of Fire gives a temporary Fire Resistance bonus of 25.
        return
    end
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(452, nil, function()
    evt._SpecialJump(33555456, 220)
end)

RegisterEvent(453, nil, function()
    evt._SpecialJump(33555968, 220)
end)

RegisterEvent(454, nil, function()
    evt._SpecialJump(33554432, 220)
end)

RegisterEvent(501, "进入火焰城堡", function()
    evt.MoveToMap(1, 1, 1, 256, 0, 0, 376, 1, "d29.blv") -- Castle of Fire
end, "进入火焰城堡")

RegisterEvent(502, "进入战争营地", function()
    evt.MoveToMap(4, -1050, 1, 512, 0, 0, 377, 1, "d30.blv") -- War Camp
end, "进入战争营地")

RegisterEvent(505, "离开火焰位面", function()
    evt.MoveToMap(20912, 20208, 918, 1024, 0, 0, 0, 1, "out04.odm") -- Ironsand Desert
end, "离开火焰位面")

