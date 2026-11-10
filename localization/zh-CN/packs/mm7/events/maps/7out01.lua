-- Emerald Island
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {219},
    onLoad = {100},
    onLeave = {},
    openedChestIds = {
    [118] = {1},
    [119] = {2},
    [120] = {3},
    [121] = {4},
    [122] = {5},
    [123] = {6},
    [124] = {7},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 8, targetName = "骑士之刃" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 43, targetName = "埃里克军械库" },
    [6] = { kind = "enter_house", source = "opcode", houseId = 84, targetName = "翡翠附魔店" },
    [8] = { kind = "enter_house", source = "opcode", houseId = 116, targetName = "蓝色药瓶" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 310, targetName = "医师帐篷" },
    [12] = { kind = "enter_house", source = "opcode", houseId = 1570, targetName = "岛屿训练场" },
    [14] = { kind = "enter_house", source = "opcode", houseId = 239, targetName = "双棕榈酒馆" },
    [16] = { kind = "enter_house", source = "opcode", houseId = 128, targetName = "火系入门行会" },
    [18] = { kind = "enter_house", source = "opcode", houseId = 134, targetName = "空气入门行会" },
    [20] = { kind = "enter_house", source = "opcode", houseId = 152, targetName = "灵魂入门行会" },
    [22] = { kind = "enter_house", source = "opcode", houseId = 164, targetName = "肢体入门行会" },
    [24] = { kind = "enter_house", source = "opcode", houseId = 1168, targetName = "玛格丽特夫人号" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1167, targetName = "唐纳·理斯宅邸" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1170, targetName = "米尔·路基之家" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1171, targetName = "万达利尔宅邸" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1172, targetName = "房屋 227" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1173, targetName = "房屋 228" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1174, targetName = "房屋 229" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1183, targetName = "凯洛琳·威瑟之家" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1184, targetName = "特尔马宅邸" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1185, targetName = "房屋 241" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1186, targetName = "房屋 242" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1198, targetName = "房屋 254" },
    [61] = { kind = "enter_house", source = "opcode", houseId = 1199, targetName = "房屋 255" },
    [62] = { kind = "enter_house", source = "opcode", houseId = 1199, targetName = "房屋 255" },
    [66] = { kind = "enter_house", source = "opcode", houseId = 1163, targetName = "马克姆总部" },
    [101] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d06.blv", targetName = "月之神庙" },
    [102] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d28.blv", targetName = "巨龙的巢穴" },
    [110] = { kind = "well", source = "title" },
    [112] = { kind = "well", source = "title" },
    [113] = { kind = "well", source = "title" },
    [114] = { kind = "well", source = "title" },
    [115] = { kind = "well", source = "title" },
    [118] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [119] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [120] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [121] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [122] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [123] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [124] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [219] = { kind = "press_button", source = "title" },
    [220] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {43},
    timers = {
    { eventId = 111, sourceEventId = 111, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 0, startMinute = 0, startSecond = 1 },
    { eventId = 65535, sourceEventId = 114, triggerStep = 8, origin = "legacy", triggerKind = "long", scheduleKind = "monthly" },
    { eventId = 65534, sourceEventId = 115, triggerStep = 11, origin = "legacy", triggerKind = "long", scheduleKind = "weekly" },
    { eventId = 220, sourceEventId = 220, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 1, startMinute = 0, startSecond = 0 },
    },
})

RegisterEvent(1, "欢迎来到翡翠岛", nil, "欢迎来到翡翠岛")

RegisterEvent(2, "骑士之刃", function()
    evt.EnterHouse(8) -- The Knight's Blade
end, "骑士之刃")

RegisterEvent(3, "骑士之刃", nil, "骑士之刃")

RegisterEvent(4, "埃里克军械库", function()
    evt.EnterHouse(43) -- Erik's Armory
end, "埃里克军械库")

RegisterEvent(5, "埃里克军械库", nil, "埃里克军械库")

RegisterEvent(6, "翡翠附魔店", function()
    evt.EnterHouse(84) -- Emerald Enchantments
end, "翡翠附魔店")

