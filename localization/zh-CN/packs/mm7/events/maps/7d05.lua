-- The Arena
-- generated from legacy EVT/STR

SetMapMetadata({
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
    [376] = { kind = "open_door", source = "title" },
    [457] = { kind = "open_door", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out02.odm", targetName = "和谐谷" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 451, sourceEventId = 451, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 4 },
    { eventId = 452, sourceEventId = 452, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 5 },
    { eventId = 453, sourceEventId = 453, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 3 },
    { eventId = 454, sourceEventId = 454, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 5 },
    { eventId = 455, sourceEventId = 455, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 4 },
    { eventId = 456, sourceEventId = 456, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 5 },
    },
})

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

RegisterEvent(376, "门", function()
    evt.SpeakNPC(639) -- Arena Master
end, "门")

RegisterEvent(451, nil, function()
    evt.SetDoorState(1, DoorAction.Trigger)
end)

RegisterEvent(452, nil, function()
    evt.SetDoorState(2, DoorAction.Trigger)
end)

RegisterEvent(453, nil, function()
    evt.SetDoorState(3, DoorAction.Trigger)
end)

RegisterEvent(454, nil, function()
    evt.SetDoorState(4, DoorAction.Trigger)
end)

RegisterEvent(455, nil, function()
    evt.SetDoorState(5, DoorAction.Trigger)
end)

RegisterEvent(456, nil, function()
    evt.SetDoorState(6, DoorAction.Trigger)
end)

RegisterEvent(457, nil, function()
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(2, DoorAction.Trigger)
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(4, DoorAction.Trigger)
    evt.SetDoorState(5, DoorAction.Trigger)
    evt.SetDoorState(6, DoorAction.Trigger)
end)

RegisterEvent(501, "离开竞技场", function()
    evt.MoveToMap(-5692, 11137, 1, 1024, 0, 0, 0, 0, "7out02.odm") -- Harmondale
end, "离开竞技场")

