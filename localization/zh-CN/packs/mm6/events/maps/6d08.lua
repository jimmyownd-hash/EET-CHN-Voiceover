-- Shadow Guild
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {25, 32, 34, 35, 36, 39, 40, 41, 42, 43, 44, 45, 46},
    onLoad = {2},
    onLeave = {},
    openedChestIds = {
    [31] = {1},
    [54] = {2},
    [55] = {3},
    [56] = {4},
    [57] = {5},
    [58] = {6},
    [74] = {7},
    [75] = {8},
    [76] = {9},
    [77] = {10},
    [78] = {11},
    [79] = {12},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [3] = { kind = "use_switch", source = "title" },
    [5] = { kind = "open_door", source = "opcode" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "opcode" },
    [14] = { kind = "generic_event", source = "opcode" },
    [15] = { kind = "generic_event", source = "opcode" },
    [16] = { kind = "generic_event", source = "opcode" },
    [17] = { kind = "generic_event", source = "opcode" },
    [18] = { kind = "generic_event", source = "opcode" },
    [19] = { kind = "generic_event", source = "opcode" },
    [20] = { kind = "generic_event", source = "opcode" },
    [21] = { kind = "generic_event", source = "opcode" },
    [22] = { kind = "generic_event", source = "opcode" },
    [23] = { kind = "generic_event", source = "opcode" },
    [24] = { kind = "teleport", source = "heuristic" },
    [25] = { kind = "generic_event", source = "opcode" },
    [26] = { kind = "teleport", source = "heuristic" },
    [31] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [34] = { kind = "generic_event", source = "opcode" },
    [35] = { kind = "generic_event", source = "opcode" },
    [36] = { kind = "generic_event", source = "opcode" },
    [39] = { kind = "generic_event", source = "opcode" },
    [40] = { kind = "generic_event", source = "opcode" },
    [41] = { kind = "generic_event", source = "opcode" },
    [42] = { kind = "generic_event", source = "opcode" },
    [53] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc1.odm", targetName = "冰冻高原" },
    [54] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [55] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [56] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [57] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [58] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [61] = { kind = "open_door", source = "title" },
    [62] = { kind = "open_door", source = "title" },
    [63] = { kind = "open_door", source = "title" },
    [64] = { kind = "open_door", source = "title" },
    [65] = { kind = "passage", source = "opcode", targetMap = "6d03.blv", targetName = "阴影教隐蔽所" },
    [66] = { kind = "teleport", source = "heuristic" },
    [67] = { kind = "passage", source = "opcode", targetMap = "6d06.blv", targetName = "龙骑兵岩洞" },
    [68] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [70] = { kind = "generic_event", source = "opcode" },
    [71] = { kind = "generic_event", source = "opcode" },
    [72] = { kind = "generic_event", source = "opcode" },
    [73] = { kind = "generic_event", source = "opcode" },
    [74] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [76] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [77] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [78] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [79] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [80] = { kind = "generic_event", source = "opcode" },
    },
    textureNames = {"mystryb", "t3s1off", "t3s1on"},
    spriteNames = {},
    castSpellIds = {2, 15, 26, 34, 41},
    timers = {
    { eventId = 43, sourceEventId = 43, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 9 },
    { eventId = 44, sourceEventId = 44, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 8 },
    { eventId = 45, sourceEventId = 45, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 7 },
    { eventId = 46, sourceEventId = 46, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 6 },
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(2, nil, function()
    SetValue(MapVar(2), 0)
    SetValue(MapVar(3), 0)
    SetValue(MapVar(4), 0)
    SetValue(MapVar(5), 0)
    SetValue(MapVar(6), 0)
    SetValue(MapVar(7), 0)
    SetValue(MapVar(8), 0)
    SetValue(MapVar(9), 0)
    SetValue(MapVar(10), 0)
    SetValue(MapVar(11), 0)
    SetValue(MapVar(12), 0)
    SetValue(MapVar(13), 0)
    SetValue(MapVar(14), 0)
    SetValue(MapVar(15), 0)
    SetValue(MapVar(16), 0)
    SetValue(MapVar(17), 0)
    SetValue(MapVar(18), 0)
    evt.SetDoorState(3, DoorAction.Close)
    evt.SetDoorState(4, DoorAction.Open)
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(2, DoorAction.Open)
    evt.SetDoorState(11, DoorAction.Open)
    evt.SetDoorState(9, DoorAction.Open)
    evt.SetDoorState(5, DoorAction.Open)
    evt.SetDoorState(61, DoorAction.Open)
    evt.SetDoorState(62, DoorAction.Open)
    evt.SetDoorState(63, DoorAction.Open)
    evt.SetDoorState(64, DoorAction.Open)
    if IsAtLeast(MapVar(2), 1) then
        evt.SetTexture(-832, "t3s1on")
    end
    if IsAtLeast(MapVar(17), 1) then
        evt.SetTexture(-1078, "mystryb")
    end
end)

RegisterEvent(3, "开关", function()
    evt.SetDoorState(3, DoorAction.Open)
    evt.SetDoorState(4, DoorAction.Close)
end, "开关")

RegisterEvent(5, nil, function()
    evt.SetDoorState(5, DoorAction.Close)
end)

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "门", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 15)
        evt.SetDoorState(8, DoorAction.Close)
        return
    end
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

