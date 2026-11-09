-- Castle Alamos
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {70},
    onLoad = {60},
    onLeave = {},
    openedChestIds = {
    [30] = {0},
    [41] = {1},
    [42] = {2},
    [43] = {3},
    [44] = {4},
    [45] = {5},
    [51] = {6},
    [52] = {7},
    [53] = {8},
    [54] = {9},
    [55] = {10},
    [56] = {11},
    [57] = {12},
    [58] = {13},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "teleport", source = "heuristic" },
    [14] = { kind = "teleport", source = "heuristic" },
    [18] = { kind = "secret_event", source = "heuristic", hidden = true },
    [30] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [31] = { kind = "use_switch", source = "title" },
    [33] = { kind = "open_door", source = "title" },
    [35] = { kind = "open_door", source = "opcode" },
    [41] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [42] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [43] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [44] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [45] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [47] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd1.odm", targetName = "银湾镇" },
    [51] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [52] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [53] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [54] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [55] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [56] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [57] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [58] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [61] = { kind = "leave_dungeon", source = "opcode", targetMap = "oute1.odm", targetName = "鳗鱼水域" },
    [62] = { kind = "open_door", source = "title" },
    [63] = { kind = "open_door", source = "title" },
    [64] = { kind = "generic_event", source = "opcode" },
    [65] = { kind = "generic_event", source = "opcode" },
    [66] = { kind = "generic_event", source = "opcode" },
    [67] = { kind = "generic_event", source = "opcode" },
    [68] = { kind = "generic_event", source = "opcode" },
    [69] = { kind = "teleport", source = "heuristic" },
    },
    textureNames = {},
    spriteNames = {"crysdisc"},
    castSpellIds = {6},
    timers = {
    { eventId = 70, sourceEventId = 70, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 20 },
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
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
    if not HasItem(2189) then -- Teleporter Key
        evt.StatusText("门是锁着的。")
        return
    end
    RemoveItem(2189) -- Teleporter Key
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    if not HasItem(2188) then -- Treasure Room Key
        evt.StatusText("门是锁着的。")
        return
    end
    RemoveItem(2188) -- Treasure Room Key
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, nil, function()
    evt.MoveToMap(-2112, 14240, 40, 0, 0, 0, 0, 0)
end)

RegisterEvent(14, nil, function()
    evt.MoveToMap(4480, 8064, -340, 512, 0, 0, 0, 0)
end)

RegisterEvent(18, nil, function()
    if IsAtLeast(MapVar(2), 5) then return end
    evt.SummonMonsters(3, 3, 5, -2194, 4048, 225, 0, 0) -- encounter slot 3 "ElemAir" tier C, count 5, pos=(-2194, 4048, 225), actor group 0, no unique actor name
    AddValue(MapVar(2), 1)
end)

RegisterEvent(30, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(31, "开关", function()
    evt.SetDoorState(31, DoorAction.Close)
    evt.SetDoorState(32, DoorAction.Close)
end, "开关")

RegisterEvent(33, "门", function()
    evt.StatusText("门纹丝不动。")
end, "门")

RegisterEvent(35, nil, function()
    evt.SetDoorState(35, DoorAction.Trigger)
end)

RegisterEvent(41, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(42, "箱子", function()
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

RegisterEvent(47, "传送点", function()
    if IsQBitSet(QBit(1078)) then -- Chris
        evt.MoveToMap(7829, -7173, 224, 568, 0, 0, 0, 0, "outd1.odm") -- Silver Cove
    end
end, "传送点")

RegisterEvent(51, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(52, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(53, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(54, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(55, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(56, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(57, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(58, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(59, "出口", function()
    if IsQBitSet(QBit(1078)) then return end -- Chris
    SetQBit(QBit(1078)) -- Chris
    evt.SetSprite(394, 1, "crysdisc")
    AddValue(InventoryItem(2171), 2171) -- Memory Crystal Beta
    SetQBit(QBit(1216)) -- Quest item bits for seer
end, "出口")

RegisterEvent(60, nil, function()
    if IsQBitSet(QBit(1078)) then -- Chris
        evt.SetSprite(394, 1, "crysdisc")
    end
end)

RegisterEvent(61, "出口", function()
    evt.MoveToMap(13830, 7687, 673, 512, 0, 0, 0, 0, "oute1.odm") -- Eel Infested Waters
end, "出口")

RegisterEvent(62, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(63, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(64, "树", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(3), 1)
    evt.SetMessage("树上刻着一行字：                                                                                                                        第一个是第四个的一半加一，最好快些，否则你将完蛋！")
    evt._PressAnyKey(64, 3)
end, "树")

RegisterEvent(65, "树", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(4), 1)
    evt.SetMessage("树上刻着一行字：                                                                                                                        第二个紧挨着第三个，噢，美得像只鸟！")
    evt._PressAnyKey(65, 3)
end, "树")

RegisterEvent(66, "树", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(5), 1)
    evt.SetMessage("树上刻着一行字：                                                                                                                        第三个是二十六个字母中的第一个，从A到Z你得仔细组合！")
    evt._PressAnyKey(66, 3)
end, "树")

RegisterEvent(67, "树", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(6), 1)
    evt.SetMessage("树上刻着一行字：                                                                                                                        第五个是第二个的两倍，总共五个字母，我猜！")
    evt._PressAnyKey(67, 3)
end, "树")

RegisterEvent(68, "树", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(7), 1)
    evt.SetMessage("树上刻着一行字：                                                                                                                        第四个是倒数第八个，阿奇博尔德真是你的朋友！")
    evt._PressAnyKey(68, 3)
end, "树")

RegisterEvent(69, nil, function(continueStep)
    if continueStep == 4 then
        evt.StatusText("错误！")
        evt.MoveToMap(-3136, 2240, 224, 1024, 0, 0, 0, 0)
        return
    end
    if continueStep == 23 then
        evt.StatusText("\"谁告诉你的！好吧，你可以过去了！\"")
        SetValue(MapVar(8), 1)
    end
    if continueStep == 17 then
        evt.StatusText("错误！")
        evt.MoveToMap(-3136, 2240, 224, 1024, 0, 0, 0, 0)
        return
    end
    if continueStep == 20 then
        evt.StatusText("好！")
        SetValue(MapVar(8), 1)
        return
    end
    if continueStep ~= nil then return end
    if IsAtLeast(MapVar(8), 1) then
        return
    elseif IsAtLeast(MapVar(3), 1) then
        if IsAtLeast(MapVar(4), 1) then
            if IsAtLeast(MapVar(5), 1) then
                if IsAtLeast(MapVar(6), 1) then
                    if IsAtLeast(MapVar(7), 1) then
                        evt.SetMessage("禁区——禁止入内。")
                        evt.AskQuestion(69, 17, 14, 20, 15, 16, "密码是什么？", {"JBARD", "jbard"})
                        return nil
                    end
                end
            end
        end
        evt.SetMessage("禁区——禁止入内。")
        evt.AskQuestion(69, 4, 14, 23, 15, 16, "密码是什么？", {"JBARD", "jbard"})
        return nil
    else
        evt.SetMessage("禁区——禁止入内。")
        evt.AskQuestion(69, 4, 14, 23, 15, 16, "密码是什么？", {"JBARD", "jbard"})
        return nil
    end
end)

RegisterEvent(70, nil, function()
    evt.CastSpell(6, 10, 1, 2995, 9373, -840, 2000, 9373, -840) -- Fireball
end)

