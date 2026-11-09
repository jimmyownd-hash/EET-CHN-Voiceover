-- Murmurwoods
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapFaceMask = 0x08000000,
    onLoad = {1, 2, 3, 4},
    onLeave = {6, 7, 8, 9, 10},
    openedChestIds = {
    [81] = {0},
    [82] = {1},
    [83] = {2},
    [84] = {3},
    [85] = {4},
    [86] = {5},
    [87] = {6},
    [88] = {7},
    [89] = {8},
    [90] = {9},
    [91] = {10},
    [92] = {11},
    [93] = {12},
    [94] = {13},
    [95] = {14},
    [96] = {15},
    [97] = {16},
    [98] = {17},
    [99] = {18},
    [100] = {19},
    },
    contextActions = {
    [11] = { kind = "enter_house", source = "opcode", houseId = 610, targetName = "鸦视宅邸" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 611, targetName = "造梦者宅邸" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 612, targetName = "雪树宅邸" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 613, targetName = "丹蒂利昂宅邸" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 614, targetName = "米斯里特宅邸" },
    [21] = { kind = "enter_house", source = "opcode", houseId = 615, targetName = "汤克宅邸" },
    [23] = { kind = "enter_house", source = "opcode", houseId = 616, targetName = "锐锋宅邸" },
    [25] = { kind = "enter_house", source = "opcode", houseId = 617, targetName = "宝石宅邸" },
    [27] = { kind = "enter_house", source = "opcode", houseId = 618, targetName = "桑普森宅邸" },
    [29] = { kind = "enter_house", source = "opcode", houseId = 701, targetName = "韦里什之家" },
    [81] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [82] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [83] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [84] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [85] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [86] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [87] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [88] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [89] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [90] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [91] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [92] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [93] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [94] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [95] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [96] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [97] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [98] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [99] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [100] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [101] = { kind = "well", source = "title" },
    [102] = { kind = "well", source = "title" },
    [103] = { kind = "well", source = "title" },
    [150] = { kind = "obelisk", source = "title" },
    [191] = { kind = "enter_house", source = "opcode", houseId = 234, targetName = "旅者休憩" },
    [201] = { kind = "enter_house", source = "opcode", houseId = 170, targetName = "光明行会" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "d22.blv", targetName = "太阳神殿" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "d23.blv", targetName = "德鲁伊石圈" },
    [503] = { kind = "travel", source = "opcode", targetMap = "elema.odm", targetName = "风元素界" },
    [504] = { kind = "enter_dungeon", source = "opcode", targetMap = "d43.blv", targetName = "食人妖古老家园" },
    },
    textureNames = {},
    spriteNames = {"0"},
    castSpellIds = {},
    timers = {
    { eventId = 451, sourceEventId = 451, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 30 },
    { eventId = 452, sourceEventId = 452, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 25 },
    },
})

RegisterEvent(1, nil, function()
    if IsQBitSet(QBit(40)) then -- Found and Rescued Cauri Blackthorne
        evt.SetSprite(20, 0, "0")
        evt.SetSprite(21, 0, "0")
        evt.SetSprite(22, 0, "0")
        evt.SetSprite(23, 0, "0")
        evt.SetSprite(24, 0, "0")
    end
    if IsQBitSet(QBit(19)) or IsQBitSet(QBit(230)) then -- Allied with Necromancers Guild. Steal Nightshade Brazier done.
        evt.SetMonGroupBit(39, MonsterBits.Hostile, 1) -- actor group 39: Cleric of the Sun
        evt.SetMonGroupBit(40, MonsterBits.Hostile, 1) -- actor group 40: Cleric of the Sun
    end
end)

RegisterNoOpEvent(2, nil)

RegisterNoOpEvent(3, nil)

RegisterNoOpEvent(4, nil)

RegisterNoOpEvent(6, nil)

RegisterNoOpEvent(7, nil)

RegisterNoOpEvent(8, nil)

RegisterNoOpEvent(9, nil)

RegisterNoOpEvent(10, nil)

RegisterEvent(11, "鸦视宅邸", function()
    evt.EnterHouse(610) -- Ravensight Residence
end, "鸦视宅邸")

RegisterEvent(12, "鸦视宅邸", nil, "鸦视宅邸")