RegisterEvent(12, nil, function()
    evt.SetDoorState(12, DoorAction.Close)
end)

RegisterEvent(13, "可疑的地板", function()
    if not IsAtLeast(MapVar(2), 1) then
        SetValue(MapVar(2), 1)
        evt.SetTexture(-832, "t3s1on")
        return
    end
    SetValue(MapVar(2), 0)
    evt.SetTexture(-832, "t3s1off")
end, "Suspicious Floor")

RegisterEvent(14, "可疑的地板", function()
    if IsAtLeast(MapVar(5), 1) then return end
    SetValue(MapVar(3), 1)
    if IsAtLeast(MapVar(4), 1) then
        SetValue(MapVar(5), 1)
        evt.StatusText("咔哒！")
    end
end, "可疑的地板")

RegisterEvent(15, "可疑的地板", function()
    if IsAtLeast(MapVar(5), 1) then return end
    SetValue(MapVar(4), 1)
    if IsAtLeast(MapVar(3), 1) then
        SetValue(MapVar(5), 1)
        evt.StatusText("咔哒！")
    end
end, "可疑的地板")

RegisterEvent(16, "可疑的地板", function()
    if IsAtLeast(MapVar(8), 1) then return end
    SetValue(MapVar(6), 1)
    if IsAtLeast(MapVar(7), 1) then
        SetValue(MapVar(8), 1)
        evt.StatusText("咔—咔哒！")
    end
end, "可疑的地板")

RegisterEvent(17, "可疑的地板", function()
    if IsAtLeast(MapVar(8), 1) then return end
    SetValue(MapVar(7), 1)
    if IsAtLeast(MapVar(6), 1) then
        SetValue(MapVar(8), 1)
        evt.StatusText("咔—咔哒！")
    end
end, "可疑的地板")

RegisterEvent(18, "可疑的地板", function()
    if IsAtLeast(MapVar(11), 1) then return end
    SetValue(MapVar(9), 1)
    if IsAtLeast(MapVar(10), 1) then
        SetValue(MapVar(11), 1)
        evt.StatusText("啪嗒！")
    end
end, "可疑的地板")

RegisterEvent(19, "可疑的地板", function()
    if IsAtLeast(MapVar(11), 1) then return end
    SetValue(MapVar(10), 1)
    if IsAtLeast(MapVar(9), 1) then
        SetValue(MapVar(11), 1)
        evt.StatusText("啪嗒！")
    end
end, "可疑的地板")

RegisterEvent(20, "可疑的地板", function()
    if IsAtLeast(MapVar(14), 1) then return end
    SetValue(MapVar(12), 1)
    if IsAtLeast(MapVar(13), 1) then
        SetValue(MapVar(14), 1)
        evt.StatusText("咔哒！")
    end
end, "可疑的地板")

