-- Grand Temple of the Sun
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {451},
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
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [10] = { kind = "press_button", source = "title" },
    [11] = { kind = "press_button", source = "title" },
    [12] = { kind = "press_button", source = "title" },
    [13] = { kind = "press_button", source = "title" },
    [14] = { kind = "press_button", source = "title" },
    [15] = { kind = "press_button", source = "title" },
    [16] = { kind = "press_button", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
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
    [376] = { kind = "shrine", source = "title" },
    [451] = { kind = "secret_event", source = "heuristic", hidden = true },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out09.odm", targetName = "晨昏岛" },
    },
    textureNames = {"cfb1"},
    spriteNames = {},
    castSpellIds = {6},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Priest of the Sun, spawn Cleric Sun A, spawn Monk A
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Trigger)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Trigger)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Trigger)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Trigger)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Trigger)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Trigger)
end, "门")

RegisterEvent(10, "按钮", function()
    evt.SetDoorState(10, DoorAction.Trigger)
    SubtractValue(MapVar(2), 1)
    evt.SetDoorState(14, DoorAction.Close)
end, "按钮")

RegisterEvent(11, "按钮", function()
    evt.SetDoorState(11, DoorAction.Trigger)
    SubtractValue(MapVar(2), 1)
    evt.SetDoorState(14, DoorAction.Close)
end, "按钮")

RegisterEvent(12, "按钮", function()
    evt.SetDoorState(12, DoorAction.Trigger)
    SubtractValue(MapVar(2), 1)
    evt.SetDoorState(14, DoorAction.Close)
end, "按钮")

RegisterEvent(13, "按钮", function()
    evt.SetDoorState(13, DoorAction.Trigger)
    SubtractValue(MapVar(2), 1)
    evt.SetDoorState(14, DoorAction.Close)
end, "按钮")

RegisterEvent(14, "按钮", function()
    evt.SetDoorState(14, DoorAction.Trigger)
    SetValue(MapVar(2), 1)
end, "按钮")

RegisterEvent(15, "按钮", function()
    evt.SetDoorState(15, DoorAction.Trigger)
    SubtractValue(MapVar(2), 1)
    evt.SetDoorState(14, DoorAction.Close)
end, "按钮")

RegisterEvent(16, "按钮", function()
    if IsAtLeast(MapVar(2), 1) then
        evt.SetDoorState(16, DoorAction.Trigger)
        evt.SetDoorState(9, DoorAction.Trigger)
    end
end, "按钮")

RegisterEvent(17, "门", function()
    evt.SetDoorState(1, DoorAction.Trigger)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(2, DoorAction.Trigger)
end, "门")

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

RegisterEvent(376, "祭坛", function()
    if IsQBitSet(QBit(575)) then return end -- Defaced the Altar of Good. Priest of Dark promo quest.
    if IsQBitSet(QBit(556)) then -- Deface the Altar of Good in the Temple of the Sun on Evenmorn Isle then return to Daedalus Falk in the Deyja Moors.
        evt.SetTexture(20, "cfb1")
        SetQBit(QBit(575)) -- Defaced the Altar of Good. Priest of Dark promo quest.
        evt.ForPlayer(Players.All)
        SetQBit(QBit(757)) -- Congratulations - For Blinging
        ClearQBit(QBit(757)) -- Congratulations - For Blinging
        evt.StatusText("你亵渎了祭坛")
    end
end, "祭坛")

RegisterEvent(451, nil, function()
    evt.CastSpell(6, 10, 4, -5, 3919, 288, 0, 1044, 289) -- Fireball
end)

RegisterEvent(501, "离开太阳大神庙", function()
    evt.MoveToMap(-7166, 11033, 185, 1536, 0, 0, 0, 0, "out09.odm") -- Evenmorn Island
end, "离开太阳大神庙")

