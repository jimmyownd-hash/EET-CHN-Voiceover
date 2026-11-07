-- MAW's skill reset (devdocs/maw/TRAINERS_SKILLS.md §4.5): the Oracle, Judge Grey and the Seer explain it, and reset
-- the active character's skills for 1000 gold per level. Masteries come back on their own as the skills grow again.

RegisterGlobalEvent(10010, "技能重置", function()
    local cost = evt.SkillResetCost()
    evt.SetMessage("我可以让选中的英雄忘掉所有技能课业，重新学习。武器、魔法学派和种族能力都会回到 1 级"
        .. " 并返还它们花费的点数，除炼金术外的其他技能也以相同方式重置。精通不会丢失："
        .. " 只要技能再次达到要求，精通就会恢复。"
        .. "\n\n对这名英雄来说，费用为 " .. cost .. " 金币。")
end)

RegisterGlobalEvent(10011, "重置技能", function()
    local _, status = evt.ResetSkills()
    evt.SetMessage(status)
end)

-- MAW's quest changes (devdocs/maw/MAPS_CONTENT.md §4.1, GLOBAL.lua).

-- Black potion quests take the reagents of every world: red, blue and yellow of MM8, MM7 and MM6.
local MawReagents = {
    red = {{200, 204}, {1002, 1006}, {1764, 1764}},
    blue = {{205, 209}, {1007, 1011}, {1763, 1763}},
    yellow = {{210, 214}, {1012, 1016}, {1762, 1762}},
}

local function mawReagentCount(color)
    local count = 0
    for _, range in ipairs(MawReagents[color]) do
        count = count + evt.CountItems(range[1], range[2])
    end
    return count
end

local function mawTakeReagents(color, count)
    for _, range in ipairs(MawReagents[color]) do
        local take = math.min(count, evt.CountItems(range[1], range[2]))
        if take > 0 then
            evt.RemoveItems(range[1], range[2], take)
            count = count - take
        end
    end
end

-- Hands the potion over when the party has red, blue and yellow reagents as asked.
local function mawBrewQuest(eventId, title, red, blue, yellow, thanks, oldQBit, newQBit, potion, experience, npc)
    ReplaceGlobalEvent(eventId, title, function()
        if mawReagentCount("red") < red or mawReagentCount("blue") < blue or mawReagentCount("yellow") < yellow then
            evt.SetMessage("你缺少部分或全部所需的原料。\n备齐后回来找我吧。")
            return
        end
        evt.SetMessage(thanks)
        mawTakeReagents("red", red)
        mawTakeReagents("blue", blue)
        mawTakeReagents("yellow", yellow)
        ClearQBit(QBit(oldQBit))
        SetQBit(QBit(newQBit))
        AddValue(InventoryItem(potion), potion)
        evt.ForPlayer(Players.All)
        AddValue(Experience, experience)
        evt.SetNPCTopic(npc, 2, 0)
    end)
end


mawBrewQuest(181, "你有原料吗？", 4, 2, 1,
    "原料到了！\n" .. "谢谢你！\n" .. "收下这份奖励吧！",
    113, 114, 254, 1000, 68)

mawBrewQuest(203, "你有原料吗？", 2, 3, 3,
    "太棒了！\n" .. "有了这些，我就能再酿造一瓶纯净幸运药水。\n" .. "收下这瓶药水作为奖励！",
    115, 116, 254, 5000, 74)

mawBrewQuest(212, "你有原料吗？", 2, 4, 1,
    "太棒了！\n" .. "有了这些，我就能再酿造一瓶纯净幸运药水。\n" .. "收下这瓶药水作为奖励！",
    121, 122, 254, 5000, 78)

mawBrewQuest(234, "你有原料吗？", 1, 2, 4,
    "你带着原料回来了，履行了你这一方的承诺。\n" .. "这是你的纯净智慧药水。",
    123, 124, 253, 5000, 83)

mawBrewQuest(246, "你有原料吗？", 2, 1, 4,
    "啊，正确的原料总能奏效！这是你的药水。",
    132, 133, 252, 5000, 77)


