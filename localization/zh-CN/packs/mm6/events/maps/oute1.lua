-- Eel Infested Waters
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {65535},
    onLeave = {},
    openedChestIds = {
    [58] = {1},
    [59] = {2},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 108, targetName = "小巧护符店" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 328, targetName = "阿卜杜勒折扣神庙" },
    [5] = { kind = "enter_house", source = "opcode", houseId = 262, targetName = "箭矢飞翔" },
    [7] = { kind = "enter_house", source = "opcode", houseId = 263, targetName = "一石之遥" },
    [9] = { kind = "enter_house", source = "opcode", houseId = 504, targetName = "虎鲨旅店" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 503, targetName = "卷云" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1226, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1241, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1256, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1271, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1286, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1301, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1314, targetName = "房屋" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1326, targetName = "房屋" },
    [58] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [59] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 419, targetName = "阿拉莫斯城堡" },
    [100] = { kind = "fountain", source = "title" },
    [101] = { kind = "fountain", source = "title" },
    [226] = { kind = "generic_event", source = "opcode" },
    [227] = { kind = "obelisk", source = "title" },
    [261] = { kind = "shrine", source = "title" },
    },
    textureNames = {},
    spriteNames = {"swrdstx"},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(2, "小小护符", function()
    evt.EnterHouse(108) -- Little Charms
end, "小小护符")

RegisterEvent(3, "小小护符", nil, "小小护符")

RegisterEvent(4, "阿卜杜勒折扣礼拜堂", function()
    evt.EnterHouse(328) -- Abdul's Discount House of Worship
end, "阿卜杜勒折扣礼拜堂")

RegisterEvent(5, "一箭之遥", function()
    evt.EnterHouse(262) -- An Arrow's Flight
end, "一箭之遥")

RegisterEvent(6, "一箭之遥", nil, "一箭之遥")

RegisterEvent(7, "一石之遥", function()
    evt.EnterHouse(263) -- A Stone's Throw
end, "一石之遥")

RegisterEvent(8, "一石之遥", nil, "一石之遥")

RegisterEvent(9, "虎鲨号", function()
    evt.EnterHouse(504) -- Tigershark
end, "虎鲨号")

RegisterEvent(10, "卷云号", function()
    evt.EnterHouse(503) -- Cirrus
end, "卷云号")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1226) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1241) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1256) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1271) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1286) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1301) -- House
end, "房屋")

RegisterEvent(56, "房屋", function()
    evt.EnterHouse(1314) -- House
end, "房屋")

RegisterEvent(57, "房屋", function()
    evt.EnterHouse(1326) -- House
end, "房屋")

RegisterEvent(58, nil, function()
    evt.OpenChest(1)
end)

RegisterEvent(59, nil, function()
    evt.OpenChest(2)
end)

RegisterEvent(90, nil, function()
    evt.MoveToMap(-2921, 13139, 225, 1536, 0, 0, 419, 1, "cd1.blv") -- Castle Alamos
end)

RegisterEvent(100, "饮用喷泉", function()
    if not IsAtLeast(FireResistanceBonus, 20) then
        SetValue(FireResistanceBonus, 20)
        SetValue(AirResistanceBonus, 20)
        SetValue(WaterResistanceBonus, 20)
        SetValue(EarthResistanceBonus, 20)
        evt.StatusText("元素抗性+20（临时）。")
        SetAutonote(405) -- 20 Points of temporary fire, electricity, cold, and poison resistance from the southwest fountain in the Eel Infested Waters.
        return
    end
    evt.StatusText("神清气爽")
end, "饮用喷泉")

RegisterEvent(101, "饮用喷泉", function()
    if not IsAtLeast(WaterResistanceBonus, 20) then
        SetValue(WaterResistanceBonus, 20)
        evt.StatusText("魔法抗性+20（临时）。")
        SetAutonote(406) -- 20 Points of temporary magic resistance from the southeast fountain in the Eel Infested Waters.
        return
    end
    evt.StatusText("神清气爽")
end, "饮用喷泉")

RegisterEvent(226, nil, function()
    if IsQBitSet(QBit(1337)) then -- NPC
        return
    end
    if not IsAtLeast(ActualMight, 200) then
        evt.FaceExpression(51)
        evt.StatusText("剑纹丝不动！")
        return
    end
    SetQBit(QBit(1337)) -- NPC
    AddValue(InventoryItem(2023), 2023) -- Excalibur
    evt.SetSprite(99, 1, "swrdstx")
end)

RegisterEvent(227, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1396)) -- NPC
        SetAutonote(454) -- Obelisk Message # 13: oon_htfdorstusl_
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                           oon_htfdorstusl_")
    evt._PressAnyKey(227, 2)
end, "方尖碑")

RegisterEvent(261, "毒药圣坛", function()
    if not IsAtLeast(MonthIs, 10) then
        evt.StatusText("你在神龛前祈祷。")
        return
    end
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1241)) then -- NPC
            SetQBit(QBit(1241)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(EarthResistance, 10)
            evt.StatusText("毒系抗性+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(EarthResistance, 3)
        evt.StatusText("毒系抗性+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "剧毒圣坛")

RegisterEvent(65535, "", function()
    if not IsQBitSet(QBit(1337)) then return end -- NPC
    evt.SetSprite(99, 1, "swrdstx")
end)

