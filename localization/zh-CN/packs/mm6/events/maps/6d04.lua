-- Hall of the Fire Lord
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [41] = {1},
    [42] = {2, 2, 12},
    [43] = {3},
    [44] = {4},
    [45] = {5},
    [46] = {6},
    [47] = {7},
    [48] = {8},
    [49] = {9},
    [53] = {10},
    [59] = {11},
    },
    contextActions = {
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
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "opcode" },
    [27] = { kind = "teleport", source = "heuristic" },
    [28] = { kind = "teleport", source = "heuristic" },
    [29] = { kind = "teleport", source = "heuristic" },
    [30] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_door", source = "opcode" },
    [32] = { kind = "open_door", source = "opcode" },
    [33] = { kind = "open_door", source = "opcode" },
    [41] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [42] = { kind = "open_chest", source = "opcode", chestIds = {2, 12} },
    [43] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [44] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [45] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [46] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [47] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [48] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [49] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [50] = { kind = "secret_event", source = "heuristic", hidden = true },
    [51] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd2.odm", targetName = "私货湾" },
    [52] = { kind = "open_door", source = "opcode" },
    [53] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [54] = { kind = "teleport", source = "heuristic" },
    [55] = { kind = "open_door", source = "title" },
    [58] = { kind = "teleport", source = "heuristic" },
    [59] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [60] = { kind = "open_door", source = "title" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {83},
    timers = {
    { eventId = 56, sourceEventId = 56, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "daily", startHour = 12, startMinute = 0, startSecond = 0 },
    { eventId = 57, sourceEventId = 57, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 12, startMinute = 0, startSecond = 0 },
    },
})

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
    if IsQBitSet(QBit(1095)) then -- Walt
        evt.SetDoorState(10, DoorAction.Close)
        evt.SetDoorState(20, DoorAction.Close)
    elseif IsAtLeast(MapVar(11), 1) then
        if not IsAtLeast(MapVar(21), 1) then
            evt.StatusText("所有结界都必须被摧毁。")
            return
        end
        SetQBit(QBit(1095)) -- Walt
        evt.SetDoorState(10, DoorAction.Close)
        evt.SetDoorState(20, DoorAction.Close)
    elseif IsQBitSet(QBit(1065)) then -- Bruce
        if not HasItem(2102) then -- Amber
            evt.StatusText("这扇门被结界保护着。")
            return
        end
        RemoveItem(2102) -- Amber
        SetValue(MapVar(11), 1)
        if not IsAtLeast(MapVar(21), 1) then
            evt.StatusText("所有结界都必须被摧毁。")
            return
        end
        SetQBit(QBit(1095)) -- Walt
        evt.SetDoorState(10, DoorAction.Close)
        evt.SetDoorState(20, DoorAction.Close)
    else
        evt.StatusText("这扇门被结界保护着。")
        return
    end
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(13, DoorAction.Close)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(15, DoorAction.Close)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
    evt.SetDoorState(45, DoorAction.Open)
    evt.SetDoorState(46, DoorAction.Open)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
end, "门")

