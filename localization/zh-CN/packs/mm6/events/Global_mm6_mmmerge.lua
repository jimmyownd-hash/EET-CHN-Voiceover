-- MMMerge global supplement: MM6 quest follower behavior and topic overlays.

local function searchFlourSack()
    local food = math.random(0, 2)

    if food > 0 then
        AddValue(Food, food)
    else
        evt.StatusText("空袋子")
    end

    evt.ChangeEvent(0)
end

ReplaceGlobalEvent(1741, "面粉袋", searchFlourSack, "面粉袋")
ReplaceGlobalEvent(1742, "面粉袋", searchFlourSack, "面粉袋")

local enrothGrandmasterTeacherTopics = {
    {npc = 1043, slot = 3, topic = 302}, -- GM Staff
    {npc = 837, slot = 3, topic = 305}, -- GM Sword
    {npc = 995, slot = 3, topic = 308}, -- GM Dagger
    {npc = 817, slot = 3, topic = 311, qbit = 1051}, -- GM Axe
    {npc = 991, slot = 3, topic = 314}, -- GM Spear
    {npc = 973, slot = 3, topic = 317}, -- GM Bow
    {npc = 874, slot = 3, topic = 320}, -- GM Mace
    {npc = 830, slot = 3, topic = 329}, -- GM Leather
    {npc = 811, slot = 3, topic = 332}, -- GM Chain
    {npc = 808, slot = 3, topic = 335}, -- GM Plate
    {npc = 890, slot = 4, topic = 338}, -- GM Fire
    {npc = 965, slot = 4, topic = 341}, -- GM Air
    {npc = 829, slot = 4, topic = 344}, -- GM Water
    {npc = 894, slot = 3, topic = 347}, -- GM Earth
    {npc = 923, slot = 4, topic = 350}, -- GM Spirit
    {npc = 858, slot = 3, topic = 353}, -- GM Mind
    {npc = 840, slot = 4, topic = 356}, -- GM Body
    {npc = 1057, slot = 3, topic = 359}, -- GM Light
    {npc = 1040, slot = 3, topic = 362}, -- GM Dark
    {npc = 814, slot = 3, topic = 377}, -- GM Merchant
    {npc = 996, slot = 3, topic = 380}, -- GM Repair
    {npc = 972, slot = 3, topic = 383}, -- GM Bodybuilding
    {npc = 1014, slot = 3, topic = 386}, -- GM Meditation
    {npc = 842, slot = 3, topic = 389}, -- GM Perception
    {npc = 875, slot = 3, topic = 395}, -- GM Disarm Trap
    {npc = 1114, slot = 3, topic = 405}, -- Expert Armsmaster
    {npc = 860, slot = 3, topic = 406}, -- Master Armsmaster
    {npc = 860, slot = 4, topic = 407}, -- GM Armsmaster
    {npc = 819, slot = 3, topic = 413}, -- GM Alchemy
    {npc = 809, slot = 4, topic = 416}, -- GM Learning
    {npc = 870, slot = 3, topic = 374}, -- GM Identify Item
    {npc = 915, slot = 3, topic = 973}, -- GM Blaster
    {npc = 966, slot = 4, topic = 326}, -- GM Shield
}

local function applyEnrothGrandmasterTeacherTopic(entry)
    if entry.qbit and not IsQBitSet(QBit(entry.qbit)) then
        evt.SetNPCTopic(entry.npc, entry.slot, 0)
        return
    end
    evt.SetNPCTopic(entry.npc, entry.slot, entry.topic)
end

local function applyEnrothGrandmasterTeacherTopics()
    for _, entry in ipairs(enrothGrandmasterTeacherTopics) do
        applyEnrothGrandmasterTeacherTopic(entry)
    end
end

RegisterGlobalOnLoadEvent(65300, "MMerge Enroth grandmaster teacher topics", function()
    applyEnrothGrandmasterTeacherTopics()
end)

RegisterGlobalNpcEnterHook(65301, "MMerge Enroth grandmaster teacher topics", function(context)
    for _, entry in ipairs(enrothGrandmasterTeacherTopics) do
        if context.npcId == entry.npc then
            applyEnrothGrandmasterTeacherTopic(entry)
        end
    end
end)

