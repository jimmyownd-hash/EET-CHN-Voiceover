-- Wromthrax's Cave
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
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out13.odm", targetName = "塔塔力雅" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 376, sourceEventId = 376, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 7 },
    },
})

RegisterEvent(1, nil, function()
    if IsQBitSet(QBit(535)) then -- Killed dragon when on Crusader quest
        return
    elseif IsQBitSet(QBit(1684)) then -- Replacement for NPCs ¹17 ver. 7
        evt.SetMonGroupBit(56, MonsterBits.Invisible, 0) -- actor group 56: Blue Dragon
        return
    else
        return
    end
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

RegisterEvent(376, nil, function()
    if not IsQBitSet(QBit(534)) then return end -- Kill Wromthrax the Heartless in his cave in Tatalia, then talk to Sir Charles Quixote.
    if IsQBitSet(QBit(535)) then return end -- Killed dragon when on Crusader quest
    if evt.CheckMonstersKilled(ActorKillCheck.Group, 56, 1, false) then -- actor group 56: Blue Dragon; at least 1 matching actor defeated
        evt.ForPlayer(Players.All)
        SetQBit(QBit(535)) -- Killed dragon when on Crusader quest
        evt.SetNPCGreeting(356, 0) -- Sir Charles Quixote greeting cleared
        evt.SpeakNPC(356) -- Sir Charles Quixote
    end
end)

RegisterEvent(501, "离开洞穴", function()
    evt.MoveToMap(-1037, 21058, 2656, 1536, 0, 0, 0, 0, "7out13.odm") -- Tatalia
end, "离开洞穴")

