-- Dragonsand
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {106},
    onLeave = {},
    openedChestIds = {
    [75] = {1},
    [76] = {2},
    [77] = {3},
    [78] = {4},
    [79] = {5},
    [108] = {6, 7},
    },
    contextActions = {
    [50] = { kind = "enter_house", source = "opcode", houseId = 1366, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1377, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1388, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1398, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1408, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1417, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1602, targetName = "帐篷" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1604, targetName = "帐篷" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1603, targetName = "帐篷" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1605, targetName = "帐篷" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1606, targetName = "帐篷" },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [76] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [77] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [78] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [79] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 420, targetName = "VARN 之墓" },
    [91] = { kind = "travel", source = "opcode", targetMap = "oute3.odm", targetName = "新索匹格" },
    [92] = { kind = "enter_dungeon", source = "opcode", targetMap = "znwc.blv", targetName = "新世界计算" },
    [100] = { kind = "fountain", source = "title" },
    [101] = { kind = "fountain", source = "title" },
    [102] = { kind = "fountain", source = "title" },
    [103] = { kind = "shrine", source = "title" },
    [105] = { kind = "use_pedestal", source = "title" },
    [107] = { kind = "obelisk", source = "title" },
    [108] = { kind = "open_chest", source = "opcode", chestIds = {6, 7} },
    },
    textureNames = {},
    spriteNames = {"ped03"},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 102, triggerStep = 8, origin = "legacy", triggerKind = "long", scheduleKind = "weekly" },
    },
})

RegisterNoOpEvent(1, "rock", "rock")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1366) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1377) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1388) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1398) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1408) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1417) -- House
end, "房屋")

RegisterEvent(56, "帐篷", function()
    evt.EnterHouse(1602) -- Tent
end, "帐篷")

RegisterEvent(57, "帐篷", function()
    evt.EnterHouse(1604) -- Tent
end, "帐篷")

RegisterEvent(58, "帐篷", function()
    evt.EnterHouse(1603) -- Tent
end, "帐篷")

RegisterEvent(59, "帐篷", function()
    evt.EnterHouse(1605) -- Tent
end, "帐篷")

RegisterEvent(60, "帐篷", function()
    evt.EnterHouse(1606) -- Tent
end, "帐篷")