local SeerPilgrimageCompletedQBit = 1230
local SeerPilgrimageStateVariable = 0x7002
local SeerPilgrimageStateMonthMask = 4096
local SeerPilgrimageMinutesPerDay = 24 * 60
local SeerPilgrimageDaysPerMonth = 28
local SeerPilgrimageMonthsPerYear = 12
local SeerPilgrimageDaysPerYear = SeerPilgrimageDaysPerMonth * SeerPilgrimageMonthsPerYear

local seerPilgrimageByMonth = {
    {month = "一月", stat = "力量", map = "走私湾"},
    {month = "二月", stat = "智力", map = "迷雾群岛"},
    {month = "三月", stat = "个性", map = "银湾"},
    {month = "四月", stat = "耐力", map = "冰冻高地"},
    {month = "五月", stat = "精准", map = "自由天堂"},
    {month = "六月", stat = "速度", map = "诅咒沼泽"},
    {month = "七月", stat = "幸运", map = "新索匹格"},
    {month = "八月", stat = "火系", map = "战争尖塔"},
    {month = "九月", stat = "风系", map = "铁拳城堡"},
    {month = "十月", stat = "水系", map = "战争尖塔"},
    {month = "十一月", stat = "土系", map = "鳗鱼水域"},
    {month = "十二月", stat = "魔法", map = "黑郡"},
}

local seerPilgrimageMonthBits = {
    1,
    2,
    4,
    8,
    16,
    32,
    64,
    128,
    256,
    512,
    1024,
    2048,
}

local function currentSeerPilgrimage()
    local dayIndex = math.floor(CurrentGameMinutes() / SeerPilgrimageMinutesPerDay)
    local yearIndex = math.floor(dayIndex / SeerPilgrimageDaysPerYear)
    local yearDay = dayIndex % SeerPilgrimageDaysPerYear
    local monthIndex = math.floor(yearDay / SeerPilgrimageDaysPerMonth) + 1
    return yearIndex, monthIndex, seerPilgrimageByMonth[monthIndex]
end

local function currentSeerPilgrimageMask(yearIndex)
    local packedState = GetPartyVariable(SeerPilgrimageStateVariable)
    local storedYear = math.floor(packedState / SeerPilgrimageStateMonthMask)
    if storedYear ~= yearIndex then
        return 0
    end
    return packedState % SeerPilgrimageStateMonthMask
end

local function setCurrentSeerPilgrimageMask(yearIndex, monthMask)
    SetPartyVariable(SeerPilgrimageStateVariable, yearIndex * SeerPilgrimageStateMonthMask + monthMask)
end

ReplaceGlobalEvent(1354, "朝圣之旅", function()
    local yearIndex, monthIndex, pilgrimage = currentSeerPilgrimage()
    local monthMask = currentSeerPilgrimageMask(yearIndex)
    local monthBit = seerPilgrimageMonthBits[monthIndex]

    if IsQBitSet(QBit(SeerPilgrimageCompletedQBit)) then
        if math.floor(monthMask / monthBit) % 2 == 1 then
            evt.SetMessage("你必须等到下个月才能进行朝圣。")
            return
        end

        ClearQBit(QBit(SeerPilgrimageCompletedQBit))
        setCurrentSeerPilgrimageMask(yearIndex, monthMask + monthBit)
        AddValue(Experience, 0)
    end

    evt.SetMessage(string.format(
        "这是%s，%s之月。\n前往%s的神殿祈祷，即可获得奖赏。",
        pilgrimage.month,
        pilgrimage.stat,
        pilgrimage.map))
end)

RegisterGlobalEvent(1358, "我把它弄丢了", function()
    MM6.RecoverLostItem()
end)

local function showSeerHint(textId, autonoteId)
    evt.SetMessage(Game.NPCText[textId])
    if autonoteId then
        SetAutonote(autonoteId)
    end
end

ReplaceGlobalEvent(1359, "提示", function()
    evt.ForPlayer(Players.All)

    if IsQBitSet(QBit(1105)) then
        showSeerHint(2127, 479)
        return
    end

    if IsQBitSet(QBit(1106)) then
        showSeerHint(2119, 478)
        return
    end

    if not IsAtLeast(BaseLevel, 25) then
        showSeerHint(2120, 477)
        return
    end

    if not HasAward(Award(57)) or not HasAward(Award(58)) or not HasAward(Award(59)) or
        not HasAward(Award(60)) or not HasAward(Award(61)) or not HasAward(Award(62)) then
        showSeerHint(2122, 476)
        return
    end

    if not IsQBitSet(QBit(1192)) then
        showSeerHint(2124, 475)
        return
    end

    if not HasAward(Award(75)) then
        showSeerHint(2125, 474)
        return
    end

    if HasAward(Award(78)) then
        showSeerHint(2131)
        return
    end

    if HasItem(2164) then
        showSeerHint(2130, 471)
        return
    end

    if HasItem(1666) or HasItem(1667) then
        showSeerHint(2129, 472)
        return
    end

    showSeerHint(2126, 473)
end)

