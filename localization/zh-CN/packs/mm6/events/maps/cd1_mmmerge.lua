-- MMMerge map supplement: Castle Alamos password plate.

ReplaceMapEvent(69, nil, function(continueStep)
    if continueStep == 4 then
        evt.MoveToMap(-3136, 2240, 224, 1024, 0, 0, 0, 0)
        evt.StatusText("错误！")
        return
    end

    if continueStep == 23 then
        SetValue(MapVar(6), 1)
        evt.StatusText("好！")
        return
    end

    if continueStep ~= nil then
        return
    end

    if IsAtLeast(MapVar(6), 1) then
        return
    end

    evt.SimpleMessage("禁区——闲人免进。")
    evt.AskQuestion(69, 4, 14, 23, 15, 16, "密码是什么？", {"JBARD", "jbard"})
    return nil
end)
