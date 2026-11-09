-- The Pit
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {},
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
    [376] = { kind = "enter_house", source = "opcode", houseId = 1070, targetName = "旅舍" },
    [415] = { kind = "obelisk", source = "title" },
    [417] = { kind = "enter_house", source = "opcode", houseId = 53, targetName = "恶念之盾" },
    [419] = { kind = "enter_house", source = "opcode", houseId = 13, targetName = "怨恨之刃" },
    [421] = { kind = "enter_house", source = "opcode", houseId = 290, targetName = "冻结资产" },
    [423] = { kind = "enter_house", source = "opcode", houseId = 91, targetName = "诡异之力" },
    [425] = { kind = "enter_house", source = "opcode", houseId = 149, targetName = "土系至上行会" },
    [427] = { kind = "enter_house", source = "opcode", houseId = 178, targetName = "夜之行会" },
    [429] = { kind = "enter_house", source = "opcode", houseId = 123, targetName = "地狱诱惑" },
    [431] = { kind = "enter_house", source = "opcode", houseId = 207, targetName = "午夜之厅" },
    [433] = { kind = "enter_house", source = "opcode", houseId = 1575, targetName = "毁灭之火" },
    [435] = { kind = "enter_house", source = "opcode", houseId = 246, targetName = "吸血鬼酒吧" },
    [438] = { kind = "enter_house", source = "opcode", houseId = 1080, targetName = "旅舍" },
    [439] = { kind = "enter_house", source = "opcode", houseId = 1078, targetName = "旅舍" },
    [440] = { kind = "enter_house", source = "opcode", houseId = 1071, targetName = "旅舍" },
    [441] = { kind = "enter_house", source = "opcode", houseId = 1079, targetName = "旅舍" },
    [442] = { kind = "enter_house", source = "opcode", houseId = 1072, targetName = "安伯普尔之家" },
    [443] = { kind = "enter_house", source = "opcode", houseId = 1074, targetName = "沙之宅邸" },
    [444] = { kind = "enter_house", source = "opcode", houseId = 1073, targetName = "暗沼宅邸" },
    [445] = { kind = "enter_house", source = "opcode", houseId = 1075, targetName = "旅舍" },
    [446] = { kind = "enter_house", source = "opcode", houseId = 1081, targetName = "旅舍" },
    [447] = { kind = "enter_house", source = "opcode", houseId = 1076, targetName = "旅舍" },
    [448] = { kind = "enter_house", source = "opcode", houseId = 1077 },
    [452] = { kind = "teleport", source = "heuristic" },
    [453] = { kind = "teleport", source = "heuristic" },
    [454] = { kind = "teleport", source = "heuristic" },
    [455] = { kind = "teleport", source = "heuristic" },
    [456] = { kind = "teleport", source = "heuristic" },
    [457] = { kind = "teleport", source = "heuristic" },
    [501] = { kind = "passage", source = "opcode", targetMap = "t04.blv", targetName = "深渊大厅" },
    [502] = { kind = "enter_house", source = "opcode", houseId = 317, targetName = "黑暗神殿" },
    [503] = { kind = "passage", source = "opcode", targetMap = "7d10.blv", targetName = "培育区" },
    [504] = { kind = "passage", source = "opcode", targetMap = "d03.blv", targetName = "暮光城堡" },
    [505] = { kind = "passage", source = "opcode", targetMap = "d03.blv", targetName = "暮光城堡" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if not IsQBitSet(QBit(723)) then -- TP Buff The Pit
        SetQBit(QBit(723)) -- TP Buff The Pit
    end
    if IsQBitSet(QBit(612)) then -- Chose the path of Dark
        if IsQBitSet(QBit(782)) then -- Your friends are mad at you
            if IsAtLeast(Counter(10), 720) then
                ClearQBit(QBit(782)) -- Your friends are mad at you
                SetValue(MapVar(6), 0)
                evt.SetMonGroupBit(56, MonsterBits.Hostile, 0) -- actor group 56: peasant, spawn Lich A, spawn Necromancer A, spawn Vampire A
                evt.SetMonGroupBit(55, MonsterBits.Hostile, 0)
                return
            end
            SetValue(MapVar(6), 2)
            evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: peasant, spawn Lich A, spawn Necromancer A, spawn Vampire A
            evt.SetMonGroupBit(55, MonsterBits.Hostile, 1)
            return
        elseif IsAtLeast(MapVar(6), 2) then
            evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: peasant, spawn Lich A, spawn Necromancer A, spawn Vampire A
            evt.SetMonGroupBit(55, MonsterBits.Hostile, 1)
            return
        else
            return
        end
        return
    end
    SetValue(MapVar(6), 2)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: peasant, spawn Lich A, spawn Necromancer A, spawn Vampire A
    evt.SetMonGroupBit(55, MonsterBits.Hostile, 1)
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
    if IsQBitSet(QBit(621)) then -- Assassinate Tolberti in his house in the Pit and return his control cube to Robert the Wise in Celeste.
        evt.MoveToMap(-15360, 3808, 129, 270, 0, 0, 0, 0, "mdt15.blv") -- The Small House
    elseif IsQBitSet(QBit(622)) then -- Finished Necro Proving Grounds
        if IsQBitSet(QBit(623)) then -- Finished Necro Task 2 - Temple of Light
            if IsQBitSet(QBit(624)) then -- Finished Necro Task 3 - Soul Jars
                if IsQBitSet(QBit(625)) then -- Finished Necro Task 4 - Clanker's Lab
                    if IsQBitSet(QBit(630)) then -- Killed Good MM3 Person
                        evt.EnterHouse(1070) -- Hostel
                        return
                    elseif IsQBitSet(QBit(710)) then -- Archibald in Clankers Lab now
                        evt.EnterHouse(1070) -- Hostel
                        return
                    else
                        evt.SetNPCGreeting(426, 248) -- Tolberti greeting: Now that you've finished my associate's tasks, I am ready to give you a much more dangerous, but very critical mission. Our plans hinge on your success. I know I can count on you.Oh, I almost forgot to mention! Archibald is no longer in charge. He left in a huff after we disagreed with how we should proceed with our plans. He's moved into Clanker's laboratory now, and taken some of the less...motivated necromancers with him. No loss there. Kastore is King of the Pit, now.
                        SetQBit(QBit(710)) -- Archibald in Clankers Lab now
                        evt.SetNPCGreeting(427, 250) -- Archibald Ironfist greeting: Hello, my friends�you are still my friends, aren't you? My "advisors", my "lieutenants" [Archibald spits out the words], have the Pit, and their dreams of conquest. I have come to realize they did not need me, nor did they want to study our art. They want a world where there are no Kings, no loyalty, and no honor. Just them and their slaves. Well, they can have it! After the soul jars were stolen, my lieutenants just shrugged, as though it was wagon wheels, or chickens that went missing, not the keys to immortality! We were so close to devising a way to keep the body from decay after the Ritual was performed! Now this--a setback that will cost decades.So, we have moved here--thanks to you--to continue our studies. For what it's worth, I have renounced my claim to the throne of Enroth. I don't think anyone believes me, but that shouldn't matter. This island is quite secure, and we have fixed the breech that let you infiltrate it in the first place.
                        evt.MoveNPC(427, 0) -- Archibald Ironfist -> removed
                        evt.MoveNPC(423, 221) -- Kastore -> 王座大厅
                        evt.SetNPCTopic(423, 4, 1012) -- Kastore topic 4: Dark Magic Grandmaster
                        evt.SetNPCTopic(427, 1, 0) -- Archibald Ironfist topic 1 cleared
                        evt.EnterHouse(1070) -- Hostel
                        return
                    end
                    return
                end
            end
        end
        evt.EnterHouse(1070) -- Hostel
        return
    else
        evt.EnterHouse(1070) -- Hostel
        return
    end
end, "旅舍")