RegisterEvent(21, "可疑的地板", function()
    if IsAtLeast(MapVar(14), 1) then return end
    SetValue(MapVar(13), 1)
    if IsAtLeast(MapVar(12), 1) then
        SetValue(MapVar(14), 1)
        evt.StatusText("咔哒！")
    end
end, "可疑的地板")

RegisterEvent(22, "可疑的地板", function()
    if IsAtLeast(MapVar(17), 1) then return end
    evt.CastSpell(2, 2, 1, -400, 3072, 190, -1664, 4416, 120) -- Fire Bolt
    evt.CastSpell(15, 2, 1, -8, 3456, 120, -1664, 4416, 120) -- Sparks
    SetValue(MapVar(15), 1)
    if IsAtLeast(MapVar(16), 1) then
        SetValue(MapVar(17), 1)
        evt.StatusText("咔—咔哒！")
    end
end, "可疑的地板")

RegisterEvent(23, "可疑的地板", function()
    if IsAtLeast(MapVar(17), 1) then return end
    evt.CastSpell(2, 2, 1, -1776, 3072, 120, -384, 4416, 120) -- Fire Bolt
    evt.CastSpell(15, 2, 1, -2040, 3456, 120, -384, 4416, 120) -- Sparks
    SetValue(MapVar(16), 1)
    if IsAtLeast(MapVar(15), 1) then
        SetValue(MapVar(17), 1)
        evt.StatusText("咔—咔哒！")
    end
end, "可疑的地板")

RegisterEvent(24, "可疑的地板", function()
    if not IsAtLeast(MapVar(5), 1) then return end
    if not IsAtLeast(MapVar(8), 1) then return end
    if not IsAtLeast(MapVar(11), 1) then return end
    if not IsAtLeast(MapVar(14), 1) then return end
    if not IsAtLeast(MapVar(17), 1) then return end
    evt.StatusText("啪嗒！")
    evt.FaceExpression(5)
    SetValue(WaterResistanceBonus, 15)
    if IsAtLeast(MapVar(18), 1) then return end
    evt.StatusText("魔法门开启")
    SetValue(MapVar(18), 1)
    evt.SetTexture(-1078, "mystryb")
    evt.SummonMonsters(3, 1, 1, 2688, 3968, 1, 0, 0) -- encounter slot 3 "BGenie" tier A, count 1, pos=(2688, 3968, 1), actor group 0, no unique actor name
    evt.MoveToMap(2179, 4314, 1, 1, 0, 0, 0, 0)
end, "可疑的地板")

RegisterEvent(25, "可疑的地板", function()
    evt.StatusText("陷阱！")
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -1024, 2816, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -1024, 4864, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, 0, 3480, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -2048, 3480, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -256, 4608, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -256, 3072, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -1792, 3072, 120) -- Sparks
    evt.CastSpell(15, 3, 1, -1024, 3840, 120, -1792, 4608, 120) -- Sparks
    SetValue(MapVar(5), 0)
    SetValue(MapVar(8), 0)
    SetValue(MapVar(11), 0)
    SetValue(MapVar(14), 0)
    SetValue(MapVar(17), 0)
end, "可疑的地板")

RegisterEvent(26, nil, function()
    if IsAtLeast(MapVar(18), 1) then
        evt.MoveToMap(8832, -4992, 87, 1, 0, 0, 0, 0)
    end
end)

RegisterEvent(31, "袋子", function()
    evt.OpenChest(1)
end, "袋子")

RegisterEvent(32, "毒刺", function()
    evt.DamagePlayer(6, const.Damage.Physical, 16)
    evt.DamagePlayer(6, const.Damage.Physical, 11)
end, "毒刺")

RegisterEvent(34, "可疑的地板", function()
    evt.CastSpell(34, 2, 1, -1632, 2544, 120, -1632, 768, 120) -- Stun
    evt.StatusText("陷阱！")
end, "可疑的地板")

RegisterEvent(35, "可疑的地板", function()
    evt.CastSpell(34, 3, 1, 768, -1528, 120, 768, -1280, 120) -- Stun
    evt.StatusText("陷阱！")
end, "可疑的地板")

