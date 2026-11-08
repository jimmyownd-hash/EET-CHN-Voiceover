-- Kriegspire
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {151},
    onLeave = {},
    openedChestIds = {
    [75] = {1},
    [76] = {2},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 35, targetName = "骑士乐园" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 73, targetName = "盔甲工坊" },
    [6] = { kind = "enter_house", source = "opcode", houseId = 104, targetName = "奇异附魔" },
    [8] = { kind = "enter_house", source = "opcode", houseId = 477, targetName = "国王大道" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 1591, targetName = "孤树训练场" },
    [12] = { kind = "enter_house", source = "opcode", houseId = 279, targetName = "破碎诺言" },
    [14] = { kind = "enter_house", source = "opcode", houseId = 1451, targetName = "隐士小屋" },
    [40] = { kind = "enter_house", source = "opcode", houseId = 1248, targetName = "房屋" },
    [41] = { kind = "enter_house", source = "opcode", houseId = 1262, targetName = "房屋" },
    [42] = { kind = "enter_house", source = "opcode", houseId = 1277, targetName = "房屋" },
    [43] = { kind = "enter_house", source = "opcode", houseId = 1292, targetName = "房屋" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1219, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1234, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1249, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1263, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1278, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1293, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1306, targetName = "房屋" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1318, targetName = "房屋" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1340, targetName = "房屋" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1352, targetName = "房屋" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1363, targetName = "房屋" },
    [61] = { kind = "enter_house", source = "opcode", houseId = 1374, targetName = "房屋" },
    [62] = { kind = "enter_house", source = "opcode", houseId = 1385, targetName = "房屋" },
    [63] = { kind = "enter_house", source = "opcode", houseId = 1395, targetName = "房屋" },
    [64] = { kind = "enter_house", source = "opcode", houseId = 1405, targetName = "房屋" },
    [65] = { kind = "enter_house", source = "opcode", houseId = 1415, targetName = "房屋" },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [76] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 435, targetName = "巴之神殿上殿" },
    [91] = { kind = "enter_house", source = "opcode", houseId = 448, targetName = "阿加的实验室" },
    [92] = { kind = "enter_house", source = "opcode", houseId = 449, targetName = "龙骑士洞穴" },
    [93] = { kind = "enter_house", source = "opcode", houseId = 427, targetName = "克里格斯城堡" },
    [94] = { kind = "enter_dungeon", source = "opcode", targetMap = "zdwj02.blv", targetName = "魔鬼哨站" },
    [100] = { kind = "enter_dungeon", source = "opcode", targetMap = "cd3.blv", targetName = "克里格斯城堡" },
    [101] = { kind = "well", source = "title" },
    [102] = { kind = "well", source = "title" },
    [103] = { kind = "fountain", source = "title" },
    [104] = { kind = "fountain", source = "title" },
    [105] = { kind = "fountain", source = "title" },
    [150] = { kind = "use_pedestal", source = "title" },
    [152] = { kind = "obelisk", source = "title" },
    [261] = { kind = "shrine", source = "title" },
    [262] = { kind = "shrine", source = "title" },
    },
    textureNames = {},
    spriteNames = {"ped01"},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 101, triggerStep = 11, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 0, startMinute = 0, startSecond = 1 },
    },
})

RegisterEvent(2, "骑士乐园", function()
    evt.EnterHouse(35) -- Knight's Paradise
end, "骑士乐园")

RegisterEvent(3, "骑士乐园", nil, "骑士乐园")

RegisterEvent(4, "盔甲工坊", function()
    evt.EnterHouse(73) -- Armorworks
end, "盔甲工坊")

RegisterEvent(5, "盔甲工坊", nil, "盔甲工坊")

RegisterEvent(6, "奇异附魔", function()
    evt.EnterHouse(104) -- Unusual Enchantments
end, "奇异附魔")

RegisterEvent(7, "奇异附魔", nil, "奇异附魔")

RegisterEvent(8, "国王大道", function()
    evt.EnterHouse(477) -- 国王大道
end, "国王大道")

RegisterEvent(9, "国王大道", nil, "国王大道")

RegisterEvent(10, "孤树训练场", function()
    evt.EnterHouse(1591) -- Lone Tree Training
end, "孤树训练场")

RegisterEvent(11, "孤树训练场", nil, "孤树训练场")

RegisterEvent(12, "破碎诺言", function()
    evt.EnterHouse(279) -- The Broken Promise
end, "破碎诺言")

