-- MMMerge map supplement: Shadow Guild password doors.

local function askPasswordDoor(eventId, doorId, prompt, answers)
    ReplaceMapEvent(eventId, "魔法门", function(continueStep)
        if continueStep == 2 then
            evt.StatusText("错误")
            return
        end

        if continueStep == 4 then
            evt.SetDoorState(doorId, DoorAction.Close)
            return
        end

        if continueStep ~= nil then
            return
        end

        evt.SimpleMessage(prompt)
        evt.AskQuestion(eventId, 2, 21, 4, 0, 0, "答案？", answers)
        return nil
    end, "魔法门")
end

local darkPrompt =
    "\"你看不见我、听不见我、也摸不到我。我藏于群星之后，改变着真实， " ..
    "我是你最深的恐惧，闭上眼睛我便会靠近。我是什么？\""
askPasswordDoor(61, 61, darkPrompt, {"dark", "darkness", "黑暗", "暗", "黑"})

askPasswordDoor(
    62,
    62,
    "\"我穿过苹果，或为你指路，我适于弓弦，而后留在靶上。我是什么？\"",
    {"arrow", "an arrow", "箭", "一支箭", "箭矢"})

local timePrompt =
    "\"什么吞噬岩石、夷平山岳、摧毁树木、把云朵推过天空， " ..
    "还能让少年变老？\""
askPasswordDoor(63, 63, timePrompt, {"time"})

local fishPrompt =
    "\"活着却不呼吸，冰冷如同死亡，从不口渴却总在饮，身披甲胄却不作响， " ..
    "永远前行却从不步行，嘴总在动却从不说话。我是什么？ \""
askPasswordDoor(64, 64, fishPrompt, {"fish", "a fish", "鱼", "一条鱼"})
