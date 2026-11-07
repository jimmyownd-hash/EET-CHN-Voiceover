-- Warlord's Fortress
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {48},
    onLeave = {},
    openedChestIds = {
    [25] = {0},
    [26] = {1},
    [27] = {2},
    [28] = {3},
    [29] = {4},
    [30] = {5},
    [31] = {6},
    [32] = {7},
    [33] = {8},
    [34] = {9},
    [35] = {10},
    [36] = {11, 0},
    [37] = {12},
    [38] = {13},
    [39] = {14},
    [40] = {15},
    [41] = {16},
    [42] = {17},
    [43] = {18},
    [44] = {19},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "opcode" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "opcode" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "opcode" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "opcode" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "use_switch", source = "title" },
    [20] = { kind = "teleport", source = "heuristic" },
    [21] = { kind = "teleport", source = "heuristic" },
    [22] = { kind = "teleport", source = "heuristic" },
    [23] = { kind = "teleport", source = "heuristic" },
    [24] = { kind = "teleport", source = "heuristic" },
    [25] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [26] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [27] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [28] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [29] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [30] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [31] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [32] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [33] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [34] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [35] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [36] = { kind = "open_chest", source = "opcode", chestIds = {0, 11} },
    [37] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [38] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [39] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [40] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [41] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [42] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [43] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [44] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [45] = { kind = "generic_event", source = "opcode" },
    [46] = { kind = "generic_event", source = "opcode" },
    [47] = { kind = "open_door", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd1.odm", targetName = "银湾" },
    [51] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {"d8s2on"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    evt.SetDoorState(1, DoorAction.Close)
end)

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, nil, function()
    evt.SetDoorState(4, DoorAction.Close)
end)

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "门", function()
    if not HasItem(2185) then -- Storage Key
        evt.StatusText("门上了双重锁。")
        return
    end
    if not HasItem(2191) then -- Storage Key
        evt.StatusText("门上了双重锁。")
        return
    end
    if not IsAtLeast(MapVar(11), 10) then
        SetValue(MapVar(11), 10)
        evt.SetDoorState(6, DoorAction.Close)
        return
    end
    RemoveItem(2185) -- Storage Key
    RemoveItem(2191) -- Storage Key
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    if not HasItem(2185) then -- Storage Key
        evt.StatusText("门上了双重锁。")
        return
    end
    if not HasItem(2191) then -- Storage Key
        evt.StatusText("门上了双重锁。")
        return
    end
    if not IsAtLeast(MapVar(11), 10) then
        SetValue(MapVar(11), 10)
        evt.SetDoorState(7, DoorAction.Close)
        return
    end
    RemoveItem(2185) -- Storage Key
    RemoveItem(2191) -- Storage Key
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    if not HasItem(2184) then -- Warlord's Key
        evt.StatusText("门是锁着的。")
        return
    end
    evt.SetDoorState(9, DoorAction.Close)
    RemoveItem(2184) -- Warlord's Key
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, nil, function()
    evt.SetDoorState(11, DoorAction.Close)
end)

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

RegisterEvent(17, nil, function()
    evt.SetDoorState(17, DoorAction.Close)
end)

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "开关", function()
    evt.SetTexture(-960, "d8s2on")
    evt.SetDoorState(19, DoorAction.Close)
    SetValue(MapVar(21), 1)
end, "开关")

