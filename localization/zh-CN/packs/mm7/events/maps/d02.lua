-- The Maze
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {},
    openedChestIds = {
    [176] = {1, 0},
    [177] = {2},
    [178] = {3},
    [179] = {4},
    [180] = {5},
    [181] = {6},
    [182] = {7},
    [183] = {8},
    [184] = {9},
    [185] = {10},
    [186] = {11},
    [187] = {12},
    [188] = {13},
    [189] = {14},
    [190] = {15},
    [191] = {16},
    [192] = {17},
    [193] = {18},
    [194] = {19},
    [195] = {0},
    },
    contextActions = {
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
    [176] = { kind = "open_chest", source = "opcode", chestIds = {0, 1} },
    [177] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [178] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [179] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [180] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [181] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [182] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [183] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [184] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [185] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [186] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [187] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [188] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [189] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [190] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [191] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [192] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [193] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [194] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [195] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [451] = { kind = "generic_event", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out10.odm", targetName = "尼弘山" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 451, triggerStep = 4, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 1, startMinute = 0, startSecond = 0 },
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Warlock A
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Trigger)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Open)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Open)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Open)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Open)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Trigger)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
    evt.SetDoorState(13, DoorAction.Close)
    evt.SetDoorState(14, DoorAction.Close)
    evt.SetDoorState(15, DoorAction.Close)
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(1, DoorAction.Trigger)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(2, DoorAction.Trigger)
end, "门")

RegisterEvent(176, "箱子", function()
    if not IsAtLeast(MapVar(2), 1) then
        if IsQBitSet(QBit(673)) then return end -- Got magic dust out of chest
    end
    evt.OpenChest(1)
    SetQBit(QBit(673)) -- Got magic dust out of chest
    SetValue(MapVar(2), 1)
end, "箱子")

RegisterEvent(177, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(178, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(179, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(180, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(181, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(182, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(183, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(184, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(185, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(186, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(187, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(188, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(189, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(190, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(191, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(192, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(193, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(194, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(195, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(451, "喝一口", function()
    if not IsAtLeast(MapVar(16), 1) then
        AddValue(BodyResistanceBonus, 25)
        SetValue(MapVar(16), 1)
        evt.StatusText("精神焕发")
        return
    end
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(501, "离开迷宫", function()
    evt.MoveToMap(-11822, 21398, 3201, 1664, 0, 0, 0, 0, "out10.odm") -- Mount Nighon
end, "离开迷宫")

RegisterEvent(65535, "", function()
    SetValue(MapVar(16), 0)
end)

