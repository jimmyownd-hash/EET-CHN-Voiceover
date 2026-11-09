-- Plane Between Planes
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
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "d35.blv", targetName = "爱斯卡顿宫殿" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "d36.blv", targetName = "空气领主监狱" },
    [503] = { kind = "enter_dungeon", source = "opcode", targetMap = "d37.blv", targetName = "火之领主监狱" },
    [504] = { kind = "enter_dungeon", source = "opcode", targetMap = "d38.blv", targetName = "水之领主监狱" },
    [505] = { kind = "enter_dungeon", source = "opcode", targetMap = "d39.blv", targetName = "土之领主监狱" },
    [506] = { kind = "enter_dungeon", source = "opcode", targetMap = "d10.blv", targetName = "爱斯卡顿水晶" },
    [507] = { kind = "enter_dungeon", source = "opcode", targetMap = "d50.blv", targetName = "新世界计算（NWC）" },
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

RegisterNoOpEvent(6, nil)

RegisterNoOpEvent(7, nil)

RegisterNoOpEvent(8, nil)

RegisterNoOpEvent(9, nil)

RegisterNoOpEvent(10, nil)

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

RegisterEvent(401, "埃斯卡顿的宫殿", nil, "埃斯卡顿的宫殿")

RegisterEvent(402, "天空领主之囚牢", nil, "天空领主之囚牢")

RegisterEvent(403, "大地领主之囚牢", nil, "大地领主之囚牢")

RegisterEvent(404, "火焰领主之囚牢", nil, "火焰领主之囚牢")

RegisterEvent(405, "流水领主之囚牢", nil, "流水领主之囚牢")

RegisterEvent(406, "爱斯卡顿水晶", nil, "爱斯卡顿水晶")

RegisterEvent(501, "进入埃斯卡顿的宫殿", function()
    evt.MoveToMap(-704, -5312, 1, 512, 0, 0, 378, 1, "d35.blv") -- Escaton's Palace
end, "进入埃斯卡顿的宫殿")

RegisterEvent(502, "进入天空领主之囚牢", function()
    evt.ForPlayer(Players.All)
    if not HasItem(629) then -- Ring of Keys
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        return
    end
    evt.MoveToMap(-733, -2563, -1051, 960, 0, 0, 379, 1, "d36.blv") -- Prison of the Lord of Air
end, "进入天空领主之囚牢")

RegisterEvent(503, "进入火焰领主之囚牢", function()
    evt.ForPlayer(Players.All)
    if not HasItem(629) then -- Ring of Keys
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        return
    end
    evt.MoveToMap(-128, 896, 1, 1536, 0, 0, 342, 1, "d37.blv") -- Prison of the Lord of Fire
end, "进入火焰领主之囚牢")

RegisterEvent(504, "进入流水领主之囚牢", function()
    evt.ForPlayer(Players.All)
    if not HasItem(629) then -- Ring of Keys
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        return
    end
    evt.MoveToMap(2393, -10664, 1, 520, 0, 0, 343, 1, "d38.blv") -- Prison of the Lord of Water
end, "进入流水领主之囚牢")

RegisterEvent(505, "进入大地领主之囚牢", function()
    evt.ForPlayer(Players.All)
    if not HasItem(629) then -- Ring of Keys
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        return
    end
    evt.MoveToMap(-2, 118, 1, 2047, 0, 0, 341, 1, "d39.blv") -- Prison of the Lord of Earth
end, "进入大地领主之囚牢")

RegisterEvent(506, "进入爱斯卡顿水晶", function()
    evt.MoveToMap(-14232, -2956, 800, 432, 0, 0, 0, 1, "d10.blv") -- Escaton's Crystal
end, "进入爱斯卡顿水晶")

RegisterEvent(507, "巨人之剑", function()
    if HasItem(634) then -- Flute
        evt.MoveToMap(19, -601, 1, 1552, 0, 0, 0, 1, "d50.blv") -- NWC
    end
end, "巨人之剑")

