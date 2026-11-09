-- Celeste
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1, 377},
    onLeave = {378},
    openedChestIds = {
    [176] = {1},
    [177] = {2},
    [178] = {3},
    [179] = {4},
    [180] = {5},
    [181] = {6},
    [182] = {7},
    [183] = {8},
    [184] = {9},
    [185] = {10},
    [186] = {11},
    [187] = {12},
    [188] = {13},
    [189] = {14},
    [190] = {15},
    [191] = {16},
    [192] = {17},
    [193] = {18},
    [194] = {19},
    [195] = {0},
    },
    contextActions = {
    [3] = { kind = "open_door", source = "opcode" },
    [4] = { kind = "open_door", source = "opcode" },
    [5] = { kind = "open_door", source = "opcode" },
    [176] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [177] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [178] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [179] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [180] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [181] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [182] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [183] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [184] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [185] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [186] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [187] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [188] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [189] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [190] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [191] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [192] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [193] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [194] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [195] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [376] = { kind = "enter_house", source = "opcode", houseId = 1065, targetName = "旅舍" },
    [415] = { kind = "obelisk", source = "title" },
    [417] = { kind = "enter_house", source = "opcode", houseId = 1059, targetName = "迪瓦恩之家" },
    [418] = { kind = "enter_house", source = "opcode", houseId = 1060, targetName = "晨星宅邸" },
    [419] = { kind = "enter_house", source = "opcode", houseId = 1061, targetName = "冬明之家" },
    [420] = { kind = "enter_house", source = "opcode", houseId = 1062, targetName = "旅舍" },
    [421] = { kind = "enter_house", source = "opcode", houseId = 1063, targetName = "旅舍" },
    [422] = { kind = "enter_house", source = "opcode", houseId = 1064, targetName = "旅舍" },
    [423] = { kind = "enter_house", source = "opcode", houseId = 1067, targetName = "拉米兹宅邸" },
    [424] = { kind = "enter_house", source = "opcode", houseId = 1066, targetName = "塔伦特宅邸" },
    [426] = { kind = "enter_house", source = "opcode", houseId = 1068, targetName = "旅舍" },
    [427] = { kind = "enter_house", source = "opcode", houseId = 1069, targetName = "旅舍" },
    [429] = { kind = "enter_house", source = "opcode", houseId = 12, targetName = "神圣之剑" },
    [431] = { kind = "enter_house", source = "opcode", houseId = 52, targetName = "荣誉盔甲" },
    [433] = { kind = "enter_house", source = "opcode", houseId = 1574, targetName = "荣誉试炼" },
    [435] = { kind = "enter_house", source = "opcode", houseId = 245, targetName = "祝福佳酿" },
    [437] = { kind = "enter_house", source = "opcode", houseId = 289, targetName = "物资财富" },
    [439] = { kind = "enter_house", source = "opcode", houseId = 122, targetName = "信仰之瓶" },
    [441] = { kind = "enter_house", source = "opcode", houseId = 137, targetName = "空气至上行会" },
    [443] = { kind = "enter_house", source = "opcode", houseId = 172, targetName = "开悟行会" },
    [445] = { kind = "enter_house", source = "opcode", houseId = 90, targetName = "秘学珍宝" },
    [447] = { kind = "enter_house", source = "opcode", houseId = 206, targetName = "黎明之厅" },
    [451] = { kind = "teleport", source = "heuristic" },
    [452] = { kind = "generic_event", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out06.odm", targetName = "布拉卡达沙漠" },
    [502] = { kind = "passage", source = "opcode", targetMap = "7d11.blv", targetName = "迷雾之墙" },
    [503] = { kind = "passage", source = "opcode", targetMap = "7d30.blv", targetName = "微光城堡" },
    [504] = { kind = "enter_house", source = "opcode", houseId = 316, targetName = "光明神殿" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 452, triggerStep = 11, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 1, startMinute = 0, startSecond = 0 },
    },
})

RegisterEvent(1, nil, function()
    SetQBit(QBit(722)) -- TP Buff Celeste
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        if IsQBitSet(QBit(782)) then -- Your friends are mad at you
            if IsAtLeast(Counter(10), 720) then
                ClearQBit(QBit(782)) -- Your friends are mad at you
                SetValue(MapVar(6), 0)
                evt.SetMonGroupBit(56, MonsterBits.Hostile, 0)
                evt.SetMonGroupBit(55, MonsterBits.Hostile, 0) -- actor group 55: Angel Lord, Wizard
                return
            end
            SetValue(MapVar(6), 2)
            evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
            evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Angel Lord, Wizard
            return
        elseif IsAtLeast(MapVar(6), 2) then
            evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
            evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Angel Lord, Wizard
            return
        else
            return
        end
        return
    end
    SetValue(MapVar(6), 2)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
    evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Angel Lord, Wizard
end)

