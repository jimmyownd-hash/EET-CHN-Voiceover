-- The Hidden Tomb
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
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "伊拉西亚" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn 0 A, spawn Lich A, spawn Vampire A
end)

RegisterNoOpEvent(2, nil)

RegisterEvent(176, "石棺", function()
    evt.OpenChest(1)
end, "石棺")

RegisterEvent(177, "石棺", function()
    evt.OpenChest(2)
end, "石棺")

RegisterEvent(178, "石棺", function()
    evt.OpenChest(3)
end, "石棺")

RegisterEvent(179, "石棺", function()
    evt.OpenChest(4)
end, "石棺")

RegisterEvent(180, "石棺", function()
    evt.OpenChest(5)
end, "石棺")

RegisterEvent(181, "石棺", function()
    evt.OpenChest(6)
    SetQBit(QBit(754)) -- Opened chest with shadow mask
end, "石棺")

RegisterEvent(182, "石棺", function()
    evt.OpenChest(7)
end, "石棺")

RegisterEvent(183, "石棺", function()
    evt.OpenChest(8)
end, "石棺")

RegisterEvent(184, "石棺", function()
    evt.OpenChest(9)
end, "石棺")

RegisterEvent(185, "石棺", function()
    evt.OpenChest(10)
end, "石棺")

RegisterEvent(186, "石棺", function()
    evt.OpenChest(11)
end, "石棺")

RegisterEvent(187, "石棺", function()
    evt.OpenChest(12)
end, "石棺")

RegisterEvent(188, "石棺", function()
    evt.OpenChest(13)
end, "石棺")

RegisterEvent(189, "石棺", function()
    evt.OpenChest(14)
end, "石棺")

RegisterEvent(190, "石棺", function()
    evt.OpenChest(15)
end, "石棺")

RegisterEvent(191, "石棺", function()
    evt.OpenChest(16)
end, "石棺")

RegisterEvent(192, "石棺", function()
    evt.OpenChest(17)
end, "石棺")

RegisterEvent(193, "石棺", function()
    evt.OpenChest(18)
end, "石棺")

RegisterEvent(194, "石棺", function()
    evt.OpenChest(19)
end, "石棺")

RegisterEvent(195, "石棺", function()
    evt.OpenChest(0)
end, "石棺")

RegisterEvent(501, "离开隐藏的陵寝", function()
    evt.MoveToMap(14207, -21526, 0, 1536, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开隐藏的陵寝")