AppendGlobalEvent(1344, function()
    MM6.AddQuestFollower(796)
end)

AppendGlobalEvent(1346, function()
    MM6.RemoveQuestFollowerUnless(1701, 802)
end)

AppendGlobalEvent(1347, function()
    MM6.RemoveQuestFollower(802)
end)

-- Completed Enroth quests remain available to later recruits. Promotion eligibility is exact.
local promotionFamilies = {
    {npc = 789, secondStart = 1328,
        first = {event = 1327, title = "Crusaders", from = 26, to = 27, bits = {1635, 1636},
            xp = 15000, quest = 1112, conditionBit = 1699, consumeBit = 1699, gold = 5000,
            message = 1713, refusal = 1712},
        second = {event = 1329, title = "Heroes", from = 27, to = 28, bits = {1637, 1638},
            xp = 30000, quest = 1113, item = 2075, consumeItem = true, consumeBit = 1209,
            message = 1716, refusal = 1715}},
    {npc = 790, secondStart = 1372,
        first = {event = 1371, title = "Wizards", from = 42, to = 43, bits = {1639, 1640},
            xp = 15000, quest = 1135, message = 1762},
        second = {event = 1373, title = "大魔法师", from = 43, to = 51, bits = {1641, 1642},
            xp = 30000, quest = 1136, item = 2077, consumeItem = true, consumeBit = 1210,
            message = 1765, refusal = 1764}},
    {npc = 791, secondStart = 1383,
        first = {event = 1382, title = "Cavaliers", from = 16, to = 17, bits = {1643, 1644},
            xp = 15000, quest = 1138, message = 1776},
        second = {event = 1384, title = "Champions", from = 17, to = 19, bits = {1645, 1646},
            xp = 40000, quest = 1139, item = 2128, consumeItem = true, consumeBit = 1211,
            message = 1779, refusal = 1778}},
    {npc = 801, secondStart = 1350,
        first = {event = 1349, title = "Priests", from = 4, to = 5, bits = {1647, 1648},
            xp = 15000, quest = 1129, conditionBit = 1130, message = 1740, refusal = 1739},
        second = {event = 1351, title = "大主教", from = 5, to = 50, bits = {1649, 1650},
            xp = 30000, quest = 1131, conditionBit = 1132, message = 1744, refusal = 1742}},
    {npc = 799, secondStart = 1397, ceremony = true,
        first = {event = 1678, title = "高级德鲁伊", from = 12, to = 13, bits = {1651, 1652},
            xp = 15000, quest = 1142, message = 1792, ceremonyBit = 1197, ceremonyNpc = 1090},
        second = {event = 1679, title = "大德鲁伊", from = 13, to = 15, bits = {1653, 1654},
            xp = 40000, quest = 1143, message = 1794, ceremonyBit = 1198, ceremonyNpc = 1091}},
    {npc = 800, secondStart = 1406,
        first = {event = 1405, title = "战斗法师", from = 0, to = 1, bits = {1655, 1656},
            xp = 15000, quest = 1145, item = 2106, message = 1803, refusal = 1802},
        second = {event = 1413, title = "神箭手", from = 1, to = 2, bits = {1657, 1658},
            xp = 40000, quest = 1146, towerBits = {1180, 1181, 1182, 1183, 1184, 1185},
            message = 1807, refusal = 1805}},
}

local function promotionCompleted(stage)
    return IsQBitSet(QBit(stage.bits[1])) or IsQBitSet(QBit(stage.bits[2]))
end

local function updatePromotionTopics(family)
    if not promotionCompleted(family.first) then return end

    -- Slot 5 is unused by these six lords. Keep council quests and Anthony Stone's Ankh topic intact.
    evt.SetNPCTopic(family.npc, 5, family.first.event)
    if promotionCompleted(family.second) then
        evt.SetNPCTopic(family.npc, 1, family.second.event)
    elseif IsQBitSet(QBit(family.second.quest)) then
        evt.SetNPCTopic(family.npc, 1, family.ceremony and 1398 or family.second.event)
    else
        evt.SetNPCTopic(family.npc, 1, family.secondStart)
    end