RegisterEvent(7, "翡翠附魔店", nil, "翡翠附魔店")

RegisterEvent(8, "蓝色药瓶", function()
    evt.EnterHouse(116) -- The Blue Bottle
end, "蓝色药瓶")

RegisterEvent(9, "蓝色药瓶", nil, "蓝色药瓶")

RegisterEvent(10, "医师帐篷", function()
    evt.EnterHouse(310) -- Healer's Tent
end, "医师帐篷")

RegisterEvent(11, "医师帐篷", nil, "医师帐篷")

RegisterEvent(12, "岛屿训练场", function()
    evt.EnterHouse(1570) -- Island Training Grounds
end, "岛屿训练场")

RegisterEvent(13, "岛屿训练场", nil, "岛屿训练场")

RegisterEvent(14, "双棕榈酒馆", function()
    evt.EnterHouse(239) -- Two Palms Tavern
end, "双棕榈酒馆")

RegisterEvent(15, "双棕榈酒馆", nil, "双棕榈酒馆")

RegisterEvent(16, "火系入门行会", function()
    evt.EnterHouse(128) -- Initiate Guild of Fire
end, "火系入门行会")

RegisterEvent(17, "火系入门行会", nil, "火系入门行会")

RegisterEvent(18, "空气入门行会", function()
    evt.EnterHouse(134) -- Initiate Guild of Air
end, "空气入门行会")

RegisterEvent(19, "空气入门行会", nil, "空气入门行会")

RegisterEvent(20, "灵魂入门行会", function()
    evt.EnterHouse(152) -- Initiate Guild of Spirit
end, "灵魂入门行会")

RegisterEvent(21, "灵魂入门行会", nil, "灵魂入门行会")

RegisterEvent(22, "肢体入门行会", function()
    evt.EnterHouse(164) -- Initiate Guild of Body
end, "肢体入门行会")

RegisterEvent(23, "肢体入门行会", nil, "肢体入门行会")

RegisterEvent(24, "玛格丽特夫人号", function()
    evt.EnterHouse(1168) -- The Lady Margaret
end, "玛格丽特夫人号")

RegisterEvent(25, "玛格丽特女士号", nil, "玛格丽特女士号")

RegisterEvent(49, "房屋", nil, "房屋")

RegisterEvent(50, "唐纳·理斯宅邸", function()
    evt.EnterHouse(1167) -- Donna Wyrith's Residence
end, "唐纳·理斯宅邸")

RegisterEvent(51, "米尔·路基之家", function()
    evt.EnterHouse(1170) -- Mia Lucille' Home
end, "米尔·路基之家")

RegisterEvent(52, "万达利尔宅邸", function()
    evt.EnterHouse(1171) -- Vandalir Residence
end, "万达利尔宅邸")

RegisterEvent(53, "房屋 227", function()
    evt.EnterHouse(1172) -- House 227
end, "房屋 227")

RegisterEvent(54, "房屋 228", function()
    evt.EnterHouse(1173) -- House 228
end, "房屋 228")

RegisterEvent(55, "房屋 229", function()
    evt.EnterHouse(1174) -- House 229
end, "房屋 229")

RegisterEvent(56, "凯洛琳·威瑟之家", function()
    evt.EnterHouse(1183) -- Carolyn Weathers' House
end, "凯洛琳·威瑟之家")

RegisterEvent(57, "特尔马宅邸", function()
    evt.EnterHouse(1184) -- Tellmar Residence
end, "特尔马宅邸")

RegisterEvent(58, "房屋 241", function()
    evt.EnterHouse(1185) -- House 241
end, "房屋 241")

RegisterEvent(59, "房屋 242", function()
    evt.EnterHouse(1186) -- House 242
end, "房屋 242")

RegisterEvent(60, "房屋 254", function()
    evt.EnterHouse(1198) -- House 254
end, "房屋 254")

RegisterEvent(61, "房屋 255", function()
    evt.EnterHouse(1199) -- House 255
end, "房屋 255")

