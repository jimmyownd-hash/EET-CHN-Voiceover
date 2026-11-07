-- Paradise Valley
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [75] = {1},
    [76] = {2},
    [77] = {3},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 32, targetName = "歌吟之钢" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 75, targetName = "附魔锁甲" },
    [6] = { kind = "enter_house", source = "opcode", houseId = 109, targetName = "强力魔法店" },
    [8] = { kind = "enter_house", source = "opcode", houseId = 1586, targetName = "对练场" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 280, targetName = "最后机会" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1217, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1232, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1247, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1261, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1276, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1291, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1305, targetName = "房屋" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1317, targetName = "房屋" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1329, targetName = "房屋" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1341, targetName = "房屋" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1353, targetName = "房屋" },
    [61] = { kind = "enter_house", source = "opcode", houseId = 1364, targetName = "房屋" },
    [62] = { kind = "enter_house", source = "opcode", houseId = 1375, targetName = "房屋" },
    [63] = { kind = "enter_house", source = "opcode", houseId = 1386, targetName = "房屋" },
    [64] = { kind = "enter_house", source = "opcode", houseId = 1396, targetName = "房屋" },
    [65] = { kind = "enter_house", source = "opcode", houseId = 1406, targetName = "房屋" },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [76] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [77] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 334, targetName = "巴阿神庙" },
    [100] = { kind = "fountain", source = "title" },
    [200] = { kind = "obelisk", source = "title" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 100, triggerStep = 9, origin = "legacy", triggerKind = "long", scheduleKind = "weekly" },
    },
})

RegisterEvent(2, "鸣吟之钢", function()
    evt.EnterHouse(32) -- Singing Steel
end, "鸣吟之钢")

RegisterEvent(3, "鸣吟之钢", nil, "鸣吟之钢")

RegisterEvent(4, "附魔锁甲", function()
    evt.EnterHouse(75) -- The Enchanted Hauberk
end, "附魔锁甲")

RegisterEvent(5, "附魔锁甲", nil, "附魔锁甲")

RegisterEvent(6, "强力魔法", function()
    evt.EnterHouse(109) -- Mighty Magicks
end, "强力魔法")

RegisterEvent(7, "强力魔法", nil, "强力魔法")

RegisterEvent(8, "对练场", function()
    evt.EnterHouse(1586) -- The Sparring Ground
end, "对练场")

RegisterEvent(9, "对练场", nil, "对练场")

RegisterEvent(10, "最后机会", function()
    evt.EnterHouse(280) -- The Last Chance
end, "最后机会")

RegisterEvent(11, "最后机会", nil, "最后机会")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1217) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1232) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1247) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1261) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1276) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1291) -- House
end, "房屋")

RegisterEvent(56, "房屋", function()
    evt.EnterHouse(1305) -- House
end, "房屋")

RegisterEvent(57, "房屋", function()
    evt.EnterHouse(1317) -- House
end, "房屋")

RegisterEvent(58, "房屋", function()
    evt.EnterHouse(1329) -- House
end, "房屋")

RegisterEvent(59, "房屋", function()
    evt.EnterHouse(1341) -- House
end, "房屋")

RegisterEvent(60, "房屋", function()
    evt.EnterHouse(1353) -- House
end, "房屋")

RegisterEvent(61, "房屋", function()
    evt.EnterHouse(1364) -- House
end, "房屋")

RegisterEvent(62, "房屋", function()
    evt.EnterHouse(1375) -- House
end, "房屋")

RegisterEvent(63, "房屋", function()
    evt.EnterHouse(1386) -- House
end, "房屋")

RegisterEvent(64, "房屋", function()
    evt.EnterHouse(1396) -- House
end, "房屋")

RegisterEvent(65, "房屋", function()
    evt.EnterHouse(1406) -- House
end, "房屋")

RegisterEvent(75, "箱子", function()
    evt.OpenChest(1)
end, "宝箱")

RegisterEvent(76, "箱子", function()
    evt.OpenChest(2)
end, "宝箱")

RegisterEvent(77, "箱子", function()
    evt.OpenChest(3)
end, "宝箱")

RegisterEvent(90, "巴之神殿", function()
    evt.EnterHouse(334) -- Temple Baa
end, "巴之神殿")

RegisterEvent(100, "饮用喷泉", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("神清气爽！")
        evt.StatusText("力量+100（临时）。")
        SetAutonote(440) -- 100 Hit points and spell points from fountain in the desert in Paradise Valley.
        return
    end
    SubtractValue(MapVar(2), 1)
    AddValue(CurrentSpellPoints, 100)
    AddValue(CurrentHealth, 100)
    evt.StatusText("力量+100（临时）。")
    SetAutonote(440) -- 100 Hit points and spell points from fountain in the desert in Paradise Valley.
end, "在喷泉饮水")

RegisterEvent(200, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1385)) -- NPC
        SetAutonote(443) -- Obelisk Message # 2: nhrh_aherheatvdi
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                           nhrh_aherheatvdi")
    evt._PressAnyKey(200, 2)
end, "方尖碑")

RegisterEvent(65535, "", function()
    SetValue(MapVar(2), 10)
end)

