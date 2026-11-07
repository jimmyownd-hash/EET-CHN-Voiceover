-- Mount Nighon
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {},
    openedChestIds = {
    [151] = {1},
    [152] = {2},
    [153] = {3},
    [154] = {4},
    [155] = {5},
    [156] = {6},
    [157] = {7},
    [158] = {8},
    [159] = {9},
    [160] = {10},
    [161] = {11},
    [162] = {12},
    [163] = {13},
    [164] = {14},
    [165] = {15},
    [166] = {16},
    [167] = {17},
    [168] = {18},
    [169] = {19},
    [170] = {0},
    },
    contextActions = {
    [3] = { kind = "enter_house", source = "opcode", houseId = 54, targetName = "制革厂" },
    [5] = { kind = "enter_house", source = "opcode", houseId = 92, targetName = "秘法物品店" },
    [7] = { kind = "enter_house", source = "opcode", houseId = 318, targetName = "祭品与祝福" },
    [9] = { kind = "enter_house", source = "opcode", houseId = 1576, targetName = "实用教学院" },
    [11] = { kind = "enter_house", source = "opcode", houseId = 248, targetName = "命运之愚" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 131, targetName = "火系至高公会" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 14, targetName = "染血匕首" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 990, targetName = "怀特斯基宅邸" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 995, targetName = "伊万德的家" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 996, targetName = "安温宅邸" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 997, targetName = "希尔克的家" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1002, targetName = "达斯克的家" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 991, targetName = "埃尔莫的房子" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1143, targetName = "罗根宅邸" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1144, targetName = "埃尔兹贝特的房子" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1145, targetName = "阿兹诺格的地方" },
    [61] = { kind = "enter_house", source = "opcode", houseId = 1146, targetName = "霍利斯之家" },
    [62] = { kind = "enter_house", source = "opcode", houseId = 1147, targetName = "兰希的房子" },
    [63] = { kind = "enter_house", source = "opcode", houseId = 1148, targetName = "内尔顿宅邸" },
    [64] = { kind = "enter_house", source = "opcode", houseId = 1149, targetName = "霍桑宅邸" },
    [151] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [152] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [153] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [154] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [155] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [156] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [157] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [158] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [159] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [160] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [161] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [162] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [163] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [164] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [165] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [166] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [167] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [168] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [169] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [170] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [202] = { kind = "well", source = "title" },
    [203] = { kind = "well", source = "title" },
    [204] = { kind = "well", source = "title" },
    [206] = { kind = "fountain", source = "title" },
    [207] = { kind = "well", source = "title" },
    [208] = { kind = "well", source = "title" },
    [452] = { kind = "shrine", source = "title" },
    [453] = { kind = "obelisk", source = "title" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d07.blv", targetName = "雷拳山" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "d02.blv", targetName = "迷宫" },
    [503] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d07.blv", targetName = "雷拳山" },
    [504] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d07.blv", targetName = "雷拳山" },
    [505] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d07.blv", targetName = "雷拳山" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 204, triggerStep = 14, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 1, startMinute = 0, startSecond = 0 },
    { eventId = 65534, sourceEventId = 206, triggerStep = 10, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 1, startMinute = 0, startSecond = 0 },
    },
})

RegisterEvent(1, nil, function()
    if not IsQBitSet(QBit(721)) then -- TP Buff Nighon
        SetQBit(QBit(721)) -- TP Buff Nighon
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Hydra A, spawn Roc A, spawn Warlock A
        return
    end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Hydra A, spawn Roc A, spawn Warlock A
end)

RegisterEvent(3, "皮革坊", function()
    evt.EnterHouse(54) -- The Tannery
end, "皮革坊")

RegisterEvent(4, "皮革坊", nil, "皮革坊")

RegisterEvent(5, "秘法物品店", function()
    evt.EnterHouse(92) -- Arcane Items
end, "秘法物品店")

RegisterEvent(6, "秘法物品店", nil, "秘法物品店")

RegisterEvent(7, "供奉与祝福", function()
    evt.EnterHouse(318) -- Offerings and Blessings
end, "供奉与祝福")

RegisterEvent(8, "供奉与祝福", nil, "供奉与祝福")

RegisterEvent(9, "应用训练馆", function()
    evt.EnterHouse(1576) -- Applied Instruction
end, "应用训练馆")

RegisterEvent(10, "应用训练馆", nil, "应用训练馆")

RegisterEvent(11, "命运愚行", function()
    evt.EnterHouse(248) -- Fortune's Folly
end, "命运愚行")

