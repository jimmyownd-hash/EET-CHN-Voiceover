-- MMMerge map supplement: restore MM6 VARN code event variable layout.

local function allCrewCodesEntered()
    return IsAtLeast(MapVar(10), 1)
        and IsAtLeast(MapVar(11), 1)
        and IsAtLeast(MapVar(12), 1)
        and IsAtLeast(MapVar(13), 1)
        and IsAtLeast(MapVar(14), 1)
end

local function registerCrewCodeEvent(eventId, itemId, mapVarIndex, qbit, answer, wrongFace, promptText, answerTextId)
    ReplaceMapEvent(eventId, "净化池", function(continueStep)
        if continueStep == 5 then
            evt.StatusText("错误。")
            evt.FaceExpression(wrongFace)
            SubtractValue(CurrentHealth, 5)
            return
        end

        if continueStep == 9 then
            SetValue(MapVar(mapVarIndex), 1)

            if allCrewCodesEntered() then
                SetValue(MapVar(27), 1)
            end

            evt.ForPlayer(Players.All)
            RemoveItem(itemId)
            ClearQBit(QBit(qbit))
            return
        end

        if continueStep ~= nil then
            return
        end

        SetValue(MapVar(0), 0)

        if not HasItem(itemId) then
            return
        end

        evt.SimpleMessage(promptText)
        evt.AskQuestion(eventId, 5, 44, 9, answerTextId, answerTextId, "答案？", {answer, answer})
        return nil
    end, "净化池")
end

ReplaceMapEvent(1, "VARN 井", function(continueStep)
    if continueStep == 10 then
        evt.StatusText("错误。")
        evt.FaceExpression(44)
        SubtractValue(CurrentHealth, 5)
        return
    end

    if continueStep == 14 then
        SetValue(MapVar(15), 1)
        evt.ForPlayer(Players.All)
        RemoveItem(2157) -- Captain's Code
        ClearQBit(QBit(1255))
        evt.SetDoorState(1, DoorAction.Close)
        evt.StatusText("水分开了。")
        return
    end

    if continueStep ~= nil then
        return
    end

    SetValue(MapVar(0), 0)

    if not HasItem(2157) then
        return
    end

    if not IsAtLeast(MapVar(27), 1) then
        evt.StatusText("访问被拒绝。必须先输入所有密码。")
        SubtractValue(CurrentHealth, 25)
        evt.FaceExpression(35)
        return
    end

    evt.SimpleMessage("船长的密码是什么？")
    evt.AskQuestion(1, 10, 44, 14, 43, 43, "答案？", {"kriK", "kriK"})
    return nil
end, "VARN之井")

registerCrewCodeEvent(21, 2158, 10, 1253, "kcopS", 48, "大副的密码是什么？", 33)
registerCrewCodeEvent(22, 2159, 11, 1256, "uluS", 33, "领航员的密码是什么？", 35)
registerCrewCodeEvent(23, 2160, 12, 1258, "aruhU", 50, "通讯官的密码是什么？", 37)
registerCrewCodeEvent(24, 2161, 13, 1257, "yttocS", 46, "工程师的密码是什么？", 39)
registerCrewCodeEvent(25, 2162, 14, 1254, "yoccM", 13, "医生的密码是什么？", 41)

ReplaceMapEvent(26, "Books", function()
    if IsAtLeast(MapVar(25), 1) then
        return
    end

    SetQBit(QBit(1258))
    AddValue(InventoryItem(2160), 2160) -- Communication Officer's Code
    SetValue(MapVar(25), 1)
end, "书")

ReplaceMapEvent(27, "Books", function()
    if IsAtLeast(MapVar(26), 1) then
        return
    end

    SetQBit(QBit(1257))
    AddValue(InventoryItem(2161), 2161) -- Engineer's Code
    SetValue(MapVar(26), 1)
end, "书")

ReplaceMapEvent(35, "控制室入口", function()
    if IsAtLeast(MapVar(15), 1) then
        evt.SetDoorState(39, DoorAction.Close)
        evt.SetDoorState(40, DoorAction.Close)
    end
end, "控制室入口")