RegisterEvent(13, "破碎诺言", nil, "破碎诺言")

RegisterEvent(14, "隐士小屋", function()
    evt.EnterHouse(1451) -- Hermit's Hut
end, "隐士小屋")

RegisterEvent(40, "房屋", function()
    evt.EnterHouse(1248) -- House
end, "房屋")

RegisterEvent(41, "房屋", function()
    evt.EnterHouse(1262) -- House
end, "房屋")

RegisterEvent(42, "房屋", function()
    evt.EnterHouse(1277) -- House
end, "房屋")

RegisterEvent(43, "房屋", function()
    evt.EnterHouse(1292) -- House
end, "房屋")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1219) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1234) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1249) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1263) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1278) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1293) -- House
end, "房屋")

RegisterEvent(56, "房屋", function()
    evt.EnterHouse(1306) -- House
end, "房屋")

RegisterEvent(57, "房屋", function()
    evt.EnterHouse(1318) -- House
end, "房屋")

RegisterEvent(58, "房屋", function()
    evt.EnterHouse(1340) -- House
end, "房屋")

RegisterEvent(59, "房屋", function()
    evt.EnterHouse(1352) -- House
end, "房屋")

RegisterEvent(60, "房屋", function()
    evt.EnterHouse(1363) -- House
end, "房屋")

RegisterEvent(61, "房屋", function()
    evt.EnterHouse(1374) -- House
end, "房屋")

RegisterEvent(62, "房屋", function()
    evt.EnterHouse(1385) -- House
end, "房屋")

RegisterEvent(63, "房屋", function()
    evt.EnterHouse(1395) -- House
end, "房屋")

RegisterEvent(64, "房屋", function()
    evt.EnterHouse(1405) -- House
end, "房屋")

RegisterEvent(65, "房屋", function()
    evt.EnterHouse(1415) -- House
end, "房屋")