RegisterEvent(415, "方尖碑", function()
    if IsQBitSet(QBit(682)) then return end -- Visited Obelisk in Area 8
    evt.StatusText("srhtfnut")
    SetAutonote(315) -- Obelisk message #7: srhtfnut
    evt.ForPlayer(Players.All)
    SetQBit(QBit(682)) -- Visited Obelisk in Area 8
end, "方尖碑")

RegisterEvent(416, "房屋", nil, "房屋")

RegisterEvent(417, "恶念之盾", function()
    evt.EnterHouse(53) -- Shields of Malice
end, "恶念之盾")

RegisterEvent(418, "恶念之盾", nil, "恶念之盾")

RegisterEvent(419, "怨恨之刃", function()
    evt.EnterHouse(13) -- Blades of Spite
end, "怨恨之刃")

RegisterEvent(420, "怨恨之刃", nil, "怨恨之刃")

RegisterEvent(421, "冻结资产", function()
    evt.EnterHouse(290) -- Frozen Assets
end, "冻结资产")

RegisterEvent(422, "冻结资产", nil, "冻结资产")

RegisterEvent(423, "诡异之力", function()
    evt.EnterHouse(91) -- Eldritch Influences
end, "诡异之力")

RegisterEvent(424, "诡异之力", nil, "诡异之力")

RegisterEvent(425, "土系至上行会", function()
    evt.EnterHouse(149) -- Paramount Guild of Earth
end, "土系至上行会")