end

local function meetsPromotionConditions(stage)
    evt.ForPlayer(Players.All)
    if stage.conditionBit ~= nil and not IsQBitSet(QBit(stage.conditionBit)) then return false end
    if stage.item ~= nil and not HasItem(stage.item) then return false end
    for _, bit in ipairs(stage.towerBits or {}) do
        if not IsQBitSet(QBit(bit)) then return false end
    end
    return true
end

for _, family in ipairs(promotionFamilies) do
    for stageIndex, stage in ipairs({family.first, family.second}) do
        ReplaceGlobalEvent(stage.event, stage.title, function()
            local firstTime = not promotionCompleted(stage)
            if firstTime and not meetsPromotionConditions(stage) then
                local message = stage.refusal
                if stage.event == 1351 and HasItem(2054) then message = 1743 end
                evt.SetMessage(Game.NPCText[message])
                return
            end

            if firstTime then
                evt.SetMessage(Game.NPCText[stage.message])
            else
                evt.SetMessage("你的队伍已经完成了这个任务。符合条件的随从将晋升为 "
                    .. GetClassName(stage.to) .. ".")
            end

            for _, player in ipairs(PartyMembers()) do
                evt.ForPlayer(player)
                if PlayerClassMatches(player, stage.from) then
                    SetValue(ClassId, stage.to)
                    AddValue(Experience, stage.xp)
                    SetQBit(QBit(stage.bits[1]))
                elseif firstTime then
                    AddValue(Experience, stage.xp)
                    SetQBit(QBit(stage.bits[2]))
                end
            end

            evt.ForPlayer(Players.All)
            if firstTime then
                ClearQBit(QBit(stage.quest))
                if stage.consumeItem then RemoveItem(stage.item) end
                if stage.consumeBit ~= nil then ClearQBit(QBit(stage.consumeBit)) end
                if stage.gold ~= nil then AddValue(Gold, stage.gold) end
                -- Retain the authored first-completion reputation effects.
                if stageIndex == 1 then AddValue(131307, 2) else AddValue(327915, 5) end
                if stage.ceremonyBit ~= nil then
                    SetQBit(QBit(stage.ceremonyBit))
                    evt.SetNPCTopic(stage.ceremonyNpc, 0, 0)
                end
                if stage.event == 1382 then evt.SetNPCTopic(792, 0, 1380) end
            end
            updatePromotionTopics(family)
        end)
    end
end

-- Attach follower departure after the promotion overrides replace their quest handlers.
AppendGlobalEvent(1327, function()
    MM6.RemoveQuestFollowerUnless(1699, 796)
end)

RegisterGlobalNpcEnterHook(65302, "Enroth completed promotion topics", function(context)
    for _, family in ipairs(promotionFamilies) do
        if context.npcId == family.npc then
            updatePromotionTopics(family)
            return
        end
    end
end)

ReplaceGlobalEvent(1352, "安东尼·斯通高级祭司任务完成", function()
    evt.SetMessage(
        "虽然你们晋升为高级祭司的速度快得近乎不合常理，"
        .. "但我这辈子从没见过比你们更出色的高级祭司。\n"
        .. "感谢你们为我、为恩洛斯所做的一切。")
end)

ReplaceGlobalEvent(1426, nil, function()
    MM6.SellCollectorItem(
        2082,
        461,
        2000,
        0,
        "这个有点脏，不过应该还能用。\n这是我答应给你的金币。\n多谢帮忙！",
        "作为重建自由天堂神殿努力的一部分，我在收集神殿之钟。\n如果你有任何钟，我每个付你2000金币。")
end)

ReplaceGlobalEvent(1427, nil, function()
    MM6.SellCollectorItem(
        2085,
        462,
        1000,
        5,
        "嗯……",
        "我在寻找用于仪式的骨头。\n我更喜欢人类或类人生物的骨头，不过我想你找到的什么我都能凑合用。\n我愿意为我能用的骨头支付高达1000金币。")
end)

ReplaceGlobalEvent(1428, nil, function()
    MM6.SellCollectorItem(
        2090,
        463,
        5,
        0,
        "谢谢你！",
        "很多人无法去看马戏，所以我收集马戏团奖品，送给那些没法亲自去的人。\n如果你想出售天然磁石，我每块5金币收购。")
end)