RegisterEvent(20, "门", function()
    if not IsQBitSet(QBit(1095)) then -- Walt
        if IsAtLeast(MapVar(21), 1) then
            if not IsAtLeast(MapVar(11), 1) then
                evt.StatusText("所有结界都必须被摧毁。")
                return
            end
            SetQBit(QBit(1095)) -- Walt
            evt.SetDoorState(20, DoorAction.Close)
        elseif IsQBitSet(QBit(1065)) then -- Bruce
            if not HasItem(2102) then -- Amber
                evt.StatusText("这扇门被结界保护着。")
                return
            end
            RemoveItem(2102) -- Amber
            SetValue(MapVar(21), 1)
            if not IsAtLeast(MapVar(11), 1) then
                evt.StatusText("所有结界都必须被摧毁。")
                return
            end
            SetQBit(QBit(1095)) -- Walt
            evt.SetDoorState(20, DoorAction.Close)
        else
            evt.StatusText("这扇门被结界保护着。")
            return
        end
        return
    end
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

RegisterEvent(25, nil, function()
    evt.SetDoorState(25, DoorAction.Trigger)
end)

RegisterEvent(27, "石面", function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if not HasItem(2102) then -- Amber
            evt.DamagePlayer(player, const.Damage.Physical, 50)
            SetValue(MapVar(2), 1)
        end
    end
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("\"啊，美味的琥珀！\"")
        evt.MoveToMap(-1792, -19, 1, 1, 0, 0, 0, 0)
        return
    end
    evt.StatusText("所有人都必须持有琥珀。吸取生命力！")
    SetValue(MapVar(2), 0)
    evt.MoveToMap(-1792, -19, 1, 1, 0, 0, 0, 0)
end, "石面")

RegisterEvent(28, nil, function()
    evt.MoveToMap(-2853, 1600, -2655, 1024, 0, 0, 0, 0)
end)

RegisterEvent(29, nil, function()
    evt.MoveToMap(2823, 1534, -2655, 45, 0, 0, 0, 0)
end)

RegisterEvent(30, "门", function()
    evt.SetDoorState(30, DoorAction.Close)
end, "门")

RegisterEvent(31, nil, function()
    evt.SetDoorState(30, DoorAction.Open)
end)

RegisterEvent(32, nil, function()
    evt.SetDoorState(45, DoorAction.Close)
    evt.SetDoorState(46, DoorAction.Close)
end)

RegisterEvent(33, nil, function()
    evt.SetDoorState(18, DoorAction.Open)
end)

RegisterEvent(41, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(42, "箱子", function()
    if not IsAtLeast(MapVar(12), 1) then
        if IsQBitSet(QBit(1099)) then -- Lisa
            evt.OpenChest(12)
        elseif HasItem(2179) then -- Chest Key
            evt.OpenChest(2)
            RemoveItem(2179) -- Chest Key
            SetValue(MapVar(12), 1)
            SetQBit(QBit(1099)) -- Lisa
        else
            evt.StatusText("箱子是锁着的。")
        end
        return
    end
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(43, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(44, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(45, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(46, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(47, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(48, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(49, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(50, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    evt.CastSpell(83, 4, 1, 0, 0, 0, 0, 0, 0) -- Day of the Gods
    SetValue(MapVar(3), 1)
    evt.StatusText("魔法焕然一新！")
end)

RegisterEvent(51, "出口", function()
    evt.MoveToMap(16387, -20005, 225, 512, 0, 0, 0, 0, "outd2.odm") -- Bootleg Bay
end, "出口")

RegisterEvent(52, "火之领主", function()
    evt.SetDoorState(51, DoorAction.Close)
    evt.SetDoorState(52, DoorAction.Close)
    SetQBit(QBit(1065)) -- Bruce
    evt.SpeakNPC(1083) -- Lord of Fire
end, "火焰领主")

RegisterEvent(53, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(54, "石面", function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if not HasItem(2102) then -- Amber
            evt.DamagePlayer(player, const.Damage.Physical, 50)
            SetValue(MapVar(2), 1)
        end
    end
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("\"啊，美味的琥珀！\"")
        evt.MoveToMap(-1792, -19, 1, 1, 0, 0, 0, 0)
        return
    end
    evt.StatusText("所有人都必须持有琥珀。吸取生命力！")
    SetValue(MapVar(2), 0)
    evt.MoveToMap(-1792, -19, 1, 1, 0, 0, 0, 0)
end, "石面")

RegisterEvent(55, "门", function()
    evt.SetDoorState(55, DoorAction.Close)
end, "门")

RegisterEvent(56, nil, function()
    SetValue(MapVar(3), 0)
end)

RegisterEvent(57, nil, function()
    SetValue(MapVar(3), 0)
end)

RegisterEvent(58, "石面", function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if not HasItem(2102) then -- Amber
            evt.DamagePlayer(player, const.Damage.Physical, 50)
            SetValue(MapVar(2), 1)
        end
    end
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("\"啊，美味的琥珀！\"")
        evt.MoveToMap(-1792, -19, 1, 1, 0, 0, 0, 0)
        return
    end
    evt.StatusText("所有人都必须持有琥珀。吸取生命力！")
    SetValue(MapVar(2), 0)
    evt.MoveToMap(-1792, -19, 1, 1, 0, 0, 0, 0)
end, "石面")

RegisterEvent(59, "袋子", function()
    evt.OpenChest(11)
end, "袋子")

RegisterEvent(60, "门", function()
    evt.SetDoorState(58, DoorAction.Close)
end, "门")

