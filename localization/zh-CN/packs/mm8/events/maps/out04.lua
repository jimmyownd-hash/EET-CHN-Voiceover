-- Ironsand Desert
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapFaceMask = 0x08000000,
    onLoad = {1, 2, 3, 4},
    onLeave = {6, 7, 8, 9, 10},
    openedChestIds = {
    [81] = {0},
    [82] = {1},
    [83] = {2},
    [84] = {3},
    [85] = {4},
    [86] = {5},
    [87] = {6},
    [88] = {7},
    [89] = {8},
    [90] = {9},
    [91] = {10},
    [92] = {11},
    [93] = {12},
    [94] = {13},
    [95] = {14},
    [96] = {15},
    [97] = {16},
    [98] = {17},
    [99] = {18},
    [100] = {19},
    },
    contextActions = {
    [11] = { kind = "enter_house", source = "opcode", houseId = 752, targetName = "奥弗杜恩之家" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 559, targetName = "波尔小屋" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 558, targetName = "绿风暴小屋" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 557, targetName = "霍伯特小屋" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 556, targetName = "迷雾小屋" },
    [21] = { kind = "enter_house", source = "opcode", houseId = 555, targetName = "塔利昂小屋" },
    [23] = { kind = "enter_house", source = "opcode", houseId = 553, targetName = "斯通小屋" },
    [25] = { kind = "enter_house", source = "opcode", houseId = 554, targetName = "炉誓小屋" },
    [27] = { kind = "enter_house", source = "opcode", houseId = 561, targetName = "施梅克小屋" },
    [29] = { kind = "enter_house", source = "opcode", houseId = 560, targetName = "塔伦特小屋" },
    [31] = { kind = "enter_house", source = "opcode", houseId = 698, targetName = "蓟骨宅邸" },
    [81] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [82] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [83] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [84] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [85] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [86] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [87] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [88] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [89] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [90] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [91] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [92] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [93] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [94] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [95] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [96] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [97] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [98] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [99] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [100] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [101] = { kind = "well", source = "title" },
    [102] = { kind = "well", source = "title" },
    [103] = { kind = "well", source = "title" },
    [150] = { kind = "obelisk", source = "title" },
    [179] = { kind = "enter_house", source = "opcode", houseId = 187, targetName = "自我修行" },
    [181] = { kind = "enter_house", source = "opcode", houseId = 454, targetName = "行会商队" },
    [189] = { kind = "enter_house", source = "opcode", houseId = 778, targetName = "占位符" },
    [191] = { kind = "enter_house", source = "opcode", houseId = 231, targetName = "干渴咽喉" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "d13.blv", targetName = "食人妖墓穴" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "d14.blv", targetName = "独眼巨人储藏室" },
    [503] = { kind = "enter_dungeon", source = "opcode", targetMap = "d15.blv", targetName = "炎之锁链" },
    [504] = { kind = "travel", source = "opcode", targetMap = "elemf.odm", targetName = "火之位面" },
    [505] = { kind = "enter_dungeon", source = "opcode", targetMap = "d15.blv", targetName = "炎之锁链" },
    [506] = { kind = "enter_dungeon", source = "opcode", targetMap = "d48.blv", targetName = "爱欣格的洞穴" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 479, sourceEventId = 479, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 20 },
    { eventId = 490, sourceEventId = 490, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 15 },
    },
})

RegisterEvent(1, nil, function()
    if IsQBitSet(QBit(60)) then -- Party visits Ironsand After QuestBit 25 set.
        return
    elseif IsQBitSet(QBit(25)) then -- Find a witness to the lake of fire's formation. Bring him back to the merchant guild in Alvar. - Given and taken by Bastian Lourdrin (area 3).
        SetQBit(QBit(60)) -- Party visits Ironsand After QuestBit 25 set.
        return
    else
        return
    end
end)

RegisterNoOpEvent(2, nil)

RegisterNoOpEvent(3, nil)

RegisterNoOpEvent(4, nil)

RegisterNoOpEvent(6, nil)

RegisterNoOpEvent(7, nil)

RegisterNoOpEvent(8, nil)

RegisterNoOpEvent(9, nil)

RegisterNoOpEvent(10, nil)

RegisterEvent(11, "奥弗杜恩之家", function()
    evt.EnterHouse(752) -- Overdune's House
end, "奥弗杜恩之家")

RegisterEvent(12, "奥弗杜恩之家", nil, "奥弗杜恩之家")

RegisterEvent(13, "波尔小屋", function()
    evt.EnterHouse(559) -- Pole's Hovel
end, "波尔小屋")

RegisterEvent(14, "波尔小屋", nil, "波尔小屋")

