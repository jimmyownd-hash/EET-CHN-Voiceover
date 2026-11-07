-- Temple of Tsantsa
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [12] = {1},
    [13] = {2},
    [14] = {4},
    [15] = {5},
    [16] = {6},
    [31] = {3},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [13] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [14] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [15] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [16] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [17] = { kind = "use_lever", source = "title" },
    [19] = { kind = "open_door", source = "opcode" },
    [20] = { kind = "use_lever", source = "title" },
    [21] = { kind = "use_lever", source = "title" },
    [23] = { kind = "use_lever", source = "title" },
    [24] = { kind = "use_lever", source = "title" },
    [25] = { kind = "open_door", source = "opcode" },
    [26] = { kind = "use_lever", source = "title" },
    [29] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd2.odm", targetName = "私货湾" },
    [55] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 28, sourceEventId = 28, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 2 },
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(13, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(14, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(15, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(16, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(17, "拉杆", function()
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(18, nil, function()
    SetValue(MapVar(4), 1)
end)

RegisterEvent(19, "牢房", function()
    if not HasItem(2186) then -- Cell Key
        evt.StatusText("门是锁着的")
        return
    end
    RemoveItem(2186) -- Cell Key
    evt.SetDoorState(25, DoorAction.Close)
end, "牢房")

RegisterEvent(20, "拉杆", function()
    evt.SetDoorState(14, DoorAction.Close)
    AddValue(MapVar(2), 1)
    if IsAtLeast(MapVar(2), 2) then
        evt.SetDoorState(16, DoorAction.Close)
    end
end, "拉杆")

RegisterEvent(21, "拉杆", function()
    evt.SetDoorState(15, DoorAction.Close)
    AddValue(MapVar(2), 1)
    if IsAtLeast(MapVar(2), 2) then
        evt.SetDoorState(16, DoorAction.Close)
    end
end, "拉杆")

RegisterEvent(23, "拉杆", function()
    evt.SetDoorState(18, DoorAction.Trigger)
    evt.SetDoorState(19, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(24, "拉杆", function()
    evt.SetDoorState(20, DoorAction.Trigger)
    evt.SetDoorState(21, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(25, nil, function()
    evt.SetDoorState(17, DoorAction.Close)
end)

RegisterEvent(26, "拉杆", function()
    evt.SetDoorState(22, DoorAction.Trigger)
    evt.SetDoorState(23, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(27, nil, function()
    SetValue(MapVar(4), 0)
end)

RegisterEvent(28, nil, function()
    if IsAtLeast(MapVar(4), 1) then
        evt.DamagePlayer(Players.All, const.Damage.Magic, 5)
    end
end)

RegisterEvent(29, "门", function()
    evt.SetDoorState(24, DoorAction.Close)
end, "门")

RegisterEvent(30, nil, function()
    if IsQBitSet(QBit(1030)) then return end -- 6 T3, given when you rescue prisoner
    evt.SpeakNPC(940) -- Sherell Ivanaveh
    SetQBit(QBit(1705)) -- Replacement for NPCs �155 ver. 6
    SetQBit(QBit(1030)) -- 6 T3, given when you rescue prisoner
end)

RegisterEvent(31, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(50, nil, function()
    evt.MoveToMap(7474, 17670, 97, 1024, 0, 0, 0, 0, "outd2.odm") -- Bootleg Bay
end)

RegisterEvent(55, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    evt.GiveItem(5, 26)
end)

