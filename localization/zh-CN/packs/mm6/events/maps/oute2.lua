-- Misty Islands
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {210},
    onLoad = {65535, 65534, 65533, 65532, 65531, 65530, 65529, 65528, 213},
    onLeave = {},
    openedChestIds = {
    [75] = {1},
    [76] = {2},
    [77] = {3},
    [78] = {4},
    [79] = {5},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 26, targetName = "长矛专卖店" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 63, targetName = "盔甲商城" },
    [6] = { kind = "enter_house", source = "opcode", houseId = 98, targetName = "女巫酿造" },
    [8] = { kind = "enter_house", source = "opcode", houseId = 1229, targetName = "锁、枪托与枪管" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 499, targetName = "冒险" },
    [11] = { kind = "enter_house", source = "opcode", houseId = 1590, targetName = "岛屿测试中心" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 210, targetName = "市政厅" },
    [14] = { kind = "enter_house", source = "opcode", houseId = 330, targetName = "迷雾岛神庙" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 261, targetName = "小鬼拍击" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 298, targetName = "储备库" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 132, targetName = "火焰系入门公会" },
    [21] = { kind = "enter_house", source = "opcode", houseId = 138, targetName = "天空系入门公会" },
    [23] = { kind = "enter_house", source = "opcode", houseId = 144, targetName = "水系入门公会" },
    [25] = { kind = "enter_house", source = "opcode", houseId = 198, targetName = "决斗者之刃" },
    [27] = { kind = "enter_house", source = "opcode", houseId = 192, targetName = "海盗巢穴" },
    [30] = { kind = "enter_house", source = "opcode", houseId = 223, targetName = "王座室" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1227, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1242, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1257, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1272, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1287, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1302, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1315, targetName = "房屋" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1327, targetName = "房屋" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1338, targetName = "房屋" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1350, targetName = "房屋" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1362, targetName = "房屋" },
    [61] = { kind = "enter_house", source = "opcode", houseId = 1373, targetName = "房屋" },
    [62] = { kind = "enter_house", source = "opcode", houseId = 1384, targetName = "房屋" },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [76] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [77] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [78] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [79] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 434, targetName = "银舵前哨" },
    [91] = { kind = "teleport", source = "heuristic" },
    [92] = { kind = "teleport", source = "heuristic" },
    [101] = { kind = "generic_event", source = "opcode" },
    [102] = { kind = "generic_event", source = "opcode" },
    [103] = { kind = "generic_event", source = "opcode" },
    [104] = { kind = "generic_event", source = "opcode" },
    [105] = { kind = "generic_event", source = "opcode" },
    [106] = { kind = "generic_event", source = "opcode" },
    [107] = { kind = "generic_event", source = "opcode" },
    [108] = { kind = "generic_event", source = "opcode" },
    [109] = { kind = "fountain", source = "title" },
    [110] = { kind = "fountain", source = "title" },
    [111] = { kind = "fountain", source = "title" },
    [112] = { kind = "well", source = "title" },
    [113] = { kind = "boost", source = "title" },
    [114] = { kind = "boost", source = "title" },
    [212] = { kind = "obelisk", source = "title" },
    [261] = { kind = "shrine", source = "title" },
    },
    textureNames = {},
    spriteNames = {"6tree06"},
    castSpellIds = {6},
    timers = {
    { eventId = 65527, sourceEventId = 109, triggerStep = 8, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 0, startMinute = 0, startSecond = 1 },
    { eventId = 210, sourceEventId = 210, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 10 },
    },
})

RegisterNoOpEvent(1, "树", "树")

RegisterEvent(2, "一臂之长矛店", function()
    evt.EnterHouse(26) -- Arm's Length Spear Shop
end, "一臂之长矛店")

RegisterEvent(3, "一臂之长矛店", nil, "一臂之长矛店")

RegisterEvent(4, "盔甲大商场", function()
    evt.EnterHouse(63) -- Armor Emporium
end, "盔甲大商场")

RegisterEvent(5, "盔甲大商场", nil, "盔甲大商场")

RegisterEvent(6, "女巫之酿", function()
    evt.EnterHouse(98) -- Witch's Brew
end, "女巫之酿")

RegisterEvent(7, nil, nil)

RegisterEvent(8, "锁、枪托与枪管", function()
    evt.EnterHouse(1229) -- Lock, Stock, and Barrel
end, "锁、枪托与枪管")

RegisterEvent(9, "锁、枪托与枪管", nil, "锁、枪托与枪管")

RegisterEvent(10, "冒险号", function()
    evt.EnterHouse(499) -- Adventure
end, "冒险号")

RegisterEvent(11, "岛屿测试中心", function()
    evt.EnterHouse(1590) -- Island Testing Center
end, "岛屿测试中心")

RegisterEvent(12, "岛屿测试中心", nil, "岛屿测试中心")

RegisterEvent(13, "市政厅", function()
    evt.EnterHouse(210) -- Town Hall
end, "市政厅")