RegisterEvent(426, "土系至上行会", nil, "土系至上行会")

RegisterEvent(427, "夜之行会", function()
    evt.EnterHouse(178) -- Guild of Night
end, "夜之行会")

RegisterEvent(428, "夜之行会", nil, "夜之行会")

RegisterEvent(429, "地狱诱惑", function()
    evt.EnterHouse(123) -- Infernal Temptations
end, "地狱诱惑")

RegisterEvent(430, "地狱诱惑", nil, "地狱诱惑")

RegisterEvent(431, "午夜之厅", function()
    evt.EnterHouse(207) -- Hall of Midnight
end, "午夜之厅")

RegisterEvent(432, "午夜之厅", nil, "午夜之厅")

RegisterEvent(433, "毁灭之火", function()
    evt.EnterHouse(1575) -- Perdition's Flame
end, "毁灭之火")

RegisterEvent(434, "毁灭之火", nil, "毁灭之火")

RegisterEvent(435, "吸血鬼酒吧", function()
    evt.EnterHouse(246) -- The Vampyre Lounge
end, "吸血鬼酒吧")

RegisterEvent(436, "吸血鬼酒吧", nil, "吸血鬼酒吧")

RegisterEvent(438, "旅舍", function()
    evt.EnterHouse(1080) -- Hostel
end, "旅舍")

RegisterEvent(439, "旅舍", function()
    evt.EnterHouse(1078) -- Hostel
end, "旅舍")

RegisterEvent(440, "旅舍", function()
    evt.EnterHouse(1071) -- Hostel
end, "旅舍")

RegisterEvent(441, "旅舍", function()
    if not IsQBitSet(QBit(710)) then -- Archibald in Clankers Lab now
        evt.EnterHouse(1079) -- Hostel
        return
    end
    evt.StatusText("这扇门锁着")
    evt.FaceAnimation(FaceAnimation.DoorLocked)
end, "旅舍")

RegisterEvent(442, "安伯普尔之家", function()
    evt.EnterHouse(1072) -- House Umberpool
end, "安伯普尔之家")

RegisterEvent(443, "沙之宅邸", function()
    evt.EnterHouse(1074) -- Sand Residence
end, "沙之宅邸")

RegisterEvent(444, "暗沼宅邸", function()
    evt.EnterHouse(1073) -- Darkenmore Residence
end, "暗沼宅邸")

RegisterEvent(445, "旅舍", function()
    evt.EnterHouse(1075) -- Hostel
end, "旅舍")

RegisterEvent(446, "旅舍", function()
    evt.EnterHouse(1081) -- Hostel
end, "旅舍")

RegisterEvent(447, "旅舍", function()
    evt.EnterHouse(1076) -- Hostel
end, "旅舍")

RegisterEvent(448, nil, function()
    evt.EnterHouse(1077)
end)

RegisterEvent(452, nil, function()
    evt.MoveToMap(-1873, -8516, 64, 1536, 0, 0, 0, 0)
end)

RegisterEvent(453, nil, function()
    evt.MoveToMap(-1824, -7136, 33, 512, 0, 0, 0, 0)
end)

RegisterEvent(454, nil, function()
    evt.MoveToMap(-26354, -10440, 689, 1664, 0, 0, 0, 0)
end)

RegisterEvent(455, nil, function()
    evt.MoveToMap(-2854, -23128, 625, 541, 0, 0, 0, 0)
end)

RegisterEvent(456, nil, function()
    evt.MoveToMap(6196, -10401, -362, 832, 0, 0, 0, 0)
end)

RegisterEvent(457, nil, function()
    evt.MoveToMap(9683, -5602, -19, 1600, 0, 0, 0, 0)
end)

RegisterEvent(501, "离开深渊", function()
    evt.MoveToMap(498, 16198, 161, 1536, 0, 0, 0, 0, "t04.blv") -- The Hall of the Pit
end, "离开深渊")

RegisterEvent(502, "黑暗神殿", function()
    evt.EnterHouse(317) -- Temple of Dark
end, "黑暗神殿")

RegisterEvent(503, "进入繁殖区", function()
    evt.MoveToMap(-320, -1216, 1, 0, 0, 0, 146, 1, "7d10.blv") -- The Breeding Zone
end, "进入繁殖区")

RegisterEvent(504, "进入幽暗城堡", function()
    evt.MoveToMap(96, 3424, 1, 1088, 0, 0, 129, 1, "d03.blv") -- Castle Gloaming
end, "进入幽暗城堡")

RegisterEvent(505, "进入幽暗城堡", function()
    evt.MoveToMap(874, -261, -377, 1024, 0, 0, 129, 1, "d03.blv") -- Castle Gloaming
end, "进入幽暗城堡")