RegisterEvent(62, "房屋 255", function()
    evt.EnterHouse(1199) -- House 255
end, "房屋 255")

RegisterEvent(63, "铁砧", nil, "铁砧")

RegisterEvent(64, "马车", nil, "马车")

RegisterEvent(65, "酒桶", nil, "酒桶")

RegisterEvent(66, "马克姆总部", function()
    evt.EnterHouse(1163) -- Markham's Headquarters
end, "马克姆总部")

RegisterEvent(67, "马克姆总部", nil, "马克姆总部")

RegisterEvent(68, "公会", nil, "公会")

RegisterEvent(69, "商店", nil, "商店")

RegisterEvent(70, "马克姆勋爵", nil, "马克姆勋爵")

RegisterEvent(100, nil, function()
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        return
    elseif IsQBitSet(QBit(518)) then -- Return a wealthy hat to the Judge on Emerald Island.
        return
    elseif IsQBitSet(QBit(517)) then -- Return a musical instrument to the Judge on Emerald Island.
        return
    elseif IsQBitSet(QBit(516)) then -- Return a floor tile to the Judge on Emerald Island.
        return
    elseif IsQBitSet(QBit(515)) then -- Return a longbow to the Judge on Emerald Island.
        return
    elseif IsQBitSet(QBit(514)) then -- Return a seashell to the Judge on Emerald Island.
        return
    elseif IsQBitSet(QBit(513)) then -- Return a red potion to the Judge on Emerald Island.
        return
    else
        SetQBit(QBit(518)) -- Return a wealthy hat to the Judge on Emerald Island.
        SetQBit(QBit(517)) -- Return a musical instrument to the Judge on Emerald Island.
        SetQBit(QBit(516)) -- Return a floor tile to the Judge on Emerald Island.
        SetQBit(QBit(515)) -- Return a longbow to the Judge on Emerald Island.
        SetQBit(QBit(514)) -- Return a seashell to the Judge on Emerald Island.
        SetQBit(QBit(513)) -- Return a red potion to the Judge on Emerald Island.
        evt.ShowMovie("\"intro post\"", true)
        return
    end
end)

RegisterEvent(101, "进入月亮神庙", function()
    evt.MoveToMap(-1208, -4225, 366, 320, 0, 0, 131, 1, "7d06.blv") -- The Temple of the Moon
end, "进入月亮神庙")

RegisterEvent(102, "进入龙之洞穴", function()
    evt.MoveToMap(752, 2229, 1, 1012, 0, 0, 133, 1, "7d28.blv") -- The Dragon's Lair
end, "进入龙之洞穴")

RegisterEvent(109, "水井", nil, "水井")

