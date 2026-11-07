-- Plane of Air
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapFaceMask = 0x08000000,
    onLoad = {1, 2, 3, 4},
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
    [11] = { kind = "enter_house", source = "opcode", houseId = 665, targetName = "翼帆之家" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 666, targetName = "蒸汽之家" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 667, targetName = "和风之家" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 668, targetName = "空屋" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 669, targetName = "空屋" },
    [21] = { kind = "enter_house", source = "opcode", houseId = 670, targetName = "空屋" },
    [23] = { kind = "enter_house", source = "opcode", houseId = 671, targetName = "空屋" },
    [25] = { kind = "enter_house", source = "opcode", houseId = 672, targetName = "内德隆之家" },
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
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "d27.blv", targetName = "天空城堡" },
    [505] = { kind = "travel", source = "opcode", targetMap = "out07.odm", targetName = "低语森林" },
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

RegisterEvent(6, nil, function()
    if IsQBitSet(QBit(243)) then return end -- Got the heart of air
    evt.ForPlayer(Players.All)
    if HasItem(608) then -- Heart of Air
        SetQBit(QBit(243)) -- Got the heart of air
        AddValue(Experience, 100000)
        SetQBit(QBit(207)) -- Heart of Air - I lost it
    end
end)

RegisterNoOpEvent(7, nil)

RegisterNoOpEvent(8, nil)

RegisterNoOpEvent(9, nil)

RegisterNoOpEvent(10, nil)

RegisterEvent(11, "翼帆之家", function()
    evt.EnterHouse(665) -- Wingsail's House
end, "翼帆之家")

RegisterEvent(12, "翼帆之家", nil, "翼帆之家")

RegisterEvent(13, "水汽之家", function()
    evt.EnterHouse(666) -- Vapor's House
end, "水汽之家")

RegisterEvent(14, "水汽之家", nil, "水汽之家")

RegisterEvent(15, "和风之家", function()
    evt.EnterHouse(667) -- Zephyr's House
end, "和风之家")

RegisterEvent(16, "和风之家", nil, "和风之家")

RegisterEvent(17, "空房屋", function()
    evt.EnterHouse(668) -- Empty House
end, "空房屋")

RegisterEvent(18, "空房屋", nil, "空房屋")

RegisterEvent(19, "空房屋", function()
    evt.EnterHouse(669) -- Empty House
end, "空房屋")

RegisterEvent(20, "空房屋", nil, "空房屋")

RegisterEvent(21, "空房屋", function()
    evt.EnterHouse(670) -- Empty House
end, "空房屋")

RegisterEvent(22, "空房屋", nil, "空房屋")

RegisterEvent(23, "空房屋", function()
    evt.EnterHouse(671) -- Empty House
end, "空房屋")

RegisterEvent(24, "空房屋", nil, "空房屋")

RegisterEvent(25, "内德隆之家", function()
    evt.EnterHouse(672) -- Nedlon's House
end, "内德隆之家")

RegisterEvent(26, "内德隆之家", nil, "内德隆之家")

RegisterEvent(81, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(82, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(83, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(84, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(85, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(86, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(87, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(88, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(89, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(90, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(91, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(92, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(93, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(94, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(95, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(96, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(97, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(98, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(99, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(100, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(401, "天空城堡", nil, "天空城堡")

RegisterEvent(402, "鸦人巢穴", nil, "鸦人巢穴")

RegisterEvent(403, "离开天空位面之门", nil, "离开天空位面之门")

RegisterEvent(451, "喝一口", function()
    if not IsAtLeast(AirResistance, 10) then
        AddValue(AirResistance, 2)
        evt.StatusText("空气抗性+10（永久）")
        SetAutonote(229) -- Well in the Plane of Air gives a permanent Air Resistance bonus up to an Air Resistance of 10.
        return
    end
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(501, "进入空中城堡", function()
    evt.MoveToMap(-545, -2124, 0, 512, 0, 0, 374, 1, "d27.blv") -- Castle of Air
end, "进入空中城堡")

RegisterEvent(505, "离开空气位面", function()
    evt.MoveToMap(-334, 21718, 385, 1536, 0, 0, 0, 1, "out07.odm") -- Murmurwoods
end, "离开空气位面")