RegisterEvent(12, "命运愚行", nil, "命运愚行")

RegisterEvent(13, "火系至上行会", function()
    evt.EnterHouse(131) -- Paramount Guild of Fire
end, "火系至上行会")

RegisterEvent(14, "火系至上行会", nil, "火系至上行会")

RegisterEvent(15, "染血匕首", function()
    evt.EnterHouse(14) -- The Blooded Dagger
end, "染血匕首")

RegisterEvent(16, "染血匕首", nil, "染血匕首")

RegisterEvent(51, "房屋", nil, "房屋")

RegisterEvent(52, "白空宅邸", function()
    evt.EnterHouse(990) -- Whitesky Residence
end, "白空宅邸")

RegisterEvent(53, "伊万德之家", function()
    evt.EnterHouse(995) -- Evander's Home
end, "伊万德之家")

RegisterEvent(54, "安温宅邸", function()
    evt.EnterHouse(996) -- Anwyn Residence
end, "安温宅邸")

RegisterEvent(55, "丝绸之家", function()
    evt.EnterHouse(997) -- Silk's Home
end, "丝绸之家")

RegisterEvent(56, "黄昏之家", function()
    evt.EnterHouse(1002) -- Dusk's Home
end, "黄昏之家")

RegisterEvent(57, "埃尔莫之家", function()
    evt.EnterHouse(991) -- Elmo's House
end, "埃尔莫之家")

RegisterEvent(58, "罗根宅邸", function()
    evt.EnterHouse(1143) -- Roggen Residence
end, "罗根宅邸")

RegisterEvent(59, "埃尔兹贝特之家", function()
    evt.EnterHouse(1144) -- Elzbet's House
end, "埃尔兹贝特之家")

RegisterEvent(60, "阿兹诺格之居", function()
    evt.EnterHouse(1145) -- Aznog's Place
end, "阿兹诺格之居")

RegisterEvent(61, "霍利斯之家", function()
    evt.EnterHouse(1146) -- Hollis' Home
end, "霍利斯之家")

RegisterEvent(62, "兰希之家", function()
    evt.EnterHouse(1147) -- Lanshee's House
end, "兰希之家")

RegisterEvent(63, "内尔顿宅邸", function()
    evt.EnterHouse(1148) -- Neldon Residence
end, "内尔顿宅邸")

RegisterEvent(64, "山楂宅邸", function()
    evt.EnterHouse(1149) -- Hawthorne Residence
end, "山楂宅邸")

