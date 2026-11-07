-- Icewind Keep
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [20] = {0},
    [21] = {1},
    [22] = {2},
    [23] = {3},
    [24] = {4},
    [25] = {5, 7},
    [26] = {6},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "opcode" },
    [2] = { kind = "use_lever", source = "title" },
    [3] = { kind = "use_lever", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "use_lever", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [21] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [22] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [23] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [24] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [25] = { kind = "open_chest", source = "opcode", chestIds = {5, 7} },
    [26] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [27] = { kind = "generic_event", source = "opcode" },
    [28] = { kind = "generic_event", source = "opcode" },
    [29] = { kind = "generic_event", source = "opcode" },
    [30] = { kind = "generic_event", source = "opcode" },
    [31] = { kind = "generic_event", source = "opcode" },
    [32] = { kind = "generic_event", source = "opcode" },
    [33] = { kind = "generic_event", source = "opcode" },
    [34] = { kind = "generic_event", source = "opcode" },
    [35] = { kind = "open_door", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc1.odm", targetName = "冰封高地" },
    [51] = { kind = "secret_event", source = "heuristic", hidden = true },
    [52] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    evt.SetDoorState(1, DoorAction.Close)
end)

RegisterEvent(2, "拉杆", function()
    evt.StatusText("远处传来隆隆声。")
    evt.FaceExpression(30)
    evt.SetDoorState(2, DoorAction.Trigger)
    evt.SetDoorState(16, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(3, "拉杆", function()
    evt.StatusText("远处传来隆隆声。")
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(17, DoorAction.Trigger)
end, "拉杆")

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

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, "拉杆", function()
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(19, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(15, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
end, "门")

RegisterEvent(20, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(21, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(22, "柜子", function()
    evt.OpenChest(2)
end, "柜子")

RegisterEvent(23, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(24, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(25, "箱子", function()
    if not IsAtLeast(MapVar(11), 1) then
        if not IsQBitSet(QBit(1049)) then -- 25 D15, Given to find merchants White pearl
            evt.OpenChest(5)
            AddValue(MapVar(11), 1)
            SetQBit(QBit(1049)) -- 25 D15, Given to find merchants White pearl
            SetQBit(QBit(1213)) -- Quest item bits for seer
            return
        end
        evt.OpenChest(7)
        return
    end
    evt.OpenChest(5)
    AddValue(MapVar(11), 1)
    SetQBit(QBit(1049)) -- 25 D15, Given to find merchants White pearl
    SetQBit(QBit(1213)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(26, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(27, "床", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(2), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(28, "床", function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(3), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(29, "床", function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(4), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(30, "床", function()
    if not IsAtLeast(MapVar(5), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(5), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(31, "床", function()
    if not IsAtLeast(MapVar(6), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(6), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(32, "床", function()
    if not IsAtLeast(MapVar(7), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(7), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(33, "床", function()
    if not IsAtLeast(MapVar(8), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(InventoryItem(1631), 1631) -- Heavy Poleaxe
        AddValue(MapVar(8), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(34, "床", function()
    if not IsAtLeast(MapVar(9), 1) then
        evt.StatusText("你在床边发现了东西。")
        AddValue(InventoryItem(1613), 1613) -- Mighty Broadsword
        AddValue(MapVar(9), 1)
        return
    end
    evt.StatusText("床是空的。")
end, "床")

RegisterEvent(35, "大门", function()
    evt.StatusText("大门纹丝不动。")
end, "大门")

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-18638, -5133, 64, 0, 0, 0, 0, 0, "outc1.odm") -- Frozen Highlands
end, "出口")

RegisterEvent(51, nil, function()
    if IsAtLeast(MapVar(21), 1) then return end
    SetValue(MapVar(21), 1)
    evt.GiveItem(6, 35)
end)

RegisterEvent(52, nil, function()
    if IsAtLeast(MapVar(21), 1) then return end
    SetValue(MapVar(21), 1)
    evt.GiveItem(6, 35)
end)

