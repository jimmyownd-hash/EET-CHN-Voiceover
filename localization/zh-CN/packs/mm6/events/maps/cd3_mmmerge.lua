-- MMMerge map supplement: Castle Kriegspire guardian and curator.

ReplaceMapEvent(13, "克里格斯派尔守卫", function(continueStep)
    if continueStep == 3 then
        evt.StatusText("滚开！")
        return
    end

    if continueStep == 5 then
        if not IsAtLeast(Gold, 50000) then
            evt.StatusText("滚开！")
            return
        end

        SubtractValue(Gold, 50000)
        evt.MoveToMap(13487, 3117, 673, 0, 0, 0, 0, 0)
        return
    end

    if continueStep ~= nil then
        return
    end

    if IsQBitSet(QBit(1364)) then
        evt.MoveToMap(13487, 3117, 673, 0, 0, 0, 0, 0)
        return
    end

    evt.SimpleMessage("\"克里格斯派尔守卫宣布：'给我 50000 金币，秘密便会揭晓！'\"")
    evt.AskQuestion(13, 3, 10, 5, 11, 12, "接受（是/否）？", {"Yes", "Y", "是", "是的"})
    return nil
end, "克里格斯拜尔守护者")

ReplaceMapEvent(27, "克里格斯派尔馆长", function(continueStep)
    if continueStep == 2 then
        evt.StatusText("滚开！")
        return
    end

    if continueStep == 4 then
        if not IsAtLeast(Gold, 10000) then
            evt.StatusText("滚开！")
            return
        end

        SubtractValue(Gold, 10000)
        AddValue(ReputationInCurrentLocation, 50)
        evt.ForPlayer(Players.All)
        SetValue(MajorCondition, 0)
        AddValue(HasFullHP, 0)
        AddValue(HasFullSP, 0)
        return
    end

    if continueStep ~= nil then
        return
    end

    evt.SimpleMessage("\"克里格斯派尔馆长宣布：'给我 10000 金币，你便能得到治疗。'\"")
    evt.AskQuestion(27, 2, 10, 4, 11, 12, "接受（是/否）？", {"Yes", "Y", "是", "是的"})
    return nil
end, "克里格斯拜尔馆主")