RegisterEvent(151, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(152, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(153, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(154, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(155, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(156, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(157, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(158, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(159, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(160, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(161, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(162, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(163, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(164, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(165, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(166, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(167, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(168, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(169, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(170, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(201, "水井", nil, "水井")

RegisterEvent(202, "饮用井水", function()
    if not IsPlayerBitSet(PlayerBit(15)) then
        if not IsAutonoteSet(277) then -- 2 Skill Points from the well near Offerings and Blessings in Damocles in Mount Nighon.
            SetAutonote(277) -- 2 Skill Points from the well near Offerings and Blessings in Damocles in Mount Nighon.
        end
        AddValue(SkillPoints, 2)
        SetPlayerBit(PlayerBit(15))
        evt.StatusText("+2 技能点")
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(203, "饮用井水", function()
    if not IsPlayerBitSet(PlayerBit(16)) then
        if not IsAutonoteSet(278) then -- 2 points of permanent Personality from the well near Fortune's Folly in Damocles in Mount Nighon.
            SetAutonote(278) -- 2 points of permanent Personality from the well near Fortune's Folly in Damocles in Mount Nighon.
        end
        AddValue(BasePersonality, 2)
        SetPlayerBit(PlayerBit(16))
        evt.StatusText("+2 个性(永久)")
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(204, "饮用井水", function()
    if IsPlayerBitSet(PlayerBit(17)) then
        evt.StatusText("精神焕发！")
        return
    elseif IsAutonoteSet(279) then -- 20 points of temporary Air, Earth, Fire, Water, Body, and Mind resistances from the well near the Fire Guild in Damocles in Mount Nighon.
        AddValue(FireResistanceBonus, 20)
        AddValue(WaterResistanceBonus, 20)
        AddValue(BodyResistanceBonus, 20)
        AddValue(AirResistanceBonus, 20)
        AddValue(EarthResistanceBonus, 20)
        AddValue(MindResistanceBonus, 20)
        SetPlayerBit(PlayerBit(17))
        evt.StatusText("+20 全抗性(临时)")
        return
    else
        SetAutonote(279) -- 20 points of temporary Air, Earth, Fire, Water, Body, and Mind resistances from the well near the Fire Guild in Damocles in Mount Nighon.
        AddValue(FireResistanceBonus, 20)
        AddValue(WaterResistanceBonus, 20)
        AddValue(BodyResistanceBonus, 20)
        AddValue(AirResistanceBonus, 20)
        AddValue(EarthResistanceBonus, 20)
        AddValue(MindResistanceBonus, 20)
        SetPlayerBit(PlayerBit(17))
        evt.StatusText("+20 全抗性(临时)")
        return
    end
end, "饮用井水")

RegisterEvent(205, "喷泉", nil, "喷泉")

RegisterEvent(206, "饮用喷泉", function()
    if not IsPlayerBitSet(PlayerBit(14)) then
        if not IsAutonoteSet(276) then -- 50 points of temporary Intellect and Personality from the central fountain in Damocles in Mount Nighon.
            SetAutonote(276) -- 50 points of temporary Intellect and Personality from the central fountain in Damocles in Mount Nighon.
        end
        AddValue(PersonalityBonus, 50)
        AddValue(IntellectBonus, 50)
        SetPlayerBit(PlayerBit(14))
        evt.StatusText("+50 智力和个性(临时)")
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用喷泉")

RegisterEvent(207, "饮用井水", function()
    if not IsAtLeast(MaxSpellPoints, 0) then
        AddValue(CurrentSpellPoints, 25)
        evt.StatusText("+50 法术值")
        SetAutonote(280) -- 50 Spell Points recovered from the well in the eastern village in Mount Nighon.
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(208, "饮用井水", function()
    if not IsAtLeast(MaxHealth, 0) then
        AddValue(CurrentHealth, 25)
        evt.StatusText("+50 生命值")
        SetAutonote(281) -- 50 Hit Points recovered from the well in the western village in Mount Nighon.
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(209, "雷拳山", nil, "雷拳山")

RegisterEvent(210, "迷宫", nil, "迷宫")

RegisterEvent(451, "神殿", nil, "神殿")

RegisterEvent(452, "祭坛", function()
    if not IsPlayerBitSet(PlayerBit(28)) then
        AddValue(BasePersonality, 10)
        AddValue(BaseIntellect, 10)
        SetPlayerBit(PlayerBit(28))
        evt.StatusText("+10 个性和智力(永久)")
        return
    end
    evt.StatusText("你祈祷")
end, "祭坛")

RegisterEvent(453, "方尖碑", function()
    if IsQBitSet(QBit(684)) then return end -- Visited Obelisk in Area 10
    evt.StatusText("fi_eo_od")
    SetAutonote(317) -- Obelisk message #9: fi_eo_od
    evt.ForPlayer(Players.All)
    SetQBit(QBit(684)) -- Visited Obelisk in Area 10
end, "方尖碑")

RegisterEvent(454, nil, function()
    evt.ForPlayer(Players.All)
    SetValue(Eradicated, 0)
end)

RegisterEvent(500, nil, function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if evt.CheckSeason(1) then return end
    if evt.CheckSeason(0) then
    end
end)

RegisterEvent(501, "进入雷拳山", function()
    evt.MoveToMap(-1024, 768, 4097, 1792, 0, 0, 150, 1, "7d07.blv") -- Thunderfist Mountain
end, "进入雷拳山")

RegisterEvent(502, "进入迷宫", function()
    evt.MoveToMap(1536, -8614, 1, 512, 0, 0, 151, 1, "d02.blv") -- The Maze
end, "进入迷宫")

RegisterEvent(503, "进入雷拳山", function()
    evt.MoveToMap(9960, 1443, 390, 1936, 0, 0, 150, 1, "7d07.blv") -- Thunderfist Mountain
end, "进入雷拳山")

RegisterEvent(504, "进入雷拳山", function()
    evt.MoveToMap(-11058, 4858, 3969, 148, 0, 0, 150, 1, "7d07.blv") -- Thunderfist Mountain
end, "进入雷拳山")

RegisterEvent(505, "进入雷拳山", function()
    evt.MoveToMap(11471, -3498, 2814, 414, 0, 0, 150, 1, "7d07.blv") -- Thunderfist Mountain
end, "进入雷拳山")

RegisterEvent(65535, "", function()
    evt.ForPlayer(Players.All)
    ClearPlayerBit(PlayerBit(17))
end)

RegisterEvent(65534, "", function()
    evt.ForPlayer(Players.All)
    ClearPlayerBit(PlayerBit(14))
end)

