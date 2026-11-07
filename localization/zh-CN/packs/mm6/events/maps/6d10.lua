-- Dragoons' Keep
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {42},
    onLeave = {},
    openedChestIds = {
    [26] = {1},
    [27] = {2},
    [28] = {3},
    [29] = {10, 11},
    [34] = {4},
    [35] = {5},
    [36] = {6},
    [37] = {7},
    [38] = {8},
    [39] = {9},
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
    [9] = { kind = "use_lever", source = "title" },
    [10] = { kind = "use_lever", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "opcode" },
    [14] = { kind = "use_switch", source = "title" },
    [16] = { kind = "use_switch", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "open_door", source = "title" },
    [24] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [26] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [27] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [28] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [29] = { kind = "open_chest", source = "opcode", chestIds = {10, 11} },
    [30] = { kind = "use_lever", source = "title" },
    [31] = { kind = "use_lever", source = "title" },
    [32] = { kind = "open_door", source = "title" },
    [33] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由港" },
    [34] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [35] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [36] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [37] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [38] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [39] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [40] = { kind = "open_door", source = "opcode" },
    [43] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {},
    spriteNames = {"torchnf"},
    castSpellIds = {},
    timers = {
    { eventId = 41, sourceEventId = 41, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 15 },
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

RegisterEvent(9, "拉杆", function()
    evt.SetDoorState(9, DoorAction.Trigger)
    evt.SetDoorState(28, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(10, "拉杆", function()
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(29, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, nil, function()
    evt.SetDoorState(13, DoorAction.Close)
end)

RegisterEvent(14, "开关", function()
    evt.SetDoorState(14, DoorAction.Trigger)
    evt.SetDoorState(15, DoorAction.Trigger)
end, "开关")

RegisterEvent(16, "开关", function()
    evt.SetDoorState(16, DoorAction.Trigger)
    evt.SetDoorState(17, DoorAction.Trigger)
end, "开关")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(20, DoorAction.Close)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(21, DoorAction.Close)
end, "门")

RegisterEvent(22, "门", function()
    evt.SetDoorState(22, DoorAction.Close)
end, "门")

RegisterEvent(23, "门", function()
    evt.SetDoorState(23, DoorAction.Close)
end, "门")

RegisterEvent(24, "门", function()
    evt.SetDoorState(24, DoorAction.Close)
end, "门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(25, DoorAction.Close)
end, "门")

RegisterEvent(26, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(27, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(28, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(29, "箱子", function()
    if not IsAtLeast(MapVar(5), 1) then
        if not IsQBitSet(QBit(1028)) then -- 4 D10, given when you retreive artifact from chest
            SetValue(MapVar(5), 1)
            SetQBit(QBit(1028)) -- 4 D10, given when you retreive artifact from chest
            evt.OpenChest(10)
            return
        end
        evt.OpenChest(11)
        return
    end
    SetValue(MapVar(5), 1)
    SetQBit(QBit(1028)) -- 4 D10, given when you retreive artifact from chest
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(30, "拉杆", function()
    evt.SetDoorState(26, DoorAction.Trigger)
    if IsAtLeast(MapVar(2), 5) then return end
    evt.SummonMonsters(1, 1, 3, -2976, 2512, 0, 0, 0) -- encounter slot 1 "FighterChain" tier A, count 3, pos=(-2976, 2512, 0), actor group 0, no unique actor name
    AddValue(MapVar(2), 1)
end, "拉杆")

RegisterEvent(31, "拉杆", function()
    evt.SetDoorState(27, DoorAction.Trigger)
    if IsAtLeast(MapVar(2), 5) then return end
    evt.SummonMonsters(1, 1, 3, -1111, 4424, 0, 0, 0) -- encounter slot 1 "FighterChain" tier A, count 3, pos=(-1111, 4424, 0), actor group 0, no unique actor name
    AddValue(MapVar(2), 1)
end, "拉杆")

RegisterEvent(32, "门", function()
    evt.StatusText("门纹丝不动。")
end, "门")

RegisterEvent(33, "出口", function()
    evt.MoveToMap(-4369, -18311, 161, 1536, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(34, "柜子", function()
    evt.OpenChest(4)
end, "柜子")

RegisterEvent(35, "柜子", function()
    evt.OpenChest(5)
end, "柜子")

RegisterEvent(36, "柜子", function()
    evt.OpenChest(6)
end, "柜子")

RegisterEvent(37, "柜子", function()
    evt.OpenChest(7)
end, "柜子")

RegisterEvent(38, "柜子", function()
    evt.OpenChest(8)
end, "柜子")

RegisterEvent(39, "柜子", function()
    evt.OpenChest(9)
end, "柜子")

RegisterEvent(40, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    evt.SetDoorState(17, DoorAction.Open)
    evt.FaceExpression(5)
    evt.SetSprite(69, 1, "torchnf")
    evt.StatusText("被抓住了！")
    SetValue(MapVar(3), 1)
    SetValue(MapVar(4), 1)
end)

RegisterEvent(41, nil, function()
    if IsAtLeast(MapVar(6), 1) then
        return
    elseif IsAtLeast(MapVar(4), 1) then
        if not IsAtLeast(MapVar(4), 3) then
            evt.StatusText("该死！")
            evt.SummonMonsters(2, 1, 2, -1216, 10992, -256, 0, 0) -- encounter slot 2 "BRat" tier A, count 2, pos=(-1216, 10992, -256), actor group 0, no unique actor name
            AddValue(MapVar(4), 1)
            return
        end
        evt.StatusText("那是脚步声吗？")
        evt.SummonMonsters(1, 1, 3, -1152, 9840, -256, 0, 0) -- encounter slot 1 "FighterChain" tier A, count 3, pos=(-1152, 9840, -256), actor group 0, no unique actor name
        evt.SetDoorState(17, DoorAction.Close)
        SetValue(MapVar(6), 1)
    else
        return
    end
end)

RegisterEvent(42, nil, function()
    if IsQBitSet(QBit(1028)) then -- 4 D10, given when you retreive artifact from chest
        SetValue(MapVar(5), 1)
    end
end)

RegisterEvent(43, nil, function()
    if IsAtLeast(MapVar(7), 1) then return end
    evt.GiveItem(5, 23)
    SetValue(MapVar(7), 1)
end)

