-- Corlagon's Estate
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [42] = {1},
    [43] = {2},
    [44] = {3},
    [45] = {4},
    [46] = {5},
    [47] = {6},
    [48] = {7},
    [49] = {8},
    [50] = {9, 8},
    [51] = {10},
    [75] = {0},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "opcode" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [14] = { kind = "use_switch", source = "title" },
    [16] = { kind = "use_switch", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "use_switch", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "open_door", source = "opcode" },
    [24] = { kind = "open_door", source = "opcode" },
    [25] = { kind = "open_door", source = "opcode" },
    [26] = { kind = "use_switch", source = "title" },
    [28] = { kind = "open_door", source = "title" },
    [29] = { kind = "open_door", source = "title" },
    [30] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_door", source = "title" },
    [32] = { kind = "open_door", source = "title" },
    [33] = { kind = "open_door", source = "title" },
    [34] = { kind = "open_door", source = "title" },
    [35] = { kind = "open_door", source = "title" },
    [42] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [43] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [44] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [45] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [46] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [47] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [48] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [49] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [50] = { kind = "open_chest", source = "opcode", chestIds = {8, 9} },
    [51] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [53] = { kind = "open_door", source = "title" },
    [60] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd3.odm", targetName = "铁拳城堡" },
    [65] = { kind = "teleport", source = "heuristic" },
    [66] = { kind = "teleport", source = "heuristic" },
    [69] = { kind = "teleport", source = "heuristic" },
    [70] = { kind = "teleport", source = "heuristic" },
    [71] = { kind = "teleport", source = "heuristic" },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
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

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, nil, function()
    evt.SetDoorState(7, DoorAction.Close)
end)

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
    SetValue(MapVar(3), 1)
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

RegisterEvent(14, "开关", function()
    evt.SetDoorState(14, DoorAction.Trigger)
    evt.SetDoorState(15, DoorAction.Trigger)
end, "开关")

RegisterEvent(16, "开关", function()
    evt.SetDoorState(16, DoorAction.Trigger)
    evt.SetDoorState(4, DoorAction.Trigger)
end, "开关")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
end, "门")

RegisterEvent(20, "开关", function()
    evt.SetDoorState(20, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
end, "开关")

RegisterEvent(21, "门", function()
    evt.SetDoorState(21, DoorAction.Close)
end, "门")

RegisterEvent(22, "门", function()
    evt.SetDoorState(22, DoorAction.Close)
end, "门")

RegisterEvent(23, "墙壁", function()
    evt.SetDoorState(23, DoorAction.Close)
end, "墙壁")

RegisterEvent(24, nil, function()
    evt.SetDoorState(24, DoorAction.Close)
end)

RegisterEvent(25, "墙壁", function()
    evt.SetDoorState(25, DoorAction.Close)
end, "墙壁")

RegisterEvent(26, "开关", function()
    evt.SetDoorState(26, DoorAction.Trigger)
    evt.SetDoorState(27, DoorAction.Trigger)
end, "开关")

RegisterEvent(28, "门", function()
    evt.SetDoorState(28, DoorAction.Close)
end, "门")

RegisterEvent(29, "门", function()
    evt.SetDoorState(29, DoorAction.Close)
end, "门")

RegisterEvent(30, "门", function()
    evt.SetDoorState(30, DoorAction.Close)
end, "门")

RegisterEvent(31, "门", function()
    evt.SetDoorState(31, DoorAction.Close)
end, "门")

RegisterEvent(32, "门", function()
    evt.SetDoorState(32, DoorAction.Close)
end, "门")

RegisterEvent(33, "门", function()
    evt.SetDoorState(33, DoorAction.Close)
end, "门")

RegisterEvent(34, "门", function()
    evt.SetDoorState(34, DoorAction.Close)
end, "门")

RegisterEvent(35, "门", function()
    evt.SetDoorState(35, DoorAction.Close)
end, "门")

RegisterEvent(42, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(43, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(44, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(45, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(46, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(47, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(48, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(49, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(50, "箱子", function()
    if not IsAtLeast(MapVar(2), 1) then
        if not IsQBitSet(QBit(1026)) then -- 2 D11, given for glass shard for staff of terrax quest
            evt.OpenChest(9)
            SetValue(MapVar(2), 1)
            SetQBit(QBit(1026)) -- 2 D11, given for glass shard for staff of terrax quest
            SetQBit(QBit(1210)) -- Quest item bits for seer
            return
        end
        evt.OpenChest(8)
        return
    end
    evt.OpenChest(9)
    SetValue(MapVar(2), 1)
    SetQBit(QBit(1026)) -- 2 D11, given for glass shard for staff of terrax quest
    SetQBit(QBit(1210)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(51, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(52, "门", nil, "门")

RegisterEvent(53, "门", function()
    evt.StatusText("这扇门纹丝不动。")
end, "门")

RegisterEvent(60, "出口", function()
    evt.MoveToMap(-19677, -17439, 96, 0, 0, 0, 0, 0, "outd3.odm") -- Castle Ironfist
end, "出口")

RegisterEvent(65, nil, function()
    evt.MoveToMap(-5768, 656, -1296, 1536, 0, 0, 0, 0)
end)

RegisterEvent(66, nil, function()
    evt.MoveToMap(-6416, 7560, -1296, 512, 0, 0, 0, 0)
end)

RegisterEvent(69, nil, function()
    evt.MoveToMap(6538, 114, -255, 1536, 0, 0, 0, 0)
end)

RegisterEvent(70, nil, function()
    evt.MoveToMap(6537, 5945, -255, 512, 0, 0, 0, 0)
end)

RegisterEvent(71, nil, function()
    if IsAtLeast(MapVar(3), 1) then
        evt.MoveToMap(3584, -5248, -832, 512, 0, 0, 0, 0)
        SubtractValue(MapVar(3), 1)
        evt.SummonMonsters(1, 1, 1, 1408, -4992, -832, 0, 0) -- encounter slot 1 "BGhost" tier A, count 1, pos=(1408, -4992, -832), actor group 0, no unique actor name
        evt.SummonMonsters(1, 2, 1, 1408, -4864, -832, 0, 0) -- encounter slot 1 "BGhost" tier B, count 1, pos=(1408, -4864, -832), actor group 0, no unique actor name
        evt.SummonMonsters(1, 3, 1, 1408, -4736, -832, 0, 0) -- encounter slot 1 "BGhost" tier C, count 1, pos=(1408, -4736, -832), actor group 0, no unique actor name
    end
end)

RegisterEvent(75, nil, function()
    evt.OpenChest(0)
end)