ReplaceGlobalEvent(1429, nil, function()
    MM6.SellCollectorItem(
        2091,
        464,
        10,
        0,
        "谢谢！\n别告诉我女儿，我想给她个惊喜。\n这是 10 金币。",
        "我女儿想去看马戏，可马戏团来附近的时候我们总是没空。\n我想送她一把漂亮的鹰身女妖羽毛。\n你手里的鹰身女妖羽毛我每根 10 金币收购。")
end)

ReplaceGlobalEvent(1430, nil, function()
    MM6.SellCollectorItem(
        2092,
        465,
        1000,
        0,
        "谢谢！\n我等不及要带着它去阿卜杜勒沙漠度假村看看能换到什么了！\n哦，这是欠你的钱。",
        "我听说如果用金色金字塔付款，能在阿卜杜勒沙漠度假村买到很棒的东西。\n我希望有一天能去那里，现在想囤积一些金字塔。\n你手里的任何金色金字塔我都按1000金币收购。")
end)

ReplaceGlobalEvent(1431, nil, function()
    MM6.SellCollectorItem(
        2093,
        466,
        300,
        0,
        "我的最爱！\n谢谢你的酒！\n这是 300 金币，物有所值。",
        "我最爱的酒是马戏团赢来的那种。")
end)

ReplaceGlobalEvent(1432, nil, function()
    MM6.SellCollectorItem(
        2096,
        467,
        500,
        0,
        "我不记得自己还有过这样一颗牙，给你 500 金币。",
        "我有一批令人惊叹的牙齿收藏，但我总想收集更多。\n如果你找到我收藏中没有的牙齿，我付你500金币。")
end)

ReplaceGlobalEvent(1433, nil, function()
    MM6.SellCollectorItem(
        2097,
        468,
        25,
        0,
        "太好了！",
        "我去了三次马戏团，什么都没赢到。\n我其实只想要他们当奖品的那种漂亮的四叶草。\n你带来的每株四叶草我付 25 金币。")
end)

ReplaceGlobalEvent(1434, nil, function()
    MM6.SellCollectorItem(
        2102,
        469,
        500,
        0,
        "这个正合适！\n谢谢你的琥珀，这是我答应的 500 金币。",
        "听说铁拳城堡北面的一连串洞穴里能找到大块琥珀。\n我一直没空离开自由天堂，但很想弄到一些那种琥珀。\n每块琥珀我付 500 金币。")
end)

ReplaceGlobalEvent(1625, nil, function()
    MM6.SellCollectorItem(
        2094,
        0,
        300,
        0,
        "极好的标本！",
        "我是一名珍稀奇异生物的收藏家，靠出售其中一些作为宠物谋生。\n目前眼镜蛇需求旺盛，而我能出售的眼镜蛇已所剩不多。\n因此，我愿意为你可能找到的任何眼镜蛇蛋支付高价。\n记住，如果你找到任何眼镜蛇蛋，我会给你最优厚的价格。")
end)

AppendGlobalEvent(1631, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.RemoveQuestFollowerUnless(1702, 893)
end)

AppendGlobalEvent(1634, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.AddQuestFollower(893)
end)

AppendGlobalEvent(1638, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.RemoveQuestFollower(978)
end)

AppendGlobalEvent(1640, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.AddQuestFollower(978)
end)

AppendGlobalEvent(1642, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.RemoveQuestFollower(980)
end)

AppendGlobalEvent(1645, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.RemoveQuestFollowerUnless(1705, 940)
end)

AppendGlobalEvent(1646, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.AddQuestFollower(940)
end)

AppendGlobalEvent(1331, function()
    MM6.StartNicolaiQuest()
end)

ReplaceGlobalEvent(1333, nil, function(continueStep)
    if continueStep ~= nil then
        return
    end

    MM6.KidnapNicolai(true)
end)

AppendGlobalEvent(1334, function()
    MM6.RecoverNicolaiAtCircus()
end)

-- MMerge Quest_EnrothDarkArts: Enroth's light and dark masters let promoted characters change their path.
-- MMerge asks only when the topic is clicked twice within two seconds; here the first click of a conversation shows
-- the advert and the next click of the same topic asks the question.
local PathOfLightTopic = 10001
local PathOfDarkTopic = 10002
local PathYesAnswerStep = 1
local PathDeclinedStep = 2

local pathOfDarkClasses = {[51] = 47, [50] = 7, [46] = 47, [28] = 29, [15] = 14, [6] = 7, [2] = 3}
local pathOfLightClasses = {[51] = 46, [50] = 6, [47] = 46, [29] = 28, [14] = 15, [7] = 6, [3] = 2}