-- Galvinus (Ravage Roaming): the quest runs on QBit 132, its journal entry, and ends with 133 (MM8 used 133 and then
-- 134, which belongs to Isthric's topic). A save that took it the old way has 133 and can still hand it in.
ReplaceGlobalEvent(244, "纯净精准药水", function()
    evt.SetMessage("精准能决定战场上谁生谁死。\n如果打不中对手，你必死无疑！\n如果你把纯净精准药水的原料带来，我就为你酿造那瓶药水。")
    SetQBit(QBit(132)) -- Bring Galvinus in Ravage Roaming the basic ingredients for a potion of Pure Accuracy.
    evt.SetNPCTopic(77, 0, 0)
end)
RegisterCanShowTopic(244, function()
    return not IsQBitSet(QBit(132)) and not IsQBitSet(QBit(133))
end)
RegisterCanShowTopic(246, function()
    return IsQBitSet(QBit(132)) or IsQBitSet(QBit(133))
end)


-- Rust asks for MAW's Elemental Resistance potions (item 249) where MM8 used Fire Resistance (256).
ReplaceGlobalEvent(207, "任务", function()
    evt.SetMessage("这个地区的幸存者需要火抗药水！\n有了它们，我们才能撑到找到新家园！\n拿上这些药水！\n可惜我只有这些！\n把它们送到拉斯特村仍矗立的最南边六栋房子里去！")
    SetQBit(QBit(142)) -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
    AddValue(InventoryItem(249), 249) -- Elemental Resistance
    AddValue(InventoryItem(249), 249) -- Elemental Resistance
    AddValue(InventoryItem(249), 249) -- Elemental Resistance
    evt.SetNPCTopic(84, 1, 208) -- Pole topic 1: Not enough potions?
end)

ReplaceGlobalEvent(208, "药水不够？", function()
    if not IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你还没有把火抗药水送到所有的房子里！\n如果火湖继续扩大，所有人都会丧命！")
        return
    end
    evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    SetAutonote(499) -- Brought Potions of Fire Resistance to the southern houses of Rust.
    ClearQBit(QBit(142)) -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
    evt.SetNPCTopic(84, 1, 209) -- Pole topic 1: The village can hold its own.
end)

ReplaceGlobalEvent(571, "火抗药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时推迟了我们的灭亡，但我们仍需找到新家园！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        evt.SetMessage("谢谢你的药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(249) then -- Elemental Resistance
            evt.SetMessage("面对火海的冲击，我毫无还手之力！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(249) -- Elemental Resistance
        SetQBit(QBit(143)) -- Delivered potion to house 1
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
        if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
            if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 7500)
                        evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("谢谢你的药水，但这里的其他人还没有得到保护！\n请务必也给他们送一瓶！")
end)

ReplaceGlobalEvent(572, "火抗药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时推迟了我们的灭亡，但我们仍需找到新家园！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(144)) then -- Delivered potion to house 2
        evt.SetMessage("谢谢你的药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(249) then -- Elemental Resistance
            evt.SetMessage("面对火海的冲击，我毫无还手之力！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(249) -- Elemental Resistance
        SetQBit(QBit(144)) -- Delivered potion to house 2
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
            if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("谢谢你的药水，但这里的其他人还没有得到保护！\n请务必也给他们送一瓶！")
end)

ReplaceGlobalEvent(573, "火抗药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时推迟了我们的灭亡，但我们仍需找到新家园！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(145)) then -- Delivered potion to house 3
        evt.SetMessage("谢谢你的药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(249) then -- Elemental Resistance
            evt.SetMessage("面对火海的冲击，我毫无还手之力！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(249) -- Elemental Resistance
        SetQBit(QBit(145)) -- Delivered potion to house 3
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("谢谢你的药水，但这里的其他人还没有得到保护！\n请务必也给他们送一瓶！")
end)

ReplaceGlobalEvent(574, "火抗药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时推迟了我们的灭亡，但我们仍需找到新家园！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(146)) then -- Delivered potion to house 4
        evt.SetMessage("谢谢你的药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(249) then -- Elemental Resistance
            evt.SetMessage("面对火海的冲击，我毫无还手之力！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(249) -- Elemental Resistance
        SetQBit(QBit(146)) -- Delivered potion to house 4
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("谢谢你的药水，但这里的其他人还没有得到保护！\n请务必也给他们送一瓶！")
end)

ReplaceGlobalEvent(575, "火抗药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时推迟了我们的灭亡，但我们仍需找到新家园！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(147)) then -- Delivered potion to house 5
        evt.SetMessage("谢谢你的药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(249) then -- Elemental Resistance
            evt.SetMessage("面对火海的冲击，我毫无还手之力！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(249) -- Elemental Resistance
        SetQBit(QBit(147)) -- Delivered potion to house 5
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
                if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("谢谢你的药水，但这里的其他人还没有得到保护！\n请务必也给他们送一瓶！")
end)

ReplaceGlobalEvent(576, "火抗药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时推迟了我们的灭亡，但我们仍需找到新家园！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(148)) then -- Delivered potion to house 6
        evt.SetMessage("谢谢你的药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(249) then -- Elemental Resistance
            evt.SetMessage("面对火海的冲击，我毫无还手之力！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(249) -- Elemental Resistance
        SetQBit(QBit(148)) -- Delivered potion to house 6
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
                if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                    if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("谢谢你为拉斯特最南边的房子提供火抗药水。\n也许我们能撑到找到新家园！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("谢谢你的药水，但这里的其他人还没有得到保护！\n请务必也给他们送一瓶！")
end)

-- The circus traders give at most ten trades of each kind per circus visit: "We have no more items to trade".
local function mawCircusTrade(eventId, item, strength, kind, done, missing, counter)
    ReplaceGlobalEvent(eventId, nil, function()
        if evt.GetMapVar(counter, 0) >= 10 then
            evt.SetMessage("可交易的东西已经没有了，改天再来吧。")
            return
        end
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if HasItem(item) then
                RemoveItem(item)
                evt.GiveItem(strength, kind)
                evt.SetMapVar(counter, evt.GetMapVar(counter, 0) + 1)
                evt.SetMessage(done)
                return
            end
        end
        evt.SetMessage(missing)
    end)
end

local NoPyramid = "恐怕你没有金色金字塔，我没法和你做交易。"
local NoKeg = "你没有桶装酒可以交易！"
mawCircusTrade(1442, 2092, 6, ItemType.Armor_, "很高兴和你做生意，这是你的护甲！", NoPyramid,
    "MawCircusPyramid")
mawCircusTrade(1443, 2092, 6, ItemType.Weapon_, "很高兴和你做生意，这是你的武器！", NoPyramid,
    "MawCircusPyramid")
mawCircusTrade(1444, 2092, 6, ItemType.Misc, "很高兴和你做生意，这是你的饰品！", NoPyramid,
    "MawCircusPyramid")
mawCircusTrade(1445, 2093, 4, ItemType.Armor_, "很高兴和你做生意，这是你的护甲！", NoKeg,
    "MawCircusKeg")
mawCircusTrade(1446, 2093, 4, ItemType.Weapon_, "很高兴和你做生意，这是你的武器！", NoKeg,
    "MawCircusKeg")
mawCircusTrade(1447, 2093, 4, ItemType.Misc, "很高兴和你做生意，这是你的饰品！", NoKeg,
    "MawCircusKeg")

-- The Druid Circlet (zzMAW_DruidCircletQuest.lua): Dantillion in Murmurwoods asks for the circlet in the Druid Circle
-- (item 638) and pays 3000 gold, 10000 experience and an amulet. Journal QBit 10001.
RegisterGlobalEvent(10020, "德鲁伊力量之环", function()
    if evt.GetGlobalVar("MawDruidCircletDone", 0) ~= 0 then
        evt.SetMessage("力量之环已被妥善保管。太阳神殿不会忘记你的帮助。")
        return
    end
    if not IsQBitSet(QBit(10001)) then
        evt.SetMessage("前往德鲁伊圆环的朝圣者们寻找的远不止几块古石。据说远古德鲁伊在那里留下了一件遗物——德鲁伊力量之环。"
            .. "太阳神殿希望赶在它落入坏人之手前将其妥善保管。圆环就在此地的东北方。"
            .. "如果你找到力量之环，把它带给我，神殿会酬谢你。")
        SetQBit(QBit(10001))
        return
    end
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(638) then -- Druid Circlet of Power
            RemoveItem(638)
            ClearQBit(QBit(10001))
            evt.SetGlobalVar("MawDruidCircletDone", 1)
            evt.SetMessage("德鲁伊力量之环！多少朝圣者只为看它一眼就献出生命……太阳神殿会好好保管它。"
                .. "请收下神殿的谢意，还有这枚护身符。")
            AddValue(Gold, 3000)
            evt.ForPlayer(Players.All)
            AddValue(Experience, 10000)
            -- MAW identifies the Temple's amulet (zzMAW_DruidCircletQuest.lua:7-11).
            evt.GiveItem(5, ItemType.Amulet, {identified = true})
            return
        end
    end
    evt.SetMessage("你还没有力量之环。德鲁伊圆环在此地东北方；去那里找找吧。")
end)

-- The Dragon Hatchling (Quest_DragonHatchling.lua): feeding says how much the hatchling has eaten and how many days it
-- still needs, and the party can release the dragon for good. A dismissed dragon joins again, except in Beyond Madness
-- (Quest_DragonHatchling.lua:74).
ReplaceGlobalEvent(789, "合并版龙崽", function()
    -- A released dragon is gone for good (Quest_DragonHatchling.lua:28-30).
    if MM7.GetCrossVar("DragonReleased", 0) ~= 0 then
        evt.SimpleMessage("巨龙已经永远飞走了。")
        return
    end
    if MM7.GetCrossVar("DragonJoined", 0) ~= 0 then
        if HasFollowerNpc(396) then
            evt.SimpleMessage("巨龙已经和你同行了。")
        elseif evt.RulesetInfo().challengeMode == "beyond_madness" then
            evt.SimpleMessage("巨龙不会再和你同行了。")
        else
            AddFollowerNpc(396)
            evt.SimpleMessage("巨龙再次加入了你的队伍。")
        end
        return
    end
    if MM7.GetCrossVar("DragonGrown", 0) ~= 0 then
        AddFollowerNpc(396)
        MM7.SetCrossVar("DragonJoined", 1)
        evt.SetNPCName(396, "巨龙")
        evt.SimpleMessage("长大的巨龙加入了你的队伍。")
        return
    end
    local foodEaten = MM7.GetCrossVar("DragonFood", 0)
    if foodEaten >= 100 then
        local grownAt = MM7.GetCrossVar("DragonFirstFeedMinutes", CurrentGameMinutes()) + 28 * 24 * 60
        if CurrentGameMinutes() >= grownAt then
            MM7.SetCrossVar("DragonGrown", 1)
            evt.SimpleMessage("小龙已经长大到可以和你同行了。")
        else
            evt.SimpleMessage("小龙已经吃饱，只差成长的时间。\n剩余天数："
                .. math.max(1, math.ceil((grownAt - CurrentGameMinutes()) / (24 * 60))) .. "。")
        end
        return
    end
    if not IsAtLeast(Food, 5) then
        evt.SimpleMessage("吼！巨龙需要 5 份食物，队伍里的不够。")
        return
    end
    SubtractValue(Food, 5)
    if MM7.GetCrossVar("DragonFirstFeedMinutes", 0) == 0 then
        MM7.SetCrossVar("DragonFirstFeedMinutes", CurrentGameMinutes())
    end
    MM7.SetCrossVar("DragonFood", foodEaten + 5)
    evt.SimpleMessage("好吃！巨龙吃了 5 份食物。目前已吃：100 份中的 " .. (foodEaten + 5) .. " 份。")
end)

-- Releasing is offered only while he travels with the party (Quest_DragonHatchling.lua:191-210).
RegisterGlobalNpcEnterHook(65400, "MAW 龙崽释放", function(context)
    if context ~= nil and context.npcId == 396 then
        evt.SetNPCTopic(396, 1, HasFollowerNpc(396) and 10021 or 0)
    end
end)

RegisterGlobalEvent(10021, "释放巨龙", function()
    evt.SetMessage("巨龙将永远飞走。要释放它吗？")
    evt.SetNPCTopic(396, 1, 10022)
end)

RegisterGlobalEvent(10022, "是，释放它", function()
    -- A hatchling flies away too.
    if HasFollowerNpc(396) then
        RemoveFollowerNpc(396)
    end
    MM7.SetCrossVar("DragonReleased", 1)
    evt.MoveNPC(396, 0)
    evt.SetMessage("巨龙展开双翼飞走了。")
end)

-- The Endless Arena (zzMaw_Arena.lua): the Arena Master starts the level after the best one cleared; its waves come in
-- the Arena (engine/rulesets/maw/events/maps/d42_maw.lua). Global vars: MawArenaBest, the best level cleared, and
-- MawArenaLevel, the level being fought (0 for none).
RegisterGlobalEvent(10030, "无尽竞技场", function()
    evt.SetMessage("看起来你从没试过无尽波次模式。在这个模式里，一波波敌人会不断出现，并随时间推移变得更强。"
        .. "每当你清空一层，进度就会保存，你可以从最近的检查点继续。准备好迎接无情的挑战吧！"
        .. "\n\n下一层：第 "
        .. (evt.GetGlobalVar("MawArenaBest", 0) + 1) .. " 层。")
    evt.SetNPCTopic(313, 1, 10031)
end)

RegisterGlobalEvent(10031, "开始下一层", function()
    local level = evt.GetGlobalVar("MawArenaBest", 0) + 1
    evt.SetGlobalVar("MawArenaLevel", level)
    evt.SetGlobalVar("MawArenaWave", level * 3 - 2)
    evt.SetGlobalVar("MawArenaWavesLeft", 3)
    evt.SetGlobalVar("MawArenaStep", 1)
    evt.SetGlobalVar("MawArenaWait", 0)
    evt.SetGlobalVar("MawArenaProgress", 0)
    evt.SetNPCTopic(313, 1, 0)
    evt.SetMessage("开始吧！第 " .. level .. " 层。")
    evt.MoveToMap(3850, 5776, 1, 512, 0, 0, 0, 0, "d42.blv")
end)

-- Dimensional Maps (Global/zzMaw_DimensionalMapsQuest.lua): the Oracle, Judge Grey and the Seer give a dimension map
-- for each tier of party level and reward it once cleared; from the level 500 tier on, monsters drop maps. The rules
-- keep the quest (evt.RulesTopic).
RegisterGlobalEvent(10040, "维度地图", function()
    evt.SetMessage(evt.RulesTopic("dimensional_maps") or "")
end)

-- Doom and the modes after it: the circus traders of the keg and pyramid trades are gone (GLOBAL.lua:799-803).
RegisterGlobalOnLoadEvent(65401, "MAW 毁灭马戏团商人", function()
    local mode = evt.RulesetInfo().challengeMode
    if mode == "doom" or mode == "road_to_insanity" or mode == "beyond_madness" then
        evt.MoveNPC(1109, 0)
        evt.MoveNPC(1165, 0)
        evt.MoveNPC(1166, 0)
    end
end)

-- Road to Insanity and Beyond Madness: a trader sells his trade good once; buying it takes the topic away
-- (GLOBAL.lua:38-50, which clears the selling NPC's first topic). Each trade good is its seller's first topic.
local TradeGoods = {
    {event = 250, npc = 97, item = 643, title = "花 200 金币购买托伯斯克果"},
    {event = 252, npc = 98, item = 644, title = "花 300 金币购买托伯斯克浆"},
    {event = 254, npc = 99, item = 645, title = "花 500 金币购买托伯斯克白兰地"},
    {event = 256, npc = 100, item = 646, title = "花 1000 金币购买加达姆心木"},
    {event = 258, npc = 101, item = 647, title = "花 1500 金币购买海盗护身符"},
    {event = 260, npc = 103, item = 648, title = "花 2000 金币购买干太阳鱼"},
    {event = 262, npc = 104, item = 649, title = "花 5000 金币购买海洋银尘"},
    {event = 264, npc = 105, item = 650, title = "花 6500 金币购买伪造信用券"},
    {event = 266, npc = 106, item = 651, title = "花 7500 金币购买研磨飞龙角"},
    {event = 515, npc = 719, item = 1494},
    {event = 1258, npc = 722, item = 1495},
    -- MAW lists 1946 here, a typo for the Tularean Wood (DEVIATIONS, audit CNT-10).
    {event = 1260, npc = 723, item = 1496},
    {event = 1262, npc = 761, item = 1497},
    {event = 1264, npc = 762, item = 1498},
    {event = 1266, npc = 724, item = 1499},
}

for _, trade in ipairs(TradeGoods) do
    local buy = evt.global[trade.event]
    if buy ~= nil then
        ReplaceGlobalEvent(trade.event, trade.title, function(...)
            local before = evt.CountItems(trade.item, trade.item)
            buy(...)
            local mode = evt.RulesetInfo().challengeMode
            if (mode == "road_to_insanity" or mode == "beyond_madness")
                and evt.CountItems(trade.item, trade.item) > before then
                evt.SetNPCTopic(trade.npc, 0, 0)
            end
        end)
    end
end