RegisterEvent(15, "绿风暴小屋", function()
    evt.EnterHouse(558) -- Hovel of Greenstorm
end, "绿风暴小屋")

RegisterEvent(16, "绿风暴小屋", nil, "绿风暴小屋")

RegisterEvent(17, "霍伯特小屋", function()
    evt.EnterHouse(557) -- Hobert's Hovel
end, "霍伯特小屋")

RegisterEvent(18, "霍伯特小屋", nil, "霍伯特小屋")

RegisterEvent(19, "迷雾小屋", function()
    evt.EnterHouse(556) -- Hovel of Mist
end, "迷雾小屋")

RegisterEvent(20, "迷雾小屋", nil, "迷雾小屋")

RegisterEvent(21, "塔利昂小屋", function()
    evt.EnterHouse(555) -- Talion's Hovel
end, "塔利昂小屋")

RegisterEvent(22, "塔利昂小屋", nil, "塔利昂小屋")

RegisterEvent(23, "斯通小屋", function()
    evt.EnterHouse(553) -- Stone's Hovel
end, "斯通小屋")

RegisterEvent(24, "斯通小屋", nil, "斯通小屋")

RegisterEvent(25, "炉誓小屋", function()
    evt.EnterHouse(554) -- Hearthsworn Hovel
end, "炉誓小屋")

RegisterEvent(26, "炉誓小屋", nil, "炉誓小屋")

RegisterEvent(27, "施梅克小屋", function()
    evt.EnterHouse(561) -- Schmecker's Hovel
end, "施梅克小屋")

RegisterEvent(28, "施梅克小屋", nil, "施梅克小屋")

RegisterEvent(29, "塔伦特小屋", function()
    evt.EnterHouse(560) -- Tarent Hovel
end, "塔伦特小屋")

RegisterEvent(30, "塔伦特小屋", nil, "塔伦特小屋")

RegisterEvent(31, "蓟骨宅邸", function()
    evt.EnterHouse(698) -- Thistlebone Residence
end, "蓟骨宅邸")

RegisterEvent(32, "蓟骨宅邸", nil, "蓟骨宅邸")