local pathTopicNpcs = {
    {npc = 1040, topic = PathOfDarkTopic}, -- Su Lang Manchu
    {npc = 1030, topic = PathOfDarkTopic}, -- Rebecca Calaway
    {npc = 1057, topic = PathOfLightTopic}, -- Ki Lo Nee
    {npc = 1031, topic = PathOfLightTopic}, -- Virginia Standridge
    {npc = 795, topic = PathOfLightTopic}, -- Marton Ferris
}

-- The topic last clicked once in this conversation, and the member who was asked (the answer may come after the
-- active member changed).
local armedPathTopic = nil
local pathChoicePlayer = nil

local function higherPathSkill(firstLevel, firstMastery, secondLevel, secondMastery)
    if secondMastery > firstMastery or (secondMastery == firstMastery and secondLevel > firstLevel) then
        return secondLevel, secondMastery
    end
    return firstLevel, firstMastery
end

local function changePath(path, continueStep)
    if continueStep ~= nil then
        local player = pathChoicePlayer or evt.GetCurrentPlayerIndex()
        pathChoicePlayer = nil
        evt.ForPlayer(player)

        if continueStep ~= PathYesAnswerStep or path.classes[GetPlayerClass(player)] == nil then
            evt.FaceAnimation(FaceAnimation.ShakeHeadNo)
            evt.ForPlayer(Players.Current)
            return
        end

        local keptLevel, keptMastery = GetPlayerSkill(player, path.keptSkill)
        local droppedLevel, droppedMastery = GetPlayerSkill(player, path.droppedSkill)
        keptLevel, keptMastery = higherPathSkill(keptLevel, keptMastery, droppedLevel, droppedMastery)
        SetPlayerSkill(player, path.keptSkill, keptLevel, keptMastery)
        SetPlayerSkill(player, path.droppedSkill, 0, 0)

        for spellId = path.firstDroppedSpell, path.firstDroppedSpell + 10 do
            ForgetPlayerSpell(player, spellId)
        end

        SetPlayerClass(player, path.classes[GetPlayerClass(player)])
        evt.FaceAnimation(FaceAnimation.ShakeHeadYes)
        evt.ForPlayer(Players.Current)
        return
    end

    local player = evt.GetCurrentPlayerIndex()

    if path.classes[GetPlayerClass(player)] == nil then
        armedPathTopic = nil
        evt.SetMessage(Game.NPCText[2109])
        return
    end

    if armedPathTopic ~= path.topic then
        armedPathTopic = path.topic
        evt.SetMessage(Game.NPCText[path.advertText])
        return
    end

    armedPathTopic = nil
    pathChoicePlayer = player
    AskQuestionWithAnswerSteps(
        path.topic,
        PathDeclinedStep,
        Game.NPCText[path.warningText],
        {{Answer = Game.NPCText[2108], Step = PathYesAnswerStep}})
end

local pathOfLight = {
    topic = PathOfLightTopic,
    classes = pathOfLightClasses,
    keptSkill = "LightMagic",
    droppedSkill = "DarkMagic",
    firstDroppedSpell = 89, -- Reanimate .. Souldrinker
    advertText = 2106,
    warningText = 2104,
}

local pathOfDark = {
    topic = PathOfDarkTopic,
    classes = pathOfDarkClasses,
    keptSkill = "DarkMagic",
    droppedSkill = "LightMagic",
    firstDroppedSpell = 78, -- Light Bolt .. Divine Intervention
    advertText = 2107,
    warningText = 2105,
}

RegisterGlobalEvent(PathOfLightTopic, "光明之路", function(continueStep)
    changePath(pathOfLight, continueStep)
end)

RegisterGlobalEvent(PathOfDarkTopic, "黑暗之路", function(continueStep)
    changePath(pathOfDark, continueStep)
end)

RegisterGlobalOnLoadEvent(65303, "MMerge Enroth path topics", function()
    for _, entry in ipairs(pathTopicNpcs) do
        evt.SetNPCTopic(entry.npc, 4, entry.topic)
    end
end)

RegisterGlobalNpcEnterHook(65304, "MMerge Enroth path topics", function(context)
    for _, entry in ipairs(pathTopicNpcs) do
        if context.npcId == entry.npc then
            armedPathTopic = nil
            evt.SetNPCTopic(entry.npc, 4, entry.topic)
        end
    end
end)