RegisterEvent(110, "饮用井水", function()
    if not IsAtLeast(FireResistanceBonus, 50) then
        SetValue(FireResistanceBonus, 50)
        evt.StatusText("火系抗性临时+50。")
        SetAutonote(258) -- 50 points of temporary Fire resistance from the central town well on Emerald Island.
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(111, nil, function()
    SetValue(MapVar(2), 30)
    SetValue(MapVar(3), 30)
end)

RegisterEvent(112, "饮用井水", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("精神焕发！")
        return
    end
    SubtractValue(MapVar(2), 1)
    AddValue(CurrentHealth, 5)
    SetAutonote(259) -- 5 Hit Points regained from the well east of the Temple on Emerald Island.
    evt.StatusText("恢复5点生命值。")
end, "饮用井水")

RegisterEvent(113, "饮用井水", function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.StatusText("精神焕发！")
        SetAutonote(260) -- 5 Spell Points regained from the well west of the Temple on Emerald Island.
        return
    end
    SubtractValue(MapVar(3), 1)
    AddValue(CurrentSpellPoints, 5)
    evt.StatusText("恢复5点法力值。")
    SetAutonote(260) -- 5 Spell Points regained from the well west of the Temple on Emerald Island.
end, "饮用井水")

RegisterEvent(114, "饮用井水", function()
    if not IsAtLeast(BaseLuck, 15) then
        if not IsAtLeast(MapVar(4), 1) then
            evt.StatusText("精神焕发！")
            return
        end
        SubtractValue(MapVar(4), 1)
        AddValue(BaseLuck, 2)
        evt.StatusText("幸运永久+2")
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(115, "饮用井水", function()
    if not IsAtLeast(MapVar(6), 3) then
        if IsAtLeast(MapVar(5), 1) then
            evt.StatusText("精神焕发！")
            return
        elseif IsAtLeast(Gold, 201) then
            evt.StatusText("精神焕发！")
            return
        elseif IsAtLeast(BaseLuck, 15) then
            AddValue(MapVar(5), 1)
            AddValue(Gold, 1000)
            AddValue(MapVar(6), 1)
        else
            evt.StatusText("精神焕发！")
        end
    return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(118, "板条箱", function()
    evt.OpenChest(1)
end, "板条箱")

RegisterEvent(119, "板条箱", function()
    evt.OpenChest(2)
end, "板条箱")

RegisterEvent(120, "板条箱", function()
    evt.OpenChest(3)
end, "板条箱")

RegisterEvent(121, "板条箱", function()
    evt.OpenChest(4)
end, "板条箱")

RegisterEvent(122, "板条箱", function()
    evt.OpenChest(5)
end, "板条箱")

RegisterEvent(123, "板条箱", function()
    evt.OpenChest(6)
end, "板条箱")

RegisterEvent(124, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(200, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(358) -- Margaret the Docent
end)

RegisterEvent(201, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(359) -- Margaret the Docent
end)

RegisterEvent(202, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(360) -- Margaret the Docent
end)

RegisterEvent(203, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(361) -- Margaret the Docent
end)

RegisterEvent(204, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(362) -- Margaret the Docent
end)

RegisterEvent(205, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(363) -- Margaret the Docent
end)

RegisterEvent(206, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(364) -- Margaret the Docent
end)

RegisterEvent(207, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(365) -- Margaret the Docent
end)

RegisterEvent(208, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(366) -- Margaret the Docent
end)

RegisterEvent(209, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(367) -- Margaret the Docent
end)

RegisterEvent(210, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(368) -- Margaret the Docent
end)

RegisterEvent(211, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(369) -- Margaret the Docent
end)

RegisterEvent(212, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(370) -- Margaret the Docent
end)

RegisterEvent(213, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(371) -- Margaret the Docent
end)

RegisterEvent(214, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(372) -- Margaret the Docent
end)

RegisterEvent(215, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(373) -- Margaret the Docent
end)

RegisterEvent(216, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(374) -- Margaret the Docent
end)

RegisterEvent(217, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(375) -- Margaret the Docent
end)

RegisterEvent(218, nil, function()
    if IsQBitSet(QBit(529)) then return end -- No more docent babble
    evt.SpeakNPC(376) -- Margaret the Docent
end)

RegisterEvent(219, "按钮", function()
    evt.CastSpell(43, 10, 4, 10495, 17724, 2370, 10495, 24144, 4500) -- Death Blossom
end, "按钮")

RegisterEvent(220, nil, function()
    if evt.CheckMonstersKilled(ActorKillCheck.Group, 71, 0, false) then -- actor group 71; all matching actors defeated
        evt.SummonMonsters(1, 1, 10, -336, 14512, 0, 71, 0) -- encounter slot 1 "Dragonfly" tier A, count 10, pos=(-336, 14512, 0), actor group 71, no unique actor name
        evt.SummonMonsters(1, 2, 5, 16, 16352, 90, 71, 0) -- encounter slot 1 "Dragonfly" tier B, count 5, pos=(16, 16352, 90), actor group 71, no unique actor name
        evt.SummonMonsters(1, 1, 10, 480, 18288, 6, 71, 0) -- encounter slot 1 "Dragonfly" tier A, count 10, pos=(480, 18288, 6), actor group 71, no unique actor name
    end
end)

RegisterEvent(65535, "", function()
    SetValue(MapVar(4), 8)
end)

RegisterEvent(65534, "", function()
    SetValue(MapVar(5), 0)
end)