RegisterEvent(75, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(76, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(90, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2105) then -- Cloak of Baa
        evt.StatusText("你不是巴阿的信徒。滚开！")
        return
    end
    evt.MoveToMap(2094, -19, 177, 337, 0, 0, 435, 1, "6t7.blv") -- Superior Temple of Baa
end)

RegisterEvent(91, nil, function()
    evt.MoveToMap(2702, -2926, 1, 1024, 0, 0, 448, 1, "6d19.blv") -- Agar's Laboratory
end)

RegisterEvent(92, nil, function()
    evt.MoveToMap(-49, -42, -2, 512, 0, 0, 449, 1, "6d20.blv") -- Caves of the Dragon Riders
end)

RegisterEvent(93, nil, function()
    evt.MoveToMap(5861, 2720, 169, 0, 0, 0, 427, 1, "cd3.blv") -- Castle Kriegspire
end)

RegisterEvent(94, "恶魔巢穴", function()
    evt.MoveToMap(1893, 122, 1, 1024, 0, 0, 0, 0, "zdwj02.blv") -- Devil Outpost
end, "恶魔巢穴")

RegisterEvent(100, "饮用井水", function()
    evt.StatusText("你感到一阵异样。")
    evt.MoveToMap(12768, 4192, 512, 0, 0, 0, 0, 0, "cd3.blv") -- Castle Kriegspire
end, "饮用井水")

RegisterEvent(101, "饮用井水", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("精神焕发！")
        return
    end
    if IsAtLeast(Gold, 5000) then
        if not IsAtLeast(Gold, 5000) then
            return
        end
        SubtractValue(Gold, 5000)
        AddValue(Experience, 5000)
        SubtractValue(MapVar(2), 1)
        evt.StatusText("+5000 经验值，-5000 金币。")
        SetAutonote(434) -- 5000 Experience and minus 5000 gold from the southern well in the town of Kriegspire.
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(102, "饮用井水", function()
    if not IsAtLeast(LevelBonus, 30) then
        SetValue(LevelBonus, 30)
        evt.StatusText("+30 等级（临时）。当心！")
        SetAutonote(435) -- 30 Temporary levels from the western well in the town of Kriegspire.
        evt.SummonMonsters(3, 3, 2, -13280, 19696, 160, 0, 0) -- encounter slot 3 "BDragonFly" tier C, count 2, pos=(-13280, 19696, 160), actor group 0, no unique actor name
        evt.SummonMonsters(3, 3, 2, -13368, 18096, 160, 0, 0) -- encounter slot 3 "BDragonFly" tier C, count 2, pos=(-13368, 18096, 160), actor group 0, no unique actor name
        evt.SummonMonsters(3, 3, 2, -10976, 18152, 160, 0, 0) -- encounter slot 3 "BDragonFly" tier C, count 2, pos=(-10976, 18152, 160), actor group 0, no unique actor name
        evt.SummonMonsters(3, 3, 2, -9992, 19056, 160, 0, 0) -- encounter slot 3 "BDragonFly" tier C, count 2, pos=(-9992, 19056, 160), actor group 0, no unique actor name
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(103, "饮用喷泉", function()
    if not IsPlayerBitSet(PlayerBit(68)) then
        SetPlayerBit(PlayerBit(68))
        AddValue(FireResistance, 10)
        SetValue(MapVar(0), 0)
        evt.StatusText("+10 魔法抗性（永久）。")
        SetAutonote(436) -- 10 Points of permanent magic resistance from the fountain north of the 龙之塔 in the town of Kriegspire.
        return
    end
    SetValue(MapVar(0), 0)
end, "饮用喷泉")

RegisterEvent(104, "饮用喷泉", function()
    if not IsAtLeast(ArmorClassBonus, 40) then
        SetValue(ArmorClassBonus, 40)
        evt.StatusText("+40 护甲等级（临时）。")
        SetAutonote(437) -- 40 Points of temporary armor class from the fountain outside of Castle Kriegspire.
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用喷泉")

RegisterEvent(105, "饮用喷泉", function()
    if not IsPlayerBitSet(PlayerBit(67)) then
        SetPlayerBit(PlayerBit(67))
        AddValue(FireResistance, 5)
        AddValue(AirResistance, 5)
        AddValue(WaterResistance, 5)
        AddValue(EarthResistance, 5)
        SetValue(Eradicated, 0)
        evt.StatusText("+5 元素抗性（永久）。")
        SetAutonote(438) -- 5 Points of permanent fire, electricity, cold, and poison resistance from the fountain northwest of the Superior Temple of Baa.
        return
    end
    SetValue(Eradicated, 0)
end, "饮用喷泉")

RegisterEvent(150, "基座", function()
    if not HasItem(2071) then return end -- Bear Statuette
    RemoveItem(2071) -- Bear Statuette
    evt.SetSprite(141, 1, "ped01")
    SetQBit(QBit(1247)) -- NPC
    if not IsQBitSet(QBit(1246)) then return end -- NPC
    if not IsQBitSet(QBit(1248)) then return end -- NPC
    if not IsQBitSet(QBit(1249)) then return end -- NPC
    if IsQBitSet(QBit(1250)) then -- NPC
        evt.MoveNPC(872, 0) -- Twillen -> removed
        evt.MoveNPC(826, 1342) -- Twillen -> House
    end
end, "基座")

RegisterEvent(151, nil, function()
    if IsQBitSet(QBit(1247)) then -- NPC
        evt.SetSprite(141, 1, "ped01")
    end
end)

RegisterEvent(152, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1387)) -- NPC
        SetAutonote(445) -- Obelisk Message # 4: t_haat_lt__en_lc
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                            t_haat_lt__en_lc")
    evt._PressAnyKey(152, 2)
end, "方尖碑")

RegisterEvent(261, "寒冷圣坛", function()
    if not IsAtLeast(MonthIs, 9) then
        evt.StatusText("你在神殿祈祷。")
        return
    end
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1240)) then -- NPC
            SetQBit(QBit(1240)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(WaterResistance, 10)
            evt.StatusText("+10 寒冷抗性（永久）")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(WaterResistance, 3)
        evt.StatusText("+3 寒冷抗性（永久）")
        return
    end
    evt.StatusText("你在神殿祈祷。")
end, "寒冷圣坛")

RegisterEvent(262, "火焰神龛", function()
    if not IsAtLeast(MonthIs, 7) then
        evt.StatusText("你在神殿祈祷。")
        return
    end
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1238)) then -- NPC
            SetQBit(QBit(1238)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(FireResistance, 10)
            evt.StatusText("+10 火焰抗性（永久）")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(FireResistance, 3)
        evt.StatusText("+3 火焰抗性（永久）")
        return
    end
    evt.StatusText("你在神殿祈祷。")
end, "火焰神龛")

RegisterEvent(65535, "", function()
    SetValue(MapVar(2), 10)
end)

