-- Dragoons' Caverns
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [37] = {1},
    [38] = {0, 9},
    [39] = {3},
    [40] = {4},
    [41] = {5},
    [42] = {6},
    [43] = {7, 2},
    [44] = {8},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "use_switch", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "use_lever", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "use_switch", source = "title" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "use_switch", source = "title" },
    [25] = { kind = "use_lever", source = "title" },
    [27] = { kind = "open_door", source = "title" },
    [28] = { kind = "open_door", source = "title" },
    [29] = { kind = "open_door", source = "title" },
    [30] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_door", source = "title" },
    [32] = { kind = "open_door", source = "title" },
    [33] = { kind = "open_door", source = "title" },
    [34] = { kind = "open_door", source = "title" },
    [36] = { kind = "open_door", source = "opcode" },
    [37] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [38] = { kind = "open_chest", source = "opcode", chestIds = {0, 9} },
    [39] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [40] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [41] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [42] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [43] = { kind = "open_chest", source = "opcode", chestIds = {2, 7} },
    [44] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [45] = { kind = "teleport", source = "heuristic" },
    [46] = { kind = "open_door", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd3.odm", targetName = "铁拳城堡" },
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

RegisterEvent(8, "开关", function()
    evt.SetDoorState(8, DoorAction.Trigger)
    evt.SetDoorState(9, DoorAction.Trigger)
end, "开关")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "拉杆", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.SetDoorState(12, DoorAction.Trigger)
        evt.SetDoorState(13, DoorAction.Trigger)
        evt.SetFacetBit(-2667, FacetBits.Untouchable, 1)
        SetValue(MapVar(2), 1)
        return
    end
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetFacetBit(-2667, FacetBits.Untouchable, 0)
    SetValue(MapVar(2), 0)
end, "拉杆")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "开关", function()
    evt.SetDoorState(15, DoorAction.Trigger)
    evt.SetDoorState(19, DoorAction.Trigger)
end, "开关")

RegisterEvent(16, "门", function()
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
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

RegisterEvent(23, "开关", function()
    evt.SetDoorState(23, DoorAction.Trigger)
    evt.SetDoorState(24, DoorAction.Trigger)
end, "开关")

RegisterEvent(25, "拉杆", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.SetDoorState(25, DoorAction.Trigger)
        evt.SetDoorState(26, DoorAction.Trigger)
        evt.SetFacetBit(-2668, FacetBits.Untouchable, 1)
        SetValue(MapVar(2), 1)
        return
    end
    evt.SetDoorState(25, DoorAction.Trigger)
    evt.SetDoorState(26, DoorAction.Trigger)
    evt.SetFacetBit(-2668, FacetBits.Untouchable, 0)
    SetValue(MapVar(2), 0)
end, "拉杆")

RegisterEvent(27, "门", function()
    evt.SetDoorState(27, DoorAction.Close)
end, "门")

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

RegisterEvent(34, "双开门", function()
    evt.SetDoorState(34, DoorAction.Close)
    evt.SetDoorState(35, DoorAction.Close)
end, "双开门")

RegisterEvent(36, nil, function()
    evt.SetDoorState(36, DoorAction.Close)
end)

RegisterEvent(37, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(38, "箱子", function()
    if not IsAtLeast(MapVar(4), 1) then
        if not IsQBitSet(QBit(1038)) then -- 14 D6, given when Message 504 given out.
            evt.OpenChest(0)
            SetQBit(QBit(1038)) -- 14 D6, given when Message 504 given out.
            SetValue(MapVar(4), 1)
            return
        end
        evt.OpenChest(9)
        return
    end
    evt.OpenChest(0)
    SetQBit(QBit(1038)) -- 14 D6, given when Message 504 given out.
    SetValue(MapVar(4), 1)
end, "箱子")

RegisterEvent(39, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(40, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(41, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(42, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(43, "箱子", function()
    if not IsAtLeast(MapVar(3), 1) then
        if IsAtLeast(MapVar(3), 1) then
            evt.OpenChest(7)
            SetQBit(QBit(1027)) -- 3 D06, given when harp is recovered
            SetValue(MapVar(3), 1)
            return
        elseif IsQBitSet(QBit(1027)) then -- 3 D06, given when harp is recovered
            evt.OpenChest(2)
        else
            evt.OpenChest(7)
            SetQBit(QBit(1027)) -- 3 D06, given when harp is recovered
            SetValue(MapVar(3), 1)
            return
        end
        return
    end
    evt.OpenChest(7)
    SetQBit(QBit(1027)) -- 3 D06, given when harp is recovered
    SetValue(MapVar(3), 1)
end, "箱子")

RegisterEvent(44, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(45, "箱子", function()
    local randomStep = PickRandomOption(45, 1, {1, 3, 5, 7, 9, 11})
    if randomStep == 1 then
        evt.MoveToMap(2752, -256, 0, 1024, 0, 0, 0, 0)
        return
    elseif randomStep == 3 then
        evt.MoveToMap(3222, -2076, -31, 1012, 0, 0, 0, 0)
        return
    elseif randomStep == 5 then
        evt.MoveToMap(1152, -5193, -511, 0, 0, 0, 0, 0)
        return
    elseif randomStep == 7 then
        evt.MoveToMap(-59, 1997, -896, 512, 0, 0, 0, 0)
        return
    elseif randomStep == 9 then
        evt.MoveToMap(-831, 3109, -128, 0, 0, 0, 0, 0)
        return
    elseif randomStep == 11 then
        local randomStep = PickRandomOption(45, 12, {13, 15, 17, 19})
        if randomStep == 13 then
            evt.MoveToMap(-7023, -1413, -383, 512, 0, 0, 0, 0)
            return
        elseif randomStep == 15 then
            evt.MoveToMap(1847, 8410, -767, 1536, 0, 0, 0, 0)
            return
        elseif randomStep == 17 then
            evt.MoveToMap(-843, 6440, -767, 1024, 0, 0, 0, 0)
            return
        elseif randomStep == 19 then
            evt.MoveToMap(-3622, 5464, -639, 1024, 0, 0, 0, 0)
            return
        end
    end
end, "箱子")

RegisterEvent(46, "门", function()
    evt.StatusText("门纹丝不动")
end, "门")

RegisterEvent(50, "出口", function()
    evt.MoveToMap(16495, -14570, 96, 1536, 0, 0, 0, 0, "outd3.odm") -- Castle Ironfist
end, "出口")

RegisterEvent(51, nil, function()
    if IsQBitSet(QBit(1330)) then return end -- NPC
    SetQBit(QBit(1330)) -- NPC
    AddValue(BaseLuck, 10)
end)