RegisterEvent(13, "造梦者宅邸", function()
    evt.EnterHouse(611) -- Dreamwright Residence
end, "造梦者宅邸")

RegisterEvent(14, "造梦者宅邸", nil, "造梦者宅邸")

RegisterEvent(15, "雪树宅邸", function()
    evt.EnterHouse(612) -- Snowtree Residence
end, "雪树宅邸")

RegisterEvent(16, "雪树宅邸", nil, "雪树宅邸")

RegisterEvent(17, "丹蒂利昂宅邸", function()
    evt.EnterHouse(613) -- Dantillion's Residence
end, "丹蒂利昂宅邸")

RegisterEvent(18, "丹蒂利昂宅邸", nil, "丹蒂利昂宅邸")

RegisterEvent(19, "米斯里特宅邸", function()
    evt.EnterHouse(614) -- Mithrit Residence
end, "米斯里特宅邸")

RegisterEvent(20, "米斯里特宅邸", nil, "米斯里特宅邸")

RegisterEvent(21, "汤克宅邸", function()
    evt.EnterHouse(615) -- Tonk Residence
end, "汤克宅邸")

RegisterEvent(22, "汤克宅邸", nil, "汤克宅邸")

RegisterEvent(23, "锐锋宅邸", function()
    evt.EnterHouse(616) -- Keenedge Residence
end, "锐锋宅邸")

RegisterEvent(24, "锐锋宅邸", nil, "锐锋宅邸")

RegisterEvent(25, "宝石宅邸", function()
    evt.EnterHouse(617) -- Treasurestone Residence
end, "宝石宅邸")

RegisterEvent(26, "宝石宅邸", nil, "宝石宅邸")

RegisterEvent(27, "桑普森宅邸", function()
    evt.EnterHouse(618) -- Sampson Residence
end, "桑普森宅邸")

RegisterEvent(28, "桑普森宅邸", nil, "桑普森宅邸")

RegisterEvent(29, "韦里什之家", function()
    evt.EnterHouse(701) -- Verish's House
end, "韦里什之家")

RegisterEvent(30, "韦里什之家", nil, "韦里什之家")