RegisterEvent(14, "迷雾岛神殿", function()
    evt.EnterHouse(330) -- Mist Island Temple
end, "迷雾岛神殿")

RegisterEvent(15, "打小鬼者", function()
    evt.EnterHouse(261) -- The Imp Slapper
end, "打小鬼者")

RegisterEvent(16, "打小鬼者", nil, "打小鬼者")

RegisterEvent(17, "储备库", function()
    evt.EnterHouse(298) -- The Reserves
end, "储备库")

RegisterEvent(18, "储备库", nil, "储备库")

RegisterEvent(19, "火系入门行会", function()
    evt.EnterHouse(132) -- Initiate Guild of Fire
end, "火系入门行会")

RegisterEvent(20, "火系入门行会", nil, "火系入门行会")

RegisterEvent(21, "空气入门行会", function()
    evt.EnterHouse(138) -- Initiate Guild of Air
end, "空气入门行会")

RegisterEvent(22, "空气入门行会", nil, "空气入门行会")

RegisterEvent(23, "水系入门行会", function()
    evt.EnterHouse(144) -- Initiate Guild of Water
end, "水系入门行会")

RegisterEvent(24, "水系入门行会", nil, "水系入门行会")

RegisterEvent(25, "决斗者之锋", function()
    evt.EnterHouse(198) -- Duelists' Edge
end, "决斗者之锋")

RegisterEvent(26, "决斗者之锋", nil, "决斗者之锋")

RegisterEvent(27, "海盗巢穴", function()
    evt.EnterHouse(192) -- Buccaneers' Lair
end, "海盗巢穴")

RegisterEvent(28, "海盗巢穴", nil, "海盗巢穴")

RegisterEvent(29, "市政厅", nil, "市政厅")

RegisterEvent(30, "王座厅", function()
    evt.MoveToMap(0, 0, 0, 0, 0, 0, 80, 1)
    evt.EnterHouse(223) -- 王座大厅
end, "王座厅")

RegisterEvent(31, "欢迎来到迷雾群岛", nil, "欢迎来到迷雾群岛")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1227) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1242) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1257) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1272) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1287) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1302) -- House
end, "房屋")

RegisterEvent(56, "房屋", function()
    evt.EnterHouse(1315) -- House
end, "房屋")

RegisterEvent(57, "房屋", function()
    evt.EnterHouse(1327) -- House
end, "房屋")

RegisterEvent(58, "房屋", function()
    evt.EnterHouse(1338) -- House
end, "房屋")

RegisterEvent(59, "房屋", function()
    evt.EnterHouse(1350) -- House
end, "房屋")

RegisterEvent(60, "房屋", function()
    evt.EnterHouse(1362) -- House
end, "房屋")

RegisterEvent(61, "房屋", function()
    evt.EnterHouse(1373) -- House
    if IsQBitSet(QBit(1325)) then return end -- NPC
    SetQBit(QBit(1325)) -- NPC
end, "房屋")

RegisterEvent(62, "房屋", function()
    evt.EnterHouse(1384) -- House
end, "房屋")