RegisterEvent(20, "门", function()
    local randomStep = PickRandomOption(20, 1, {3, 5, 7, 9})
    if randomStep == 3 then
        evt.MoveToMap(-2539, -512, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 5 then
        evt.MoveToMap(-1537, -788, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 7 then
        evt.MoveToMap(-1012, -1284, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 9 then
        evt.MoveToMap(-1036, -1775, -255, 1536, 0, 0, 0, 0)
    end
    evt.StatusText("你被拉进了门里！")
end, "门")

RegisterEvent(21, "门", function()
    local randomStep = PickRandomOption(21, 1, {1, 5, 7, 9})
    if randomStep == 1 then
        evt.MoveToMap(-3586, -789, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 5 then
        evt.MoveToMap(-1537, -788, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 7 then
        evt.MoveToMap(-1012, -1284, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 9 then
        evt.MoveToMap(-1036, -1775, -255, 1536, 0, 0, 0, 0)
    end
    evt.StatusText("你被拉进了门里！")
end, "门")

RegisterEvent(22, "门", function()
    local randomStep = PickRandomOption(22, 1, {1, 3, 7, 9})
    if randomStep == 1 then
        evt.MoveToMap(-3586, -789, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 3 then
        evt.MoveToMap(-2539, -512, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 7 then
        evt.MoveToMap(-1012, -1284, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 9 then
        evt.MoveToMap(-1036, -1775, -255, 1536, 0, 0, 0, 0)
    end
    evt.StatusText("你被拉进了门里！")
end, "门")

RegisterEvent(23, "门", function()
    local randomStep = PickRandomOption(23, 1, {1, 3, 5, 9})
    if randomStep == 1 then
        evt.MoveToMap(-3586, -789, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 3 then
        evt.MoveToMap(-2539, -512, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 5 then
        evt.MoveToMap(-1537, -788, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 9 then
        evt.MoveToMap(-1036, -1775, -255, 1536, 0, 0, 0, 0)
    end
    evt.StatusText("你被拉进了门里！")
end, "门")

RegisterEvent(24, "门", function()
    local randomStep = PickRandomOption(24, 1, {1, 3, 5, 7})
    if randomStep == 1 then
        evt.MoveToMap(-3586, -789, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 3 then
        evt.MoveToMap(-2539, -512, -255, 1024, 0, 0, 0, 0)
    elseif randomStep == 5 then
        evt.MoveToMap(-1537, -788, -255, 512, 0, 0, 0, 0)
    elseif randomStep == 7 then
        evt.MoveToMap(-1012, -1284, -255, 1024, 0, 0, 0, 0)
    end
    evt.StatusText("你被拉进了门里！")
end, "门")

RegisterEvent(25, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(26, "柜子", function()
    evt.OpenChest(1)
end, "柜子")

RegisterEvent(27, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(28, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(29, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(30, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(31, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(32, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(33, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(34, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(35, "柜子", function()
    evt.OpenChest(10)
end, "柜子")

RegisterEvent(36, "箱子", function()
    if not IsQBitSet(QBit(1076)) then -- 52 D16, Given when characters find the Eagle Statuette
        evt.OpenChest(11)
        SetQBit(QBit(1076)) -- 52 D16, Given when characters find the Eagle Statuette
        SetQBit(QBit(1211)) -- Quest item bits for seer
        SetValue(MapVar(22), 1)
        return
    end
    if not IsAtLeast(MapVar(22), 1) then
        evt.OpenChest(0)
        return
    end
    evt.OpenChest(11)
    SetQBit(QBit(1076)) -- 52 D16, Given when characters find the Eagle Statuette
    SetQBit(QBit(1211)) -- Quest item bits for seer
    SetValue(MapVar(22), 1)
end, "箱子")

RegisterEvent(37, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(38, "柜子", function()
    evt.OpenChest(13)
end, "柜子")

RegisterEvent(39, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(40, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(41, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(42, "柜子", function()
    evt.OpenChest(17)
end, "柜子")

RegisterEvent(43, "柜子", function()
    evt.OpenChest(18)
end, "柜子")

RegisterEvent(44, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(45, "五斗柜", function()
    if IsAtLeast(MapVar(2), 1) then return end
    evt.StatusText("你找到了两把钥匙！")
    AddValue(InventoryItem(2184), 2184) -- Warlord's Key
    AddValue(InventoryItem(2185), 2185) -- Storage Key
    SetValue(MapVar(2), 1)
end, "五斗柜")

RegisterEvent(46, "五斗柜", function()
    if IsAtLeast(MapVar(3), 1) then return end
    evt.StatusText("你找到了一把钥匙！")
    AddValue(InventoryItem(2191), 2191) -- Storage Key
    SetValue(MapVar(3), 1)
end, "五斗柜")

RegisterEvent(47, "门", function()
    evt.StatusText("这扇门打不开。")
end, "门")

RegisterEvent(48, nil, function()
    if IsAtLeast(MapVar(21), 1) then
        evt.SetTexture(-960, "d8s2on")
    end
end)

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-18606, 9831, 160, 1536, 0, 0, 0, 0, "outd1.odm") -- Silver Cove
end, "出口")

RegisterEvent(51, nil, function()
    if IsAtLeast(MapVar(51), 1) then return end
    SetValue(MapVar(51), 1)
    evt.GiveItem(6, 25)
end)

