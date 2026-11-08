-- MMMerge map supplement: Castle Ironfist local outdoor state.

-- The mounted Ironfist map places the sword at decoration 230, while the legacy
-- event references decoration 232 (an unrelated rock).
ReplaceMapEvent(225, nil, function()
    if IsQBitSet(QBit(1327)) then
        return
    end

    if not IsAtLeast(ActualMight, 40) then
        evt.FaceExpression(51)
        evt.StatusText("剑纹丝不动！")
        return
    end

    SetQBit(QBit(1327))
    evt.GiveItem(4, 23, 1609)
    evt.SetSprite(230, 1, "swrdstx")
end)

ReplaceMapEvent(65534, nil, function()
    if IsQBitSet(QBit(1327)) then
        evt.SetSprite(230, 1, "swrdstx")
    end
end)
AppendMapOnLoadEvent(65534)

ReplaceMapEvent(8, "皇家驿行", function()
    evt.EnterHouse(471)
end, "皇室航线")

ReplaceMapEvent(9, "皇家驿行", function()
    evt.EnterHouse(471)
end, "皇室航线")

ReplaceMapEvent(42, "国王图书馆", function()
    if IsQBitSet(QBit(1201)) then -- Freed Archibald
        evt.EnterHouse(1244)
        return
    end

    if HasItem(2081) then
        evt.ShowMovie("archie", false)
        evt.EnterHouse(1244)
        return
    end

    evt.EnterHouse(1215)
end, "国王图书馆")

ReplaceMapEvent(43, "王座大厅", function()
    MM6.ReturnNicolai()
end, "王座室")

ReplaceMapEvent(210, nil, function(continueStep)
    if continueStep == 9 then
        if not IsAtLeast(Gold, 100) then
            evt.SimpleMessage("水井")
            evt.MoveToMap(4856, 10288, 0, 500, 0, 0, 0, 0)
            return
        end

        SubtractValue(Gold, 100)
        SetValue(MapVar(6), 0)
        return
    end

    if continueStep == 14 then
        evt.SummonMonsters(1, 2, 5, 4920, 12976, 0, 0, 0)
        SetValue(MapVar(6), 0)
        return
    end

    if continueStep == 13 then
        evt.SimpleMessage("水井")
        evt.MoveToMap(4856, 10288, 0, 500, 0, 0, 0, 0)
        return
    end

    if not IsAtLeast(MapVar(6), 1) then
        return
    end

    evt.CastSpell(98, 1, 1, 5784, 11584, 512, 5784, 11584, 0)
    evt.CastSpell(98, 1, 1, 4312, 11600, 512, 4312, 11600, 0)
    evt.SimpleMessage("生命值全部恢复。")
    evt.SimpleMessage("箱子")
    AskQuestionWithAnswerSteps(
        210,
        13,
        "精神焕发！",
        {
            {Answer = "The prince has been kidnapped!  No visitors will be admitted until this crisis has been resolved!", Step = 9},
            {Answer = "Crate", Step = 14},
        })
    return nil
end)

-- MapVars 11 and 16 are the durable states for the two Castle Ironfist cog
-- attributes. Reapply them on load for saves without outdoor facet deltas.
RegisterMapOnLoadEvent(65032, "Restore Castle Ironfist cog state", function()
    evt.SetFacetBit(1, FacetBits.Invisible, IsAtLeast(MapVar(11), 1) and 1 or 0)
    evt.SetFacetBit(1, FacetBits.Untouchable, IsAtLeast(MapVar(16), 1) and 1 or 0)
end)