RegisterEvent(3, nil, function()
    evt.SetDoorState(5, DoorAction.Trigger)
end)

RegisterEvent(4, nil, function()
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(2, DoorAction.Trigger)
end)

RegisterEvent(5, nil, function()
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(4, DoorAction.Trigger)
end)

RegisterEvent(176, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(177, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(178, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(179, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(180, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(181, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(182, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(183, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(184, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(185, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(186, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(187, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(188, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(189, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(190, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(191, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(192, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(193, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(194, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(195, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(376, "旅舍", function()
    if IsQBitSet(QBit(639)) then -- Assassinate Robert the Wise in his house in Celeste and return to Tolberti in the Pit.
        evt.MoveToMap(0, 3808, 129, 270, 0, 0, 0, 0, "mdt15.blv") -- The Small House
    elseif IsQBitSet(QBit(626)) then -- Finished Wizard Proving Grounds
        if IsQBitSet(QBit(627)) then -- Finished Wizard Task 2 - Temple of Dark
            if IsQBitSet(QBit(628)) then -- Finished Wizard Task 3 - Wine Cellar
                if IsQBitSet(QBit(629)) then -- Finished Wizard Task 4 - Soul Jars
                    if IsQBitSet(QBit(631)) then -- Killed Evil MM3 Person
                        evt.MoveNPC(419, 220) -- Resurectra -> 王座大厅
                        evt.EnterHouse(1065) -- Hostel
                        return
                    elseif IsQBitSet(QBit(710)) then -- Archibald in Clankers Lab now
                        evt.EnterHouse(1065) -- Hostel
                        return
                    else
                        evt.SetNPCGreeting(422, 236) -- Robert the Wise greeting: You've finished their missions. Good. Our conflict with the Necromancers is rapidly coming to a conclusion. I have a dangerous, but critical mission for you. The future of your…er, our world depends on your success.
                        SetQBit(QBit(710)) -- Archibald in Clankers Lab now
                        evt.EnterHouse(1065) -- Hostel
                        return
                    end
                    return
                end
            end
        end
        evt.EnterHouse(1065) -- Hostel
        return
    else
        evt.EnterHouse(1065) -- Hostel
        return
    end
end, "旅舍")

RegisterEvent(377, nil, function()
    if IsQBitSet(QBit(533)) then -- Go to the Celestial Court in Celeste and kill Lady Eleanor Carmine. Return with proof to Seknit Undershadow in the Deyja Moors.
        evt.SetMonGroupBit(52, MonsterBits.Invisible, 0)
        evt.SetMonGroupBit(52, MonsterBits.Hostile, 1)
        SetValue(MapVar(2), 1)
    end
end)

RegisterEvent(378, nil, function()
    if not IsAtLeast(MapVar(2), 1) then return end
    if evt.CheckMonstersKilled(ActorKillCheck.Group, 52, 0, false) then -- actor group 52; all matching actors defeated
        SetQBit(QBit(725)) -- Dagger - I lost it
    end
end)

RegisterEvent(415, "方尖碑", function()
    if IsQBitSet(QBit(681)) then return end -- Visited Obelisk in Area 7
    evt.StatusText("eut__i_n")
    SetAutonote(314) -- Obelisk message #6: eut__i_n
    SetQBit(QBit(681)) -- Visited Obelisk in Area 7
end, "方尖碑")

RegisterEvent(416, "房屋", nil, "房屋")

RegisterEvent(417, "迪瓦恩之家", function()
    evt.EnterHouse(1059) -- House Devine
end, "迪瓦恩之家")

RegisterEvent(418, "晨星宅邸", function()
    evt.EnterHouse(1060) -- Morningstar Residence
end, "晨星宅邸")

RegisterEvent(419, "冬明之家", function()
    evt.EnterHouse(1061) -- House Winterbright
end, "冬明之家")

RegisterEvent(420, "旅舍", function()
    if not IsQBitSet(QBit(631)) then -- Killed Evil MM3 Person
        evt.EnterHouse(1062) -- Hostel
        return
    end
    evt.StatusText("这扇门锁着")
    evt.FaceAnimation(FaceAnimation.DoorLocked)
end, "旅舍")

RegisterEvent(421, "旅舍", function()
    evt.EnterHouse(1063) -- Hostel
end, "旅舍")

RegisterEvent(422, "旅舍", function()
    evt.EnterHouse(1064) -- Hostel
end, "旅舍")

RegisterEvent(423, "拉米兹宅邸", function()
    evt.EnterHouse(1067) -- Ramiez Residence
end, "拉米兹宅邸")

RegisterEvent(424, "塔伦特宅邸", function()
    evt.EnterHouse(1066) -- Tarent Residence
end, "塔伦特宅邸")

RegisterEvent(426, "旅舍", function()
    evt.EnterHouse(1068) -- Hostel
end, "旅舍")

RegisterEvent(427, "旅舍", function()
    evt.EnterHouse(1069) -- Hostel
end, "旅舍")

RegisterEvent(428, "神圣之剑", nil, "神圣之剑")

RegisterEvent(429, "神圣之剑", function()
    evt.EnterHouse(12) -- The Hallowed Sword
end, "神圣之剑")

RegisterEvent(430, "荣誉盔甲", nil, "荣誉盔甲")

RegisterEvent(431, "荣誉盔甲", function()
    evt.EnterHouse(52) -- Armor of Honor
end, "荣誉盔甲")

RegisterEvent(432, "荣誉试炼", nil, "荣誉试炼")

RegisterEvent(433, "荣誉试炼", function()
    evt.EnterHouse(1574) -- Trial of Honor
end, "荣誉试炼")

RegisterEvent(434, "祝福佳酿", nil, "祝福佳酿")

RegisterEvent(435, "祝福佳酿", function()
    evt.EnterHouse(245) -- The Blessed Brew
end, "祝福佳酿")

RegisterEvent(436, "物资财富", nil, "物资财富")

RegisterEvent(437, "物资财富", function()
    evt.EnterHouse(289) -- Material Wealth
end, "物资财富")

RegisterEvent(438, "信仰之瓶", nil, "信仰之瓶")

RegisterEvent(439, "信仰之瓶", function()
    evt.EnterHouse(122) -- Phials of Faith
end, "信仰之瓶")

RegisterEvent(440, "空气至上行会", nil, "空气至上行会")

RegisterEvent(441, "空气至上行会", function()
    evt.EnterHouse(137) -- Paramount Guild of Air
end, "空气至上行会")

RegisterEvent(442, "开悟行会", nil, "开悟行会")

RegisterEvent(443, "开悟行会", function()
    evt.EnterHouse(172) -- Guild of Enlightenment
end, "开悟行会")

RegisterEvent(444, "秘学珍宝", nil, "秘学珍宝")

RegisterEvent(445, "秘学珍宝", function()
    evt.EnterHouse(90) -- Esoteric Indulgences
end, "秘学珍宝")

RegisterEvent(446, "黎明之厅", nil, "黎明之厅")

RegisterEvent(447, "黎明之厅", function()
    evt.EnterHouse(206) -- Hall of Dawn
end, "黎明之厅")

RegisterEvent(451, nil, function()
    local randomStep = PickRandomOption(451, 1, {1, 2, 3, 4, 5, 6})
    if randomStep == 1 then
        evt.MoveToMap(8146, 4379, 3700, 0, 0, 0, 0, 0)
        evt.MoveToMap(-2815, 1288, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-11883, 8667, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-22231, 13145, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-12770, 18344, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
    elseif randomStep == 2 then
        evt.MoveToMap(-2815, 1288, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-11883, 8667, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-22231, 13145, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-12770, 18344, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
    elseif randomStep == 3 then
        evt.MoveToMap(-11883, 8667, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-22231, 13145, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-12770, 18344, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
    elseif randomStep == 4 then
        evt.MoveToMap(-22231, 13145, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
        evt.MoveToMap(-12770, 18344, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
    elseif randomStep == 5 then
        evt.MoveToMap(-12770, 18344, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
    end
    evt.MoveToMap(9185, 18564, 3700, 0, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
end)

RegisterEvent(452, "喝一口", function()
    if IsPlayerBitSet(PlayerBit(30)) then return end
    AddValue(MightBonus, 25)
    AddValue(IntellectBonus, 25)
    AddValue(PersonalityBonus, 25)
    AddValue(EnduranceBonus, 25)
    AddValue(AccuracyBonus, 25)
    AddValue(SpeedBonus, 25)
    AddValue(LuckBonus, 25)
    evt.StatusText("所有属性+25（临时）")
    SetPlayerBit(PlayerBit(30))
end, "喝一口")

RegisterEvent(501, "离开赛勒斯提", function()
    evt.MoveToMap(-9718, 10097, 2449, 1536, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
end, "离开赛勒斯提")

RegisterEvent(502, "进入迷雾之墙", function()
    evt.MoveToMap(-896, -4717, 161, 512, 0, 0, 144, 1, "7d11.blv") -- The Walls of Mist
end, "进入迷雾之墙")

RegisterEvent(503, "进入柔光城堡", function()
    evt.MoveToMap(64, -640, 1, 512, 0, 0, 130, 1, "7d30.blv") -- Castle Lambent
end, "进入柔光城堡")

RegisterEvent(504, "光明神殿", function()
    evt.EnterHouse(316) -- Temple of Light
end, "光明神殿")

RegisterEvent(65535, "", function()
    evt.ForPlayer(Players.All)
    ClearPlayerBit(PlayerBit(30))
end)

