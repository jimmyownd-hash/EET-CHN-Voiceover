-- Caves of the Dragon Riders
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [1] = {1},
    [2] = {2},
    [3] = {3},
    [4] = {4},
    [5] = {5},
    [6] = {6},
    [7] = {7},
    [9] = {8},
    [10] = {9},
    [11] = {10},
    [12] = {11},
    [13] = {12},
    [14] = {13},
    },
    contextActions = {
    [1] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [2] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [3] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [4] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [5] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [6] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [7] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [9] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [10] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [11] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [12] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [13] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [14] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [15] = { kind = "boost", source = "title" },
    [16] = { kind = "boost", source = "title" },
    [17] = { kind = "boost", source = "title" },
    [18] = { kind = "boost", source = "title" },
    [19] = { kind = "boost", source = "title" },
    [20] = { kind = "boost", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outb1.odm", targetName = "克里格斯" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(2, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(3, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(4, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(5, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(6, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(7, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(9, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(10, nil, function()
    evt.OpenChest(9)
end)

RegisterEvent(11, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(12, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(13, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(14, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(15, "木桶", function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    evt.GiveItem(6, 23, 1607) -- Lionheart Sword
end, "木桶")

RegisterEvent(16, "木桶", function()
    if IsAtLeast(MapVar(3), 1) then return end
    SetValue(MapVar(3), 1)
    evt.GiveItem(6, ItemType.Armor_, 1680) -- Golden Plate Mail
end, "木桶")

RegisterEvent(17, "木桶", function()
    if IsAtLeast(MapVar(4), 1) then return end
    SetValue(MapVar(4), 1)
    evt.GiveItem(6, 23, 1610) -- Vanquisher Sword
end, "木桶")

RegisterEvent(18, "木桶", function()
    if IsAtLeast(MapVar(5), 1) then return end
    SetValue(MapVar(5), 1)
    evt.GiveItem(6, ItemType.Armor_, 1680) -- Golden Plate Mail
end, "木桶")

RegisterEvent(19, "木桶", function()
    if IsAtLeast(MapVar(6), 1) then return end
    SetValue(MapVar(6), 1)
    evt.GiveItem(6, 25, 1632) -- Grand Poleaxe
end, "木桶")

RegisterEvent(20, "木桶", function()
    if IsAtLeast(MapVar(7), 1) then return end
    SetValue(MapVar(7), 1)
    evt.GiveItem(6, 26, 1643) -- Titanic Trident
end, "木桶")

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-13551, 4864, 161, 512, 0, 0, 0, 0, "outb1.odm") -- Kriegspire
end, "出口")

