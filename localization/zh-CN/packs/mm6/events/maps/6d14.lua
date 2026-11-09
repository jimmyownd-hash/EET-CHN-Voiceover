-- Tomb of Ethric the Mad
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {56},
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [14] = {0},
    [15] = {1},
    [16] = {2},
    [17] = {3},
    [18] = {4},
    [19] = {5},
    [20] = {6},
    [33] = {7},
    },
    contextActions = {
    [1] = { kind = "use_elevator", source = "title" },
    [2] = { kind = "use_elevator", source = "title" },
    [3] = { kind = "use_elevator", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "use_switch", source = "title" },
    [6] = { kind = "use_switch", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [13] = { kind = "use_switch", source = "title" },
    [14] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [15] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [16] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [17] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [18] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [19] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [20] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [21] = { kind = "generic_event", source = "opcode" },
    [22] = { kind = "generic_event", source = "opcode" },
    [23] = { kind = "generic_event", source = "opcode" },
    [24] = { kind = "generic_event", source = "opcode" },
    [25] = { kind = "generic_event", source = "opcode" },
    [26] = { kind = "generic_event", source = "opcode" },
    [27] = { kind = "generic_event", source = "opcode" },
    [28] = { kind = "generic_event", source = "opcode" },
    [29] = { kind = "generic_event", source = "opcode" },
    [30] = { kind = "generic_event", source = "opcode" },
    [31] = { kind = "generic_event", source = "opcode" },
    [32] = { kind = "generic_event", source = "opcode" },
    [33] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [34] = { kind = "open_door", source = "title" },
    [35] = { kind = "generic_event", source = "opcode" },
    [36] = { kind = "generic_event", source = "opcode" },
    [37] = { kind = "generic_event", source = "opcode" },
    [38] = { kind = "generic_event", source = "opcode" },
    [39] = { kind = "open_door", source = "title" },
    [40] = { kind = "open_door", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {6},
    timers = {
    { eventId = 56, sourceEventId = 56, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 3 },
    },
})

RegisterEvent(1, "电梯", function()
    evt.SetDoorState(1, DoorAction.Trigger)
end, "电梯")

RegisterEvent(2, "电梯", function()
    evt.SetDoorState(2, DoorAction.Trigger)
end, "电梯")

RegisterEvent(3, "电梯", function()
    evt.SetDoorState(3, DoorAction.Trigger)
end, "电梯")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Trigger)
end, "门")

RegisterEvent(5, "开关", function()
    evt.SetDoorState(5, DoorAction.Trigger)
    evt.SetDoorState(10, DoorAction.Trigger)
end, "开关")

RegisterEvent(6, "开关", function()
    evt.SetDoorState(6, DoorAction.Trigger)
    evt.SetDoorState(11, DoorAction.Trigger)
end, "开关")

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

RegisterEvent(13, "开关", function()
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(12, DoorAction.Trigger)
end, "开关")

RegisterEvent(14, "石棺", function()
    evt.OpenChest(0)
end, "石棺")

RegisterEvent(15, "石棺", function()
    evt.OpenChest(1)
end, "石棺")

RegisterEvent(16, "石棺", function()
    evt.OpenChest(2)
end, "石棺")

RegisterEvent(17, "石棺", function()
    evt.OpenChest(3)
end, "石棺")

RegisterEvent(18, "石棺", function()
    evt.OpenChest(4)
end, "石棺")

RegisterEvent(19, "石棺", function()
    evt.OpenChest(5)
end, "石棺")

RegisterEvent(20, "石棺", function()
    evt.OpenChest(6)
end, "石棺")

RegisterEvent(21, "墓龛", function()
    evt.StatusText("烟雾让你感到恶心。")
    evt.ForPlayer(6)
    AddValue(Unconscious, 2)
end, "墓龛")

RegisterEvent(22, "墓龛", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(2), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(23, "墓龛", function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(3), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(24, "墓龛", function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(4), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(25, "墓龛", function()
    if not IsAtLeast(MapVar(5), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(5), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(26, "墓龛", function()
    if not IsAtLeast(MapVar(6), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(6), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(27, "墓龛", function()
    if not IsAtLeast(MapVar(6), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(6), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(28, "墓龛", function()
    if not IsAtLeast(MapVar(6), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(6), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(29, "墓龛", function()
    if not IsAtLeast(MapVar(7), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(InventoryItem(1766), 1766) -- Cure Wounds
        AddValue(MapVar(7), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(30, "墓龛", function()
    if not IsAtLeast(MapVar(8), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(InventoryItem(1715), 1715) -- Cavalier Gauntlets
        AddValue(MapVar(8), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(31, "墓龛", function()
    if not IsAtLeast(MapVar(9), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(InventoryItem(1744), 1744) -- Druid Wand of Lashing
        AddValue(MapVar(9), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(32, "墓龛", function()
    if not IsAtLeast(MapVar(10), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(InventoryItem(1760), 1760) -- Dragon Wand of Shrinking
        AddValue(MapVar(10), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(33, "石棺", function()
    evt.OpenChest(7)
end, "石棺")

RegisterEvent(34, "大门", function()
    evt.StatusText("门纹丝不动。")
end, "大门")

RegisterEvent(35, "墓龛", function()
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(36, "墓龛", function()
    if not IsAtLeast(MapVar(11), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 500)
        AddValue(MapVar(11), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(37, "墓龛", function()
    if not IsAtLeast(MapVar(12), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 500)
        AddValue(MapVar(12), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(38, "墓龛", function()
    if not IsAtLeast(MapVar(13), 1) then
        evt.StatusText("你在骨头里发现了东西。")
        AddValue(Gold, 500)
        AddValue(MapVar(13), 1)
        return
    end
    evt.StatusText("壁龛是空的。")
end, "墓龛")

RegisterEvent(39, "门", function()
    evt.StatusText("门纹丝不动。")
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(40, "门", function()
    evt.StatusText("门纹丝不动。")
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(50, "出口。", function()
    evt.MoveToMap(-19989, -1020, 159, 256, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口。")

RegisterEvent(51, "墓龛", function()
    if IsAtLeast(MapVar(31), 1) then return end
    SetValue(MapVar(31), 1)
    evt.GiveItem(4, 39)
end, "墓龛")

RegisterEvent(52, "墓龛", function()
    if IsAtLeast(MapVar(32), 1) then return end
    SetValue(MapVar(32), 1)
    evt.GiveItem(4, 37)
end, "墓龛")

RegisterEvent(53, "墓龛", function()
    if IsAtLeast(MapVar(33), 1) then return end
    SetValue(MapVar(33), 1)
    evt.GiveItem(4, 34)
end, "墓龛")

RegisterEvent(54, "墓龛", function()
    if IsAtLeast(MapVar(34), 1) then return end
    SetValue(MapVar(34), 1)
    evt.GiveItem(4, 38)
end, "墓龛")

RegisterEvent(55, nil, function()
    if IsAtLeast(MapVar(35), 1) then return end
    SetValue(MapVar(35), 1)
    AddValue(InventoryItem(1757), 1757) -- Dragon Wand of Implosion
end)

RegisterEvent(56, nil, function()
    evt.CastSpell(6, 7, 1, -1088, 1984, 896, 960, 3456, 896) -- Fireball
    evt.CastSpell(6, 7, 1, -1088, 4160, 896, 960, 2624, 896) -- Fireball
    evt.CastSpell(6, 7, 1, 832, 4160, 896, -1280, 2688, 896) -- Fireball
    evt.CastSpell(6, 7, 1, 832, 1984, 896, -1216, 3584, 896) -- Fireball
end)