RegisterEvent(81, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(82, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(83, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(84, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(85, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(86, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(87, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(88, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(89, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(90, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(91, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(92, "岩石", function()
    evt.OpenChest(11)
end, "岩石")

RegisterEvent(93, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(94, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(95, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(96, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(97, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(98, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(99, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(100, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(101, "饮用井水", function()
    if not IsAtLeast(BaseEndurance, 16) then
        AddValue(BaseEndurance, 2)
        evt.StatusText("耐力 +2（永久）")
        SetAutonote(215) -- Well in the village of Rust gives a permanent Endurance bonus up to an Endurance of 16.
        return
    end
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(102, "饮用井水", function()
    if not IsAtLeast(MapVar(31), 2) then
        if IsAtLeast(Gold, 199) then
            evt.StatusText("精神焕发")
            return
        elseif IsAtLeast(BankGold, 99) then
            evt.StatusText("精神焕发")
        else
            AddValue(Gold, 200)
            AddValue(MapVar(31), 1)
            SetAutonote(216) -- Fountain in the village of Rust in the Ironsand Desert gives 200 gold if the total gold on party and in the bank is less than 100.
        end
    return
    end
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(103, "饮用井水", function()
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(150, "方尖碑", function()
    if IsQBitSet(QBit(189)) then return end -- Obelisk Area 4
    evt.StatusText("thornskey")
    SetAutonote(10) -- Obelisk message #3: thornskey
    SetQBit(QBit(189)) -- Obelisk Area 4
end, "方尖碑")

RegisterEvent(179, "自我修行", function()
    evt.EnterHouse(187) -- Self Study
end, "自我修行")

RegisterEvent(180, "自我修行", nil, "自我修行")

RegisterEvent(181, "行会商队", function()
    evt.EnterHouse(454) -- Guild Caravans
end, "行会商队")

RegisterEvent(182, "行会商队", nil, "行会商队")

RegisterEvent(189, "占位符", function()
    evt.EnterHouse(778) -- Placeholder
end, "占位符")

RegisterEvent(190, "占位符", nil, "占位符")

RegisterEvent(191, "干渴咽喉", function()
    evt.EnterHouse(231) -- Parched Throat
end, "干渴咽喉")

RegisterEvent(192, "干渴咽喉", nil, "干渴咽喉")

RegisterEvent(401, "食人妖墓穴", nil, "食人妖墓穴")

RegisterEvent(402, "独眼巨人储藏室", nil, "独眼巨人储藏室")

RegisterEvent(403, "火焰锁链", nil, "火焰锁链")

RegisterEvent(404, "洞穴", nil, "洞穴")

RegisterEvent(405, "火焰位面之门", nil, "火焰位面之门")

RegisterEvent(406, "毁坏的建筑", nil, "毁坏的建筑")

RegisterEvent(479, nil, function()
    local randomStep = PickRandomOption(479, 2, {2, 4, 6, 8, 10, 12})
    if randomStep == 2 then
        evt.PlaySound(327, -8128, -2496)
    elseif randomStep == 4 then
        evt.PlaySound(327, -2048, 1344)
    elseif randomStep == 6 then
        evt.PlaySound(327, -1216, -7680)
    elseif randomStep == 8 then
        evt.PlaySound(327, -10528, -15168)
    elseif randomStep == 10 then
        evt.PlaySound(327, 3520, -14112)
    end
end)

RegisterEvent(490, nil, function()
    local randomStep = PickRandomOption(490, 2, {2, 2, 3, 3, 3, 3})
    if randomStep == 2 then
        evt.PlaySound(325, -6848, 3776)
    end
end)

RegisterEvent(494, "仙人掌", function()
    if IsQBitSet(QBit(278)) then -- Reagant spout area 4
        return
    elseif IsAtLeast(DisarmTrapSkill, 3) then
        local randomStep = PickRandomOption(494, 4, {5, 7, 9, 11, 13})
        if randomStep == 5 then
            evt.SummonItem(200, -7616, -4160, 504, 1000, 1, true) -- Widowsweep Berries
        elseif randomStep == 7 then
            evt.SummonItem(205, -7616, -4160, 504, 1000, 1, true) -- Phima Root
        elseif randomStep == 9 then
            evt.SummonItem(210, -7616, -4160, 504, 1000, 1, true) -- Poppy Pod
        elseif randomStep == 11 then
            evt.SummonItem(215, -7616, -4160, 504, 1000, 1, true) -- Mushroom
        elseif randomStep == 13 then
            evt.SummonItem(220, -7616, -4160, 504, 1000, 1, true) -- Potion Bottle
        end
        SetQBit(QBit(278)) -- Reagant spout area 4
        return
    else
        return
    end
end, "仙人掌")

RegisterEvent(495, "岩石", function()
    if IsQBitSet(QBit(277)) then return end -- Reagant spout area 4
    if not IsAtLeast(DisarmTrapSkill, 5) then return end
    local randomStep = PickRandomOption(495, 4, {5, 7, 9, 11})
    if randomStep == 5 then
        evt.SummonRandomItem(2, 138, 1728, -3776, 1008, 1000, 1, true) -- random item of the Gold Ring's kind
    elseif randomStep == 7 then
        evt.SummonRandomItem(2, 139, 1728, -3776, 1008, 1000, 1, true) -- random item of the Pearl Ring's kind
    elseif randomStep == 9 then
        evt.SummonRandomItem(2, 140, 1728, -3776, 1008, 1000, 1, true) -- random item of the Gemstone Ring's kind
    elseif randomStep == 11 then
        evt.SummonRandomItem(2, 141, 1728, -3776, 1008, 1000, 1, true) -- random item of the Amethyst Ring's kind
    end
    SetQBit(QBit(277)) -- Reagant spout area 4
end, "岩石")

RegisterEvent(501, "进入食人妖墓穴", function()
    evt.MoveToMap(-672, 768, -28, 256, 0, 0, 358, 1, "d13.blv") -- Troll Tomb
end, "进入食人妖墓穴")

RegisterEvent(502, "进入独眼巨人储藏室", function()
    evt.MoveToMap(0, 0, 1, 1536, 0, 0, 359, 1, "d14.blv") -- Cyclops Larder
end, "进入独眼巨人储藏室")

RegisterEvent(503, "进入炎之锁链", function()
    evt.MoveToMap(-288, -768, 0, 520, 0, 0, 360, 1, "d15.blv") -- Chain of Fire
end, "进入炎之锁链")

RegisterEvent(504, "进入火焰位面", function()
    evt.MoveToMap(99, -22056, 3057, 512, 0, 0, 350, 1, "elemf.odm") -- Plane of Fire
end, "进入火焰位面")

RegisterEvent(505, "进入炎之锁链", function()
    evt.MoveToMap(-12423, 4347, -135, 1544, 0, 0, 360, 1, "d15.blv") -- Chain of Fire
end, "进入炎之锁链")

RegisterEvent(506, "进入洞穴", function()
    evt.MoveToMap(2116, 9631, 1, 1296, 0, 0, 0, 3, "d48.blv") -- Ilsingore's Cave
end, "进入洞穴")