RegisterEvent(36, "不稳定的岩石", function()
    evt.CastSpell(41, 8, 1, 1728, 1152, 240, 2176, 1152, 32) -- Rock Blast
    evt.StatusText("陷阱！")
end, "不稳的岩石")

RegisterEvent(39, "可疑的地板", function()
    evt.CastSpell(15, 13, 1, 2432, 3576, 120, 2432, 2824, 120) -- Sparks
    evt.StatusText("陷阱！")
end, "可疑的地板")

RegisterEvent(40, "可疑的地板", function()
    evt.CastSpell(15, 10, 2, 2056, 3200, 120, 2800, 3200, 120) -- Sparks
    evt.StatusText("陷阱！")
end, "可疑的地板")

RegisterEvent(41, "可疑的地板", function()
    evt.CastSpell(15, 13, 1, 2432, 2824, 120, 2432, 3576, 120) -- Sparks
    evt.StatusText("陷阱！")
end, "可疑的地板")

RegisterEvent(42, "可疑的地板", function()
    evt.CastSpell(15, 10, 2, 2800, 3200, 120, 2056, 3200, 120) -- Sparks
    evt.StatusText("陷阱！")
end, "可疑的地板")

RegisterEvent(43, nil, function()
    if IsAtLeast(MapVar(5), 1) then return end
    evt.CastSpell(2, 2, 1, -1776, 3072, 190, -400, 3072, 120) -- Fire Bolt
    evt.CastSpell(2, 2, 1, -400, 3072, 190, -1648, 3072, 120) -- Fire Bolt
end)

RegisterEvent(44, nil, function()
    if IsAtLeast(MapVar(8), 1) then return end
    evt.CastSpell(15, 2, 1, -2040, 3456, 120, -8, 3456, 120) -- Sparks
    evt.CastSpell(15, 2, 1, -8, 3456, 120, -2040, 3456, 120) -- Sparks
end)

RegisterEvent(45, nil, function()
    if IsAtLeast(MapVar(11), 1) then return end
    evt.CastSpell(26, 2, 1, -2040, 3840, 120, -8, 3840, 120) -- Ice Bolt
    evt.CastSpell(26, 2, 1, -8, 3840, 120, -2040, 3840, 120) -- Ice Bolt
end)

RegisterEvent(46, nil, function()
    if IsAtLeast(MapVar(14), 1) then return end
    evt.CastSpell(34, 2, 1, -2040, 4096, 120, -8, 4096, 120) -- Stun
    evt.CastSpell(34, 2, 1, -8, 4096, 120, -2040, 4096, 120) -- Stun
end)

RegisterEvent(53, "出口", function()
    evt.MoveToMap(15218, -14862, 161, 0, 0, 0, 0, 0, "outc1.odm") -- Frozen Highlands
end, "出口")

RegisterEvent(54, "袋子", function()
    evt.OpenChest(2)
end, "袋子")

RegisterEvent(55, "袋子", function()
    evt.OpenChest(3)
end, "袋子")

RegisterEvent(56, "袋子", function()
    evt.OpenChest(4)
end, "袋子")

RegisterEvent(57, "袋子", function()
    evt.OpenChest(5)
end, "袋子")

RegisterEvent(58, "袋子", function()
    evt.OpenChest(6)
end, "袋子")

RegisterEvent(61, "魔法门", function(continueStep)
    if continueStep == 2 then
        evt.StatusText("错误")
        return
    end
    if continueStep == 4 then
        evt.SetDoorState(61, DoorAction.Close)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("你看不见我，听不到我，也摸不着我。我藏在星辰背后，改变真实，我是你最深的恐惧，闭上双眼我便靠近。我是什么？")
    evt.AskQuestion(61, 2, 21, 4, 19, 20, "答案？（请用英文作答）", {"dark", "darkness", "黑暗", "暗", "黑"})
    return nil
end, "魔法门")