RegisterEvent(75, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(76, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(77, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(78, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(79, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(90, nil, function()
    evt.MoveToMap(-9734, -19201, 772, 512, 0, 0, 420, 1, "pyramid.blv") -- Tomb of VARN
end)

RegisterEvent(91, nil, function()
    evt.MoveToMap(0, 0, 0, 0, 0, 0, 0, 0, "oute3.odm") -- 新索匹格
end)

RegisterEvent(92, nil, function()
    evt.MoveToMap(-640, 512, -416, 512, 0, 0, 0, 0, "znwc.blv") -- New World Computing
end)

RegisterEvent(100, "饮用喷泉", function()
    if not IsPlayerBitSet(PlayerBit(63)) then
        AddValue(FireResistance, 10)
        AddValue(AirResistance, 10)
        AddValue(WaterResistance, 10)
        AddValue(EarthResistance, 10)
        SetPlayerBit(PlayerBit(63))
        SetValue(MapVar(0), 0)
        evt.StatusText("元素抗性+10（永久）。")
        SetAutonote(426) -- 10 Points of permanent fire, electricity, cold, and poison resistance from the fountain on the east island in Dragonsand.
        return
    end
    SetValue(MapVar(0), 0)
end, "饮用喷泉")

RegisterEvent(101, "饮用喷泉", function()
    if not IsPlayerBitSet(PlayerBit(64)) then
        AddValue(BaseMight, 10)
        AddValue(BaseIntellect, 10)
        AddValue(BasePersonality, 10)
        AddValue(BaseEndurance, 10)
        AddValue(BaseSpeed, 10)
        AddValue(BaseAccuracy, 10)
        AddValue(BaseLuck, 10)
        SetPlayerBit(PlayerBit(64))
        SetValue(MapVar(0), 0)
        evt.StatusText("全属性+10（永久）。")
        SetAutonote(427) -- 10 Points of permanent might, accuracy, speed, endurance, personality, intellect, and luck from the fountain on the south island in Dragonsand.
        return
    end
    SetValue(MapVar(0), 0)
end, "饮用喷泉")

RegisterEvent(102, "饮用喷泉", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("神清气爽！")
        SetAutonote(428) -- 50 Hit points restored from fountain on the northwest island in Dragonsand.
        return
    end
    SubtractValue(MapVar(2), 1)
    AddValue(CurrentHealth, 50)
    evt.StatusText("生命值+50（临时）。")
    SetAutonote(428) -- 50 Hit points restored from fountain on the northwest island in Dragonsand.
end, "饮用喷泉")

RegisterEvent(103, "众神圣坛", function()
    if not IsPlayerBitSet(PlayerBit(70)) then
        AddValue(FireResistance, 20)
        AddValue(AirResistance, 20)
        AddValue(WaterResistance, 20)
        AddValue(EarthResistance, 20)
        AddValue(SpiritResistance, 20)
        AddValue(MindResistance, 20)
        AddValue(BodyResistance, 20)
        AddValue(BaseMight, 20)
        AddValue(BaseIntellect, 20)
        AddValue(BasePersonality, 20)
        AddValue(BaseEndurance, 20)
        AddValue(BaseSpeed, 20)
        AddValue(BaseAccuracy, 20)
        AddValue(BaseLuck, 20)
        SetPlayerBit(PlayerBit(70))
    end
    SetValue(MapVar(1), 0)
    evt.PlaySound(42797, 0, 0)
    evt.StatusText("所有属性+20（永久）。")
end, "诸神圣坛")

RegisterEvent(105, "基座", function()
    if HasItem(2073) then -- Eagle Statuette
        RemoveItem(2073) -- Eagle Statuette
        evt.SetSprite(321, 1, "ped03")
        SetQBit(QBit(1248)) -- NPC
        if not IsQBitSet(QBit(1247)) then return end -- NPC
        if not IsQBitSet(QBit(1246)) then return end -- NPC
        if not IsQBitSet(QBit(1249)) then return end -- NPC
        if IsQBitSet(QBit(1250)) then -- NPC
            evt.MoveNPC(872, 0) -- Twillen -> removed
            evt.MoveNPC(826, 1342) -- Twillen -> House
        end
        return
    elseif HasItem(2072) then -- Wolf Statuette
        if not IsQBitSet(QBit(1249)) then return end -- NPC
        RemoveItem(2072) -- Wolf Statuette
        evt.SetSprite(321, 1, "ped03")
        SetQBit(QBit(1248)) -- NPC
        if not IsQBitSet(QBit(1247)) then return end -- NPC
        if not IsQBitSet(QBit(1246)) then return end -- NPC
        if not IsQBitSet(QBit(1249)) then return end -- NPC
        if IsQBitSet(QBit(1250)) then -- NPC
            evt.MoveNPC(872, 0) -- Twillen -> removed
            evt.MoveNPC(826, 1342) -- Twillen -> House
        end
        return
    else
        return
    end
end, "基座")

RegisterEvent(106, nil, function()
    if IsQBitSet(QBit(1248)) then -- NPC
        evt.SetSprite(321, 1, "ped03")
    end
end)

RegisterEvent(107, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1389)) -- NPC
        SetAutonote(447) -- Obelisk Message # 6: erbthieaeuu,_o'd
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                        erbthieaeuu,_o'd")
    evt._PressAnyKey(107, 2)
end, "方尖碑")

RegisterEvent(108, "岩石", function()
    if IsAtLeast(MapVar(3), 1) then
        evt.OpenChest(6)
        if IsQBitSet(QBit(1399)) then return end -- NPC
        AddValue(Gold, 250000)
        SetValue(MapVar(3), 1)
        SetQBit(QBit(1399)) -- NPC
        return
    elseif IsQBitSet(QBit(1399)) then -- NPC
        evt.OpenChest(7)
    elseif IsQBitSet(QBit(1385)) then -- NPC
        if not IsQBitSet(QBit(1386)) then return end -- NPC
        if not IsQBitSet(QBit(1387)) then return end -- NPC
        if not IsQBitSet(QBit(1388)) then return end -- NPC
        if not IsQBitSet(QBit(1389)) then return end -- NPC
        if not IsQBitSet(QBit(1390)) then return end -- NPC
        if not IsQBitSet(QBit(1391)) then return end -- NPC
        if not IsQBitSet(QBit(1392)) then return end -- NPC
        if not IsQBitSet(QBit(1393)) then return end -- NPC
        if not IsQBitSet(QBit(1394)) then return end -- NPC
        if not IsQBitSet(QBit(1395)) then return end -- NPC
        if not IsQBitSet(QBit(1396)) then return end -- NPC
        if not IsQBitSet(QBit(1397)) then return end -- NPC
        if not IsQBitSet(QBit(1398)) then return end -- NPC
        evt.OpenChest(6)
        if IsQBitSet(QBit(1399)) then return end -- NPC
        AddValue(Gold, 250000)
        SetValue(MapVar(3), 1)
        SetQBit(QBit(1399)) -- NPC
        return
    else
        return
    end
end, "岩石")

RegisterEvent(65535, "", function()
    SetValue(MapVar(2), 20)
end)

