-- The Temple of the Moon
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {51},
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [21] = {1},
    [22] = {2},
    [23] = {3},
    [24] = {4},
    [25] = {5},
    [26] = {6},
    [27] = {7},
    [28] = {8},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [22] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [23] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [24] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [25] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [26] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [27] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [28] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [100] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out01.odm", targetName = "翡翠岛" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {2},
    timers = {
    { eventId = 51, sourceEventId = 51, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 5 },
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(2, DoorAction.Trigger)
end, "门")

RegisterEvent(2, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
    evt.SetDoorState(5, DoorAction.Open)
    evt.SetDoorState(6, DoorAction.Open)
end, "门")

RegisterEvent(3, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(8, DoorAction.Open)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Open)
end, "门")

RegisterEvent(21, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(22, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(23, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(24, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(25, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(26, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(27, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(28, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(29, "书柜", function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    AddValue(InventoryItem(1202), 1202) -- Torch Light
end, "书柜")

RegisterEvent(30, "书柜", function()
    if IsAtLeast(MapVar(3), 1) then return end
    SetValue(MapVar(3), 1)
    AddValue(InventoryItem(1224), 1224) -- Awaken
end, "书柜")

RegisterEvent(31, "书柜", function()
    if IsAtLeast(MapVar(4), 1) then return end
    SetValue(MapVar(4), 1)
    AddValue(InventoryItem(1104), 1104) -- Fire Resistance
end, "书柜")

RegisterEvent(32, "书柜", function()
    if IsAtLeast(MapVar(5), 1) then return end
    SetValue(MapVar(5), 1)
    AddValue(InventoryItem(1113), 1113) -- Wizard Eye
end, "书柜")

RegisterEvent(33, "书柜", function()
    if IsAtLeast(MapVar(6), 1) then return end
    SetValue(MapVar(6), 1)
    AddValue(InventoryItem(1103), 1103) -- Fire Bolt
end, "书柜")

RegisterEvent(34, "书柜", function()
    if IsAtLeast(MapVar(7), 1) then return end
    SetValue(MapVar(7), 1)
    AddValue(InventoryItem(1125), 1125) -- Poison Spray
end, "书柜")

RegisterEvent(35, "书柜", function()
    if IsAtLeast(MapVar(8), 1) then return end
    SetValue(MapVar(8), 1)
    AddValue(InventoryItem(1102), 1102) -- Torch Light
end, "书柜")

RegisterEvent(36, "书柜", function()
    if IsAtLeast(MapVar(9), 1) then return end
    SetValue(MapVar(9), 1)
    AddValue(InventoryItem(1102), 1102) -- Torch Light
end, "书柜")

RegisterEvent(37, "书柜", function()
    if IsAtLeast(MapVar(10), 1) then return end
    SetValue(MapVar(10), 1)
    AddValue(InventoryItem(1102), 1102) -- Torch Light
end, "书柜")

RegisterEvent(38, "书柜", function()
    if IsAtLeast(MapVar(11), 1) then return end
    SetValue(MapVar(11), 1)
    AddValue(InventoryItem(1102), 1102) -- Torch Light
end, "书柜")

RegisterEvent(39, "书柜", function()
    if IsAtLeast(MapVar(12), 1) then return end
    SetValue(MapVar(12), 1)
    AddValue(InventoryItem(1102), 1102) -- Torch Light
end, "书柜")

RegisterEvent(40, "书柜", function()
    if IsAtLeast(MapVar(13), 1) then return end
    SetValue(MapVar(13), 1)
    AddValue(InventoryItem(1113), 1113) -- Wizard Eye
end, "书柜")

RegisterEvent(41, "书柜", function()
    if IsAtLeast(MapVar(14), 1) then return end
    SetValue(MapVar(14), 1)
    AddValue(InventoryItem(1113), 1113) -- Wizard Eye
end, "书柜")

RegisterEvent(42, "书柜", function()
    if IsAtLeast(MapVar(15), 1) then return end
    SetValue(MapVar(15), 1)
    AddValue(InventoryItem(1113), 1113) -- Wizard Eye
end, "书柜")

RegisterEvent(43, "书柜", function()
    if IsAtLeast(MapVar(16), 1) then return end
    SetValue(MapVar(16), 1)
    AddValue(InventoryItem(1113), 1113) -- Wizard Eye
end, "书柜")

RegisterEvent(51, nil, function()
    evt.CastSpell(2, 2, 1, -2619, 7850, -95, -2619, 4008, -95) -- Fire Bolt
    evt.CastSpell(2, 2, 1, -2619, 4050, -95, -2619, 7896, -95) -- Fire Bolt
end)

RegisterEvent(100, "离开月亮神庙", function()
    evt.MoveToMap(15816, 12161, 1133, 1024, 0, 0, 0, 0, "7out01.odm") -- Emerald Island
end, "离开月亮神庙")