RegisterEvent(75, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(76, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(77, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(78, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(79, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(90, nil, function()
    evt.MoveToMap(4427, 3061, 769, 1024, 0, 0, 434, 1, "6d07.blv") -- Silver Helm Outpost
end)

RegisterEvent(91, nil, function()
    if IsQBitSet(QBit(1325)) then -- NPC
        evt.MoveToMap(-18176, -1072, 96, 512, 0, 0, 0, 0)
    end
end)

RegisterEvent(92, nil, function()
    evt.MoveToMap(4688, -2944, 96, 1400, 0, 0, 0, 0)
end)

RegisterEvent(101, "树", function()
    if not IsAtLeast(MapVar(2), 1) then
        SetValue(MapVar(2), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(134, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(102, "树", function()
    if not IsAtLeast(MapVar(3), 1) then
        SetValue(MapVar(3), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(135, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(103, "树", function()
    if not IsAtLeast(MapVar(4), 1) then
        SetValue(MapVar(4), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(136, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(104, "树", function()
    if not IsAtLeast(MapVar(5), 1) then
        SetValue(MapVar(5), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(137, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(105, "树", function()
    if not IsAtLeast(MapVar(6), 1) then
        SetValue(MapVar(6), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(138, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(106, "树", function()
    if not IsAtLeast(MapVar(7), 1) then
        SetValue(MapVar(7), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(139, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(107, "树", function()
    if not IsAtLeast(MapVar(8), 1) then
        SetValue(MapVar(8), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(140, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(108, "树", function()
    if not IsAtLeast(MapVar(9), 1) then
        SetValue(MapVar(9), 1)
        AddValue(Food, 1)
        evt.StatusText("树木")
        evt.SetSprite(141, 1, "6tree06")
        return
    end
    evt.StatusText("似乎没有更多的苹果了。")
end, "树")

RegisterEvent(109, "饮用喷泉", function()
    if not IsAtLeast(MapVar(11), 1) then
        evt.StatusText("神清气爽！")
        return
    end
    SubtractValue(MapVar(11), 1)
    AddValue(CurrentSpellPoints, 10)
    evt.StatusText("法术值恢复10点。")
    SetAutonote(401) -- 10 Spell points restored by the central fountain in Mist.
end, "饮用喷泉")

RegisterEvent(110, "饮用喷泉", function()
    if not IsAtLeast(IntellectBonus, 10) then
        SetValue(IntellectBonus, 10)
        SetValue(PersonalityBonus, 10)
        evt.StatusText("智力和个性+10（临时）。")
        SetAutonote(403) -- 10 Points of temporary intellect and personality from the west fountain at Castle Newton.
        return
    end
    evt.StatusText("神清气爽！")
end, "饮用喷泉")

RegisterEvent(111, "饮用喷泉", function()
    if not IsAtLeast(FireResistanceBonus, 5) then
        SetValue(FireResistanceBonus, 5)
        SetValue(AirResistanceBonus, 5)
        SetValue(WaterResistanceBonus, 5)
        SetValue(EarthResistanceBonus, 5)
        evt.StatusText("元素抗性+5（临时）。")
        SetAutonote(404) -- 5 Points of temporary fire, electricity, cold, and poison resistance from the east fountain at Castle Newton.
        return
    end
    evt.StatusText("神清气爽！")
end, "饮用喷泉")

RegisterEvent(112, "饮用井水", function()
    if not IsAtLeast(LuckBonus, 20) then
        SetValue(LuckBonus, 20)
        evt.StatusText("幸运+20（临时）。")
        SetAutonote(402) -- 20 Points of temporary luck from the fountain west of the Imp Slapper in Mist.
        return
    end
    evt.StatusText("神清气爽！")
end, "饮用井水")

RegisterEvent(113, "从水槽饮水", function()
    evt.DamagePlayer(Players.Current, const.Damage.Water, 20)
    SetValue(PoisonedYellow, 1)
    evt.StatusText("中毒！")
end, "从水槽饮水")

RegisterEvent(114, "从水槽饮水", function()
    evt.StatusText("神清气爽！")
end, "从水槽饮水")

RegisterEvent(210, nil, function()
    if IsQBitSet(QBit(1181)) then -- NPC
        return
    elseif IsAtLeast(IsFlying, 0) then
        evt.CastSpell(6, 5, 3, 3039, -9201, 2818, 0, 0, 0) -- Fireball
    else
        return
    end
end)

RegisterEvent(211, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1181)) then -- NPC
        return
    elseif HasItem(2106) then -- 龙之塔 Keys
        SetQBit(QBit(1181)) -- NPC
        return
    else
        return
    end
end)

RegisterEvent(212, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1397)) -- NPC
        SetAutonote(455) -- Obelisk Message # 14: f_oteh__fe_h__e_
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                           f_oteh__fe_h__e_")
    evt._PressAnyKey(212, 2)
end, "方尖碑")

RegisterEvent(213, nil, function()
    if IsQBitSet(QBit(1181)) then -- NPC
    end
end)

RegisterEvent(261, "智力圣坛", function()
    if not IsAtLeast(MonthIs, 1) then
        evt.StatusText("你在神龛前祈祷。")
        return
    end
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1232)) then -- NPC
            SetQBit(QBit(1232)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(BaseIntellect, 10)
            evt.StatusText("智力+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(BaseIntellect, 3)
        evt.StatusText("智力+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "智力圣坛")

RegisterEvent(65535, "", function()
    if not IsAtLeast(MapVar(2), 1) then return end
    evt.SetSprite(134, 1, "6tree06")
end)

RegisterEvent(65534, "", function()
    if not IsAtLeast(MapVar(3), 1) then return end
    evt.SetSprite(135, 1, "6tree06")
end)

RegisterEvent(65533, "", function()
    if not IsAtLeast(MapVar(4), 1) then return end
    evt.SetSprite(136, 1, "6tree06")
end)

RegisterEvent(65532, "", function()
    if not IsAtLeast(MapVar(5), 1) then return end
    evt.SetSprite(137, 1, "6tree06")
end)

RegisterEvent(65531, "", function()
    if not IsAtLeast(MapVar(6), 1) then return end
    evt.SetSprite(138, 1, "6tree06")
end)

RegisterEvent(65530, "", function()
    if not IsAtLeast(MapVar(7), 1) then return end
    evt.SetSprite(139, 1, "6tree06")
end)

RegisterEvent(65529, "", function()
    if not IsAtLeast(MapVar(8), 1) then return end
    evt.SetSprite(140, 1, "6tree06")
end)

RegisterEvent(65528, "", function()
    if not IsAtLeast(MapVar(9), 1) then return end
    evt.SetSprite(141, 1, "6tree06")
end)

RegisterEvent(65527, "", function()
    SetValue(MapVar(11), 20)
end)

