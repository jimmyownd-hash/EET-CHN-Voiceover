-- MMMerge map supplement: Castle Darkmoor sarcophagi.

local function replaceSarcophagus(eventId, mapVarIndex, itemId)
    ReplaceMapEvent(eventId, "Sarcophagus", function(continueStep)
        if continueStep == 3 then
            return
        end

        if continueStep == 4 then
            SetValue(MapVar(mapVarIndex), 1)
            evt.GiveItem(6, itemId, 0)
            AddValue(ReputationInCurrentLocation, 200)
            return
        end

        if continueStep ~= nil then
            return
        end

        if IsAtLeast(MapVar(mapVarIndex), 1) then
            return
        end

        evt.SimpleMessage("要偷窃死者身上的东西吗？")
        evt.AskQuestion(eventId, 3, 21, 4, 22, 23, "要偷窃吗？（输入 Y 表示是）", {"Yes", "Y", "是", "是的"})
        return nil
    end, "石棺")
end

replaceSarcophagus(61, 9, 35)
replaceSarcophagus(62, 10, 36)
replaceSarcophagus(63, 11, 39)
