-- Shoals
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [151] = {1},
    [152] = {2},
    [153] = {3},
    [154] = {4},
    [155] = {5},
    [156] = {6},
    [157] = {7},
    [158] = {8},
    [159] = {9},
    [160] = {10},
    [161] = {11},
    [162] = {12},
    [163] = {13},
    [164] = {14},
    [165] = {15},
    [166] = {16},
    [167] = {17},
    [168] = {18},
    [169] = {19},
    [170] = {0},
    },
    contextActions = {
    [151] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [152] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [153] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [154] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [155] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [156] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [157] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [158] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [159] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [160] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [161] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [162] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [163] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [164] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [165] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [166] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [167] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [168] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [169] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [170] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [452] = { kind = "shrine", source = "title" },
    [453] = { kind = "obelisk", source = "title" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d23.blv", targetName = "林肯号" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(151, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(152, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(153, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(154, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(155, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(156, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(157, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(158, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(159, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(160, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(161, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(162, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(163, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(164, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(165, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(166, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(167, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(168, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(169, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(170, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(451, "神殿", nil, "神殿")

RegisterEvent(452, "祭坛", function()
    evt.StatusText("你祈祷")
end, "祭坛")

RegisterEvent(453, "方尖碑", function()
    evt.StatusText("似乎什么都没发生")
end, "方尖碑")

RegisterEvent(501, "进入林肯号", function()
    evt.MoveToMap(524, 1463, 225, 1536, 0, 0, 160, 1, "7d23.blv") -- The Lincoln
end, "进入林肯号")