RegisterEvent(81, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(82, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(83, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(84, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(85, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(86, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(87, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(88, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(89, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(90, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(91, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(92, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(93, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(94, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(95, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(96, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(97, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(98, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(99, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(100, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(101, "饮用井水", function()
    evt.StatusText("这水并不那么清爽")
    SetValue(PoisonedRed, 0)
    if IsAutonoteSet(224) then return end -- Well near the Temple of the Sun in the Murmurwoods is poison!
    SetAutonote(224) -- Well near the Temple of the Sun in the Murmurwoods is poison!
end, "饮用井水")

RegisterEvent(102, "饮用井水", function()
    if not IsAtLeast(BasePersonality, 16) then
        AddValue(BasePersonality, 2)
        evt.StatusText("个性+2（永久）")
        SetAutonote(226) -- Well in the Ravage Roaming region gives a permanent Endurance bonus up to an Endurance of 16.
        return
    end
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(103, "饮用井水", function()
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(131, nil, function()
    if IsQBitSet(QBit(69)) then return end -- Ancient Troll Homeland Found
    if not IsQBitSet(QBit(68)) then return end -- Find the Ancient Troll Homeland and return to Volog Sandwind in the Ironsand Desert. - Given By ? In area 4
    evt.ForPlayer(Players.All)
    if HasItem(0) then -- 0
        RemoveItem(0) -- 0
        SetQBit(QBit(69)) -- Ancient Troll Homeland Found
    end
end)

RegisterEvent(132, "雕像", function()
    evt.ForPlayer(Players.All)
    if HasItem(339) then -- Stone to Flesh
        evt.SetSprite(20, 0, "0")
        SetQBit(QBit(40)) -- Found and Rescued Cauri Blackthorne
        RemoveItem(339) -- Stone to Flesh
        SetQBit(QBit(430)) -- Roster Character In Party 31
        evt.SpeakNPC(42) -- Cauri Blackthorne
    end
end, "雕像")

RegisterEvent(133, "雕像", function()
    evt.ForPlayer(Players.All)
    if HasItem(339) then -- Stone to Flesh
        evt.SetSprite(21, 0, "0")
        RemoveItem(339) -- Stone to Flesh
        evt.SpeakNPC(46) -- Dark Elf Pilgrim
    end
end, "雕像")

RegisterEvent(134, "雕像", function()
    evt.ForPlayer(Players.All)
    if HasItem(339) then -- Stone to Flesh
        evt.SetSprite(22, 0, "0")
        RemoveItem(339) -- Stone to Flesh
        evt.SpeakNPC(46) -- Dark Elf Pilgrim
    end
end, "雕像")

RegisterEvent(135, "雕像", function()
    evt.ForPlayer(Players.All)
    if HasItem(339) then -- Stone to Flesh
        evt.SetSprite(23, 0, "0")
        RemoveItem(339) -- Stone to Flesh
        evt.SpeakNPC(46) -- Dark Elf Pilgrim
    end
end, "雕像")

RegisterEvent(136, "雕像", function()
    evt.ForPlayer(Players.All)
    if HasItem(339) then -- Stone to Flesh
        evt.SetSprite(24, 0, "0")
        RemoveItem(339) -- Stone to Flesh
        evt.SpeakNPC(46) -- Dark Elf Pilgrim
    end
end, "雕像")

RegisterEvent(150, "方尖碑", function()
    if IsQBitSet(QBit(192)) then return end -- Obelisk Area 7
    evt.StatusText("pearswhil")
    SetAutonote(13) -- Obelisk message #6: pearswhil
    SetQBit(QBit(192)) -- Obelisk Area 7
end, "方尖碑")

RegisterEvent(191, "旅者休憩", function()
    evt.EnterHouse(234) -- Traveler's Rest
end, "旅者休憩")

RegisterEvent(192, "旅者休憩", nil, "旅者休憩")

RegisterEvent(201, "光明行会", function()
    evt.EnterHouse(170) -- Guild of Light
end, "光明行会")

RegisterEvent(202, "光明行会", nil, "光明行会")

RegisterEvent(401, "太阳神殿", nil, "太阳神殿")

RegisterEvent(402, "德鲁伊石圈", nil, "德鲁伊石圈")

RegisterEvent(403, "远古巨魔巢穴", nil, "远古巨魔巢穴")

RegisterEvent(404, "天空位面之门", nil, "天空位面之门")

RegisterEvent(450, "水井", nil, "水井")

RegisterEvent(451, nil, function()
    local randomStep = PickRandomOption(451, 2, {2, 4, 6, 8, 10, 12})
    if randomStep == 2 then
        evt.PlaySound(351, 14784, 10304)
    elseif randomStep == 4 then
        evt.PlaySound(351, 17152, 5440)
    elseif randomStep == 6 then
        evt.PlaySound(351, -5696, 7040)
    elseif randomStep == 8 then
        evt.PlaySound(351, -17920, 15360)
    elseif randomStep == 10 then
        evt.PlaySound(351, -16256, -576)
    elseif randomStep == 12 then
        evt.PlaySound(351, -2880, -5248)
    end
    local randomStep = PickRandomOption(451, 15, {15, 17, 19, 21, 23, 25})
    if randomStep == 15 then
        evt.PlaySound(342, 16448, 15340)
    elseif randomStep == 17 then
        evt.PlaySound(335, 11200, 15040)
    elseif randomStep == 19 then
        evt.PlaySound(336, 1440, 6016)
    elseif randomStep == 21 then
        evt.PlaySound(337, 9728, -3584)
    elseif randomStep == 23 then
        evt.PlaySound(338, 5568, -12224)
    elseif randomStep == 25 then
        evt.PlaySound(340, 18048, -11968)
    end
end)

RegisterEvent(452, nil, function()
    local randomStep = PickRandomOption(452, 2, {2, 4, 6, 8, 10, 12})
    if randomStep == 2 then
        evt.PlaySound(343, -11392, 13248)
    elseif randomStep == 4 then
        evt.PlaySound(342, -7744, -4992)
    elseif randomStep == 6 then
        evt.PlaySound(346, -16512, -2048)
    elseif randomStep == 8 then
        evt.PlaySound(345, -11456, 10112)
    elseif randomStep == 10 then
        evt.PlaySound(339, -19136, 16000)
    elseif randomStep == 12 then
        evt.PlaySound(340, -4160, -19840)
    end
    local randomStep = PickRandomOption(452, 15, {15, 17, 19, 21, 23, 25})
    if randomStep == 15 then
        evt.PlaySound(340, 4672, 18176)
    elseif randomStep == 17 then
        evt.PlaySound(335, -4096, -12736)
    elseif randomStep == 19 then
        evt.PlaySound(336, -2816, -9088)
    elseif randomStep == 21 then
        evt.PlaySound(337, 320, -12352)
    elseif randomStep == 23 then
        evt.PlaySound(338, -896, 14976)
    elseif randomStep == 25 then
        evt.PlaySound(339, 15552, 13568)
    end
end)

RegisterEvent(454, nil, function()
    if IsQBitSet(QBit(240)) then return end -- for riki
    AddValue(InventoryItem(332), 332) -- Lloyd's Beacon
    SetQBit(QBit(240)) -- for riki
end)

RegisterEvent(455, "树", function()
    if HasItem(186) then -- Diamond
        RemoveItem(186) -- Diamond
        AddValue(InventoryItem(656), 656) -- Horseshoe
        return
    elseif HasItem(185) then -- Ruby
        RemoveItem(185) -- Ruby
        AddValue(InventoryItem(271), 271) -- Rejuvenation
        return
    elseif HasItem(184) then -- Sapphire
        RemoveItem(184) -- Sapphire
        AddValue(Gold, 2000)
        return
    elseif HasItem(183) then -- Emerald
        RemoveItem(183) -- Emerald
        AddValue(InventoryItem(655), 655) -- Green Apple
        return
    elseif HasItem(182) then -- Topaz
        RemoveItem(182) -- Topaz
        local randomStep = PickRandomOption(455, 42, {43, 45, 47, 49, 51})
        if randomStep == 43 then
            evt.GiveItem(3, ItemType.Weapon_)
        elseif randomStep == 45 then
            evt.GiveItem(3, ItemType.Armor_)
        elseif randomStep == 47 then
            evt.GiveItem(3, ItemType.Scroll_)
        elseif randomStep == 49 then
            evt.GiveItem(3, ItemType.Ring_)
        elseif randomStep == 51 then
            evt.GiveItem(3, ItemType.Misc)
        end
        return
    elseif HasItem(181) then -- Amethyst
        RemoveItem(181) -- Amethyst
        AddValue(InventoryItem(183), 183) -- Emerald
        return
    elseif HasItem(180) then -- Amber
        RemoveItem(180) -- Amber
        AddValue(InventoryItem(250), 250) -- Swift Potion
        return
    elseif HasItem(179) then -- Citrine
        RemoveItem(179) -- Citrine
        AddValue(InventoryItem(181), 181) -- Amethyst
        return
    elseif HasItem(178) then -- Iolite
        RemoveItem(178) -- Iolite
        AddValue(InventoryItem(132), 132) -- Walking Boots
        return
    elseif HasItem(177) then -- Zircon
        RemoveItem(177) -- Zircon
        AddValue(InventoryItem(179), 179) -- Citrine
        return
    else
        return
    end
end, "树")

RegisterEvent(501, "进入太阳神庙", function()
    evt.MoveToMap(-768, -768, 96, 280, 0, 0, 364, 1, "d22.blv") -- Temple of the Sun
end, "进入太阳神庙")

RegisterEvent(502, "进入德鲁伊石环", function()
    evt.MoveToMap(235, 2980, 673, 1536, 0, 0, 365, 3, "d23.blv") -- Druid Circle
end, "进入德鲁伊石环")

RegisterEvent(503, "进入空气位面", function()
    evt.MoveToMap(5376, -12240, 1133, 512, 0, 0, 347, 1, "elema.odm") -- Plane of Air
end, "进入空气位面")

RegisterEvent(504, "进入远古巨魔家园", function()
    if not IsQBitSet(QBit(69)) then -- Ancient Troll Homeland Found
        SetQBit(QBit(69)) -- Ancient Troll Homeland Found
        evt.MoveToMap(448, -224, 0, 512, 0, 0, 0, 1, "d43.blv") -- Ancient Troll Home
        return
    end
    evt.MoveToMap(448, -224, 0, 512, 0, 0, 0, 1, "d43.blv") -- Ancient Troll Home
end, "进入远古巨魔家园")

