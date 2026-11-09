-- The Breeding Zone
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {451, 452},
    onLoad = {},
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
    [195] = {0, 19},
    },
    contextActions = {
    [3] = { kind = "press_button", source = "title" },
    [4] = { kind = "press_button", source = "title" },
    [5] = { kind = "press_button", source = "title" },
    [6] = { kind = "open_door", source = "opcode" },
    [7] = { kind = "press_button", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "press_button", source = "title" },
    [10] = { kind = "press_button", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
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
    [195] = { kind = "open_chest", source = "opcode", chestIds = {0, 19} },
    [451] = { kind = "secret_event", source = "heuristic", hidden = true },
    [452] = { kind = "secret_event", source = "heuristic", hidden = true },
    [501] = { kind = "passage", source = "opcode", targetMap = "7d26.blv", targetName = "地狱城" },
    [502] = { kind = "passage", source = "opcode", targetMap = "7d26.blv", targetName = "地狱城" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {6, 39},
    timers = {
    },
})

RegisterEvent(3, "按钮", function()
    evt.SetDoorState(11, DoorAction.Trigger)
    evt.SetDoorState(14, DoorAction.Trigger)
end, "按钮")

RegisterEvent(4, "按钮", function()
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(15, DoorAction.Trigger)
end, "按钮")

RegisterEvent(5, "按钮", function()
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(16, DoorAction.Trigger)
end, "按钮")

RegisterEvent(6, "喝一口", function()
    evt.SetDoorState(31, DoorAction.Trigger)
end, "喝一口")

RegisterEvent(7, "按钮", function()
    evt.SetDoorState(32, DoorAction.Trigger)
    evt.SetDoorState(33, DoorAction.Trigger)
end, "按钮")

RegisterEvent(8, "门", function()
    evt.SetDoorState(40, DoorAction.Trigger)
end, "门")

RegisterEvent(9, "按钮", function()
    evt.SetDoorState(53, DoorAction.Trigger)
    evt.SetDoorState(50, DoorAction.Trigger)
end, "按钮")

RegisterEvent(10, "按钮", function()
    evt.SetDoorState(52, DoorAction.Trigger)
    evt.SetDoorState(51, DoorAction.Trigger)
end, "按钮")

RegisterEvent(11, "门", function()
    evt.SetDoorState(2, DoorAction.Trigger)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(1, DoorAction.Trigger)
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

RegisterEvent(195, "箱子", function()
    if not IsAtLeast(MapVar(2), 1) then
        if not IsQBitSet(QBit(751)) then -- Got the Divine Intervention
            evt.OpenChest(0)
            SetQBit(QBit(751)) -- Got the Divine Intervention
            SetQBit(QBit(738)) -- Book of Divine Intervention - I lost it
            SetValue(MapVar(2), 1)
            return
        end
        evt.OpenChest(19)
        return
    end
    evt.OpenChest(0)
    SetQBit(QBit(751)) -- Got the Divine Intervention
    SetQBit(QBit(738)) -- Book of Divine Intervention - I lost it
    SetValue(MapVar(2), 1)
end, "箱子")

RegisterEvent(451, nil, function()
    evt.CastSpell(39, 7, 4, -4686, 3674, -447, -4686, 1445, -447) -- Blades
    evt.CastSpell(39, 7, 4, -4686, 1445, -447, -4686, 3674, -447) -- Blades
end)

RegisterEvent(452, nil, function()
    evt.CastSpell(6, 8, 4, -768, 2432, 257, 1664, 2432, 257) -- Fireball
end)

RegisterEvent(501, "离开繁殖区", function()
    evt.MoveToMap(-5376, 474, -415, 1536, 0, 0, 0, 0, "7d26.blv") -- The Pit
end, "离开繁殖区")

RegisterEvent(502, "离开繁殖区", function()
    SetQBit(QBit(641)) -- Completed Breeding Pit.
    evt.MoveToMap(-5376, 474, -415, 1536, 0, 0, 0, 0, "7d26.blv") -- The Pit
end, "离开繁殖区")