RegisterEvent(62, "魔法门", function(continueStep)
    if continueStep == 2 then
        evt.StatusText("错误")
        return
    end
    if continueStep == 4 then
        evt.SetDoorState(62, DoorAction.Close)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("我能穿过苹果，也能为你指明方向；我装在弓上，停在靶上。我是什么？")
    evt.AskQuestion(62, 2, 21, 4, 24, 25, "答案？（请用英文作答）", {"arrow", "an arrow", "箭", "一支箭", "箭矢"})
    return nil
end, "魔法门")

RegisterEvent(63, "魔法门", function(continueStep)
    if continueStep == 2 then
        evt.StatusText("错误")
        return
    end
    if continueStep == 4 then
        evt.SetDoorState(63, DoorAction.Close)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("什么能吞噬岩石、夷平高山、摧毁树木、驱云过天，还能让少年变老？")
    evt.AskQuestion(63, 2, 21, 4, 27, 27, "答案？（请用英文作答）", {"time", "time", "时间", "光阴", "时光"})
    return nil
end, "魔法门")

RegisterEvent(64, "魔法门", function(continueStep)
    if continueStep == 2 then
        evt.StatusText("错误")
        return
    end
    if continueStep == 4 then
        evt.SetDoorState(64, DoorAction.Close)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("无呼吸而生，冷如死亡；从不口渴却不停喝水，身披铠甲从不作响，永远旅行从不行走，嘴巴不停张合从不说话。我是什么？")
    evt.AskQuestion(64, 2, 21, 4, 29, 30, "答案？（请用英文作答）", {"fish", "a fish", "鱼", "一条鱼"})
    return nil
end, "魔法门")

RegisterEvent(65, nil, function()
    evt.MoveToMap(0, 0, 0, 0, 0, 0, 0, 0, "6d03.blv") -- Shadow Guild Hideout
    SubtractValue(Food, 5)
end)

RegisterEvent(66, nil, function()
    evt.MoveToMap(1408, -1664, 1, 0, 0, 0, 0, 0)
end)

RegisterEvent(67, nil, function()
    evt.MoveToMap(0, 0, 0, 0, 0, 0, 0, 0, "6d06.blv") -- Dragoons' Caverns
    SubtractValue(Food, 5)
end)

RegisterEvent(68, nil, function()
    evt.MoveToMap(11407, 18074, 1, 0, 0, 0, 0, 0, "outc2.odm") -- Free Haven
    SubtractValue(Food, 5)
end)

RegisterEvent(69, "魔法墙", nil, "魔法墙")

RegisterEvent(70, "麻袋", function()
    if not IsAtLeast(MapVar(52), 1) then
        SetValue(MapVar(52), 1)
        AddValue(Food, 4)
        return
    end
    evt.StatusText("空的")
end, "麻袋")

RegisterEvent(71, "麻袋", function()
    if not IsAtLeast(MapVar(53), 1) then
        SetValue(MapVar(53), 1)
        AddValue(Food, 4)
        return
    end
    evt.StatusText("空的")
end, "麻袋")

RegisterEvent(72, "麻袋", function()
    if not IsAtLeast(MapVar(54), 1) then
        SetValue(MapVar(54), 1)
        AddValue(Food, 4)
        return
    end
    evt.StatusText("空的")
end, "麻袋")

RegisterEvent(73, "麻袋", function()
    if IsAtLeast(MapVar(55), 1) then return end
    SetValue(MapVar(55), 1)
    AddValue(Food, 3)
end, "麻袋")

RegisterEvent(74, "袋子", function()
    evt.OpenChest(7)
end, "袋子")

RegisterEvent(75, "袋子", function()
    evt.OpenChest(8)
end, "袋子")

RegisterEvent(76, "袋子", function()
    evt.OpenChest(9)
end, "袋子")

RegisterEvent(77, "袋子", function()
    evt.OpenChest(10)
end, "袋子")

RegisterEvent(78, "袋子", function()
    evt.OpenChest(11)
end, "袋子")

RegisterEvent(79, "袋子", function()
    evt.OpenChest(12)
end, "袋子")

RegisterEvent(80, "袋子", function()
    evt.StatusText("空的")
end, "袋子")

