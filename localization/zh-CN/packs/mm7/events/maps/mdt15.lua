-- The Small House
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
    [501] = { kind = "passage", source = "opcode", targetMap = "7d25.blv", targetName = "赛勒斯提" },
    [502] = { kind = "passage", source = "opcode", targetMap = "7d26.blv", targetName = "深渊" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if IsQBitSet(QBit(759)) then return end -- Control Cube only once
    evt.SetMonsterItem(0, 1477, 1)
    evt.SetMonsterItem(0, 866, 1)
    evt.SetMonsterItem(1, 1477, 1)
    evt.SetMonsterItem(1, 866, 1)
    SetQBit(QBit(759)) -- Control Cube only once
end)

RegisterEvent(2, nil, function()
    if not evt.CheckMonstersKilled(ActorKillCheck.ActorIdOe, 0, 0, false) then -- OE actor 0; all matching actors defeated
        if evt.CheckMonstersKilled(ActorKillCheck.ActorIdOe, 1, 0, false) then -- OE actor 1; all matching actors defeated
            SetQBit(QBit(631)) -- Killed Evil MM3 Person
        end
        SetQBit(QBit(746)) -- Control Cube - I lost it
        return
    end
    SetQBit(QBit(630)) -- Killed Good MM3 Person
    SetQBit(QBit(746)) -- Control Cube - I lost it
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

RegisterEvent(501, nil, function()
    evt.MoveToMap(5648, 12374, 33, 0, 0, 0, 0, 0, "7d25.blv") -- Celeste
end)

RegisterEvent(502, nil, function()
    evt.MoveToMap(-7745, -6673, 65, 1024, 0, 0, 0, 0, "7d26.blv") -- The Pit
end)

