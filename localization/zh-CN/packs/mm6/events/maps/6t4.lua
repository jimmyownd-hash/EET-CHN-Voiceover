-- Temple of the Sun
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {19},
    onLeave = {},
    openedChestIds = {
    [4] = {0},
    [5] = {1},
    [6] = {2},
    [7] = {3},
    [8] = {4},
    [9] = {5},
    [10] = {6},
    [11] = {7},
    [12] = {8},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "opcode" },
    [2] = { kind = "open_door", source = "opcode" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [5] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [6] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [7] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [8] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [9] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [10] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [11] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [12] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [14] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd2.odm", targetName = "私货湾" },
    },
    textureNames = {"orair256", "sky_nit1", "sky_sns1"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 15, sourceEventId = 15, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "daily", startHour = 21, startMinute = 0, startSecond = 0 },
    { eventId = 16, sourceEventId = 16, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "daily", startHour = 88, startMinute = 0, startSecond = 0 },
    { eventId = 17, sourceEventId = 17, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "daily", startHour = 208, startMinute = 0, startSecond = 0 },
    { eventId = 18, sourceEventId = 18, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "daily", startHour = 244, startMinute = 0, startSecond = 0 },
    },
})

RegisterEvent(1, nil, function()
    evt.SetDoorState(1, DoorAction.Close)
end)

RegisterEvent(2, nil, function()
    evt.SetDoorState(2, DoorAction.Close)
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(5, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(6, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(7, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(8, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(9, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(10, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(11, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(12, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(13, "柜子", function()
    if not IsQBitSet(QBit(1075)) then -- 51 T4, Given when characters find Silver Chalice.
        SetQBit(QBit(1075)) -- 51 T4, Given when characters find Silver Chalice.
        AddValue(InventoryItem(2054), 2054) -- Sacred Chalice
        SetQBit(QBit(1212)) -- Quest item bits for seer
        return
    end
    if IsAtLeast(MapVar(6), 1) then return end
    evt.GiveItem(4, 23)
    evt.GiveItem(4, ItemType.Armor_)
    evt.GiveItem(4, 34)
    SetValue(MapVar(6), 1)
end, "柜子")

RegisterEvent(14, "出口", function()
    evt.MoveToMap(-7537, 4032, 97, 0, 0, 0, 0, 0, "outd2.odm") -- Bootleg Bay
end, "出口")

RegisterEvent(15, nil, function()
    evt.SetLight(0, 0)
    evt.SetLight(1, 0)
    evt.SetTexture(-45, "sky_nit1")
end)

RegisterEvent(16, nil, function()
    evt.SetLight(0, 1)
    evt.SetLight(1, 1)
    evt.SetTexture(-45, "orair256")
end)

RegisterEvent(17, nil, function()
    evt.SetLight(0, 1)
    evt.SetLight(1, 0)
    evt.SetTexture(-45, "sky_sns1")
end)

RegisterEvent(18, nil, function()
    evt.SetLight(0, 1)
    evt.SetLight(1, 0)
    evt.SetTexture(-45, "sky_sns1")
end)

RegisterEvent(19, nil, function()
    if IsAtLeast(Hour, 2100) then
        evt.SetLight(0, 0)
        evt.SetLight(1, 0)
        evt.SetTexture(-45, "sky_nit1")
        return
    elseif IsAtLeast(Hour, 2000) then
        evt.SetLight(0, 1)
        evt.SetLight(1, 0)
        evt.SetTexture(-45, "sky_sns1")
        return
    elseif IsAtLeast(Hour, 600) then
        return
    elseif IsAtLeast(Hour, 500) then
        evt.SetLight(0, 1)
        evt.SetLight(1, 0)
        evt.SetTexture(-45, "sky_sns1")
    else
        evt.SetLight(0, 0)
        evt.SetLight(1, 0)
        evt.SetTexture(-45, "sky_nit1")
    end
end)

RegisterEvent(20, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    AddValue(InventoryItem(1888), 1888) -- Sunray
end)

RegisterEvent(21, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    SetValue(MapVar(3), 1)
    AddValue(InventoryItem(1888), 1888) -- Sunray
end)

RegisterEvent(22, nil, function()
    if IsAtLeast(MapVar(4), 1) then return end
    SetValue(MapVar(4), 1)
    AddValue(InventoryItem(1888), 1888) -- Sunray
end)

RegisterEvent(23, nil, function()
    if IsAtLeast(MapVar(5), 1) then return end
    SetValue(MapVar(5), 1)
    AddValue(InventoryItem(1888), 1888) -- Sunray
end)

