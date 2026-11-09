-- Watchtower 6
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1, 455},
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
    [3] = { kind = "open_door", source = "opcode" },
    [4] = { kind = "open_door", source = "opcode" },
    [151] = { kind = "open_door", source = "opcode" },
    [152] = { kind = "open_door", source = "opcode" },
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
    [376] = { kind = "open_door", source = "opcode" },
    [451] = { kind = "open_door", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out05.odm", targetName = "德加" },
    [502] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out05.odm", targetName = "德加" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {6},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if not IsQBitSet(QBit(532)) then -- Watchtower 6. Weight in the appropriate box. Important for Global event 47 (Spy promotion)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Shade, spawn Elemental Earth A, spawn Lich A, spawn Necromancer A
        return
    end
    evt.SetDoorState(13, DoorAction.Close)
    evt.SetDoorState(12, DoorAction.Close)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Shade, spawn Elemental Earth A, spawn Lich A, spawn Necromancer A
end)

RegisterEvent(3, nil, function()
    evt.SetDoorState(11, DoorAction.Open)
end)

RegisterEvent(4, nil, function()
    evt.SetDoorState(10, DoorAction.Open)
end)

RegisterEvent(151, nil, function()
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(2, DoorAction.Trigger)
end)

RegisterEvent(152, nil, function()
    evt.SetDoorState(5, DoorAction.Open)
    evt.SetDoorState(6, DoorAction.Open)
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(4, DoorAction.Trigger)
end)

RegisterEvent(176, "箱子", function()
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

RegisterEvent(195, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(376, nil, function()
    evt.ForPlayer(Players.All)
    SetQBit(QBit(532)) -- Watchtower 6. Weight in the appropriate box. Important for Global event 47 (Spy promotion)
    evt.SetDoorState(13, DoorAction.Close)
    evt.SetDoorState(12, DoorAction.Close)
end)

RegisterEvent(451, nil, function()
    local randomStep = PickRandomOption(451, 1, {2, 5, 8, 11, 14, 20})
    if randomStep == 2 then
        evt.SetDoorState(5, DoorAction.Trigger)
        evt.SetDoorState(9, DoorAction.Trigger)
    elseif randomStep == 5 then
        evt.SetDoorState(6, DoorAction.Trigger)
        evt.SetDoorState(9, DoorAction.Trigger)
    elseif randomStep == 8 then
        evt.SetDoorState(7, DoorAction.Trigger)
        evt.SetDoorState(9, DoorAction.Trigger)
    elseif randomStep == 11 then
        evt.SetDoorState(8, DoorAction.Trigger)
        evt.SetDoorState(9, DoorAction.Trigger)
    elseif randomStep == 14 then
        evt.SetDoorState(5, DoorAction.Open)
        evt.SetDoorState(9, DoorAction.Trigger)
        evt.SetDoorState(6, DoorAction.Open)
        evt.SetDoorState(7, DoorAction.Open)
        evt.SetDoorState(8, DoorAction.Open)
    elseif randomStep == 20 then
        evt.SetDoorState(5, DoorAction.Close)
        evt.SetDoorState(9, DoorAction.Trigger)
    end
    SetValue(MapVar(3), 1)
    local randomStep = PickRandomOption(451, 24, {25, 27, 29, 31, 32, 32})
    if randomStep == 25 then
        evt.CastSpell(6, 10, 4, -3584, 9984, 2721, -376, 7228, 2721) -- Fireball
        if IsAtLeast(MapVar(3), 1) then return end
        evt.CastSpell(6, 10, 4, 2560, 4096, 2721, -376, 7228, 2721) -- Fireball
        if IsAtLeast(MapVar(3), 1) then return end
        evt.CastSpell(6, 10, 4, 2816, 9984, 2721, -376, 7228, 2721) -- Fireball
        if IsAtLeast(MapVar(3), 1) then return end
        evt.CastSpell(6, 10, 4, -3584, 4352, 2721, -376, 7228, 2721) -- Fireball
    elseif randomStep == 27 then
        evt.CastSpell(6, 10, 4, 2560, 4096, 2721, -376, 7228, 2721) -- Fireball
        if IsAtLeast(MapVar(3), 1) then return end
        evt.CastSpell(6, 10, 4, 2816, 9984, 2721, -376, 7228, 2721) -- Fireball
        if IsAtLeast(MapVar(3), 1) then return end
        evt.CastSpell(6, 10, 4, -3584, 4352, 2721, -376, 7228, 2721) -- Fireball
    elseif randomStep == 29 then
        evt.CastSpell(6, 10, 4, 2816, 9984, 2721, -376, 7228, 2721) -- Fireball
        if IsAtLeast(MapVar(3), 1) then return end
        evt.CastSpell(6, 10, 4, -3584, 4352, 2721, -376, 7228, 2721) -- Fireball
    elseif randomStep == 31 then
        evt.CastSpell(6, 10, 4, -3584, 4352, 2721, -376, 7228, 2721) -- Fireball
    end
end)

RegisterEvent(452, nil, function()
    if IsAtLeast(MapVar(6), 1) then return end
    evt.SpeakNPC(613) -- Guard
    SetValue(MapVar(6), 1)
end)

RegisterEvent(453, nil, function()
    if IsAtLeast(MapVar(6), 2) then return end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Shade, spawn Elemental Earth A, spawn Lich A, spawn Necromancer A
    SetValue(MapVar(6), 2)
end)

RegisterEvent(454, nil, function()
    SetValue(MapVar(6), 0)
end)

RegisterEvent(455, nil, function()
    if IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Shade, spawn Elemental Earth A, spawn Lich A, spawn Necromancer A
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Shade, spawn Elemental Earth A, spawn Lich A, spawn Necromancer A
    else
        return
    end
end)

RegisterEvent(501, "离开六号瞭望塔", function()
    evt.MoveToMap(-16449, -18181, 6401, 1664, 0, 0, 0, 0, "7out05.odm") -- Deyja
end, "离开六号瞭望塔")

RegisterEvent(502, "离开六号瞭望塔", function()
    evt.MoveToMap(-20388, -17503, 4193, 1828, 0, 0, 0, 0, "7out05.odm") -- Deyja
end, "离开六号瞭望塔")

