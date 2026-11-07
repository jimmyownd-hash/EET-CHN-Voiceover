-- Ravage Roaming
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
    [11] = { kind = "enter_house", source = "opcode", houseId = 619, targetName = "泽维乌斯宅邸" },
    [13] = { kind = "enter_house", source = "opcode", houseId = 620, targetName = "维什之家" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 621, targetName = "帆之小屋" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 622, targetName = "波尔多陋屋" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 623, targetName = "加尔维努斯之家" },
    [23] = { kind = "enter_house", source = "opcode", houseId = 674, targetName = "卡格诺商店" },
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
    [183] = { kind = "enter_house", source = "opcode", houseId = 482, targetName = "迷雾" },
    [191] = { kind = "enter_house", source = "opcode", houseId = 235, targetName = "牛眼旅馆" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "d24.blv", targetName = "巴尔萨煞巢穴" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "d25.blv", targetName = "野蛮人要塞" },
    [503] = { kind = "enter_dungeon", source = "opcode", targetMap = "d26.blv", targetName = "科尔布地穴" },
    [504] = { kind = "enter_dungeon", source = "opcode", targetMap = "d24.blv", targetName = "巴尔萨煞巢穴" },
    [505] = { kind = "enter_dungeon", source = "opcode", targetMap = "d25.blv", targetName = "野蛮人要塞" },
    [506] = { kind = "enter_dungeon", source = "opcode", targetMap = "d25.blv", targetName = "野蛮人要塞" },
    [507] = { kind = "enter_dungeon", source = "opcode", targetMap = "d25.blv", targetName = "野蛮人要塞" },
    [508] = { kind = "travel", source = "opcode", targetMap = "elemw.odm", targetName = "水之位面" },
    [509] = { kind = "enter_dungeon", source = "opcode", targetMap = "d46.blv", targetName = "伊普教堂" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 479, sourceEventId = 479, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 20 },
    },
})

RegisterNoOpEvent(1, nil)

RegisterNoOpEvent(2, nil)

RegisterNoOpEvent(3, nil)

RegisterEvent(4, nil, function()
    if IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
        evt.SetFacetBit(10, FacetBits.Invisible, 0)
        evt.SetFacetBit(10, FacetBits.Untouchable, 0)
        evt.SetFacetBit(11, FacetBits.Untouchable, 1)
        evt.SetFacetBit(11, FacetBits.Invisible, 1)
    end
end)

RegisterNoOpEvent(6, nil)

RegisterNoOpEvent(7, nil)

RegisterNoOpEvent(8, nil)

RegisterNoOpEvent(9, nil)

RegisterNoOpEvent(10, nil)

RegisterEvent(11, "泽维乌斯宅邸", function()
    evt.EnterHouse(619) -- Xevius's Residence
end, "泽维乌斯宅邸")

RegisterEvent(12, "泽维乌斯宅邸", nil, "泽维乌斯宅邸")

RegisterEvent(13, "维什之家", function()
    evt.EnterHouse(620) -- Vish's House
end, "维什之家")

RegisterEvent(14, "维什之家", nil, "维什之家")

RegisterEvent(15, "帆之小屋", function()
    evt.EnterHouse(621) -- Sail's Shack
end, "帆之小屋")

RegisterEvent(16, "帆之小屋", nil, "帆之小屋")

RegisterEvent(17, "波多小屋", function()
    evt.EnterHouse(622) -- Pordo's Hovel
end, "波多小屋")

RegisterEvent(18, "波多小屋", nil, "波多小屋")

RegisterEvent(19, "加尔维努斯之家", function()
    evt.EnterHouse(623) -- Galvinus's Home
end, "加尔维努斯之家")

RegisterEvent(20, "加尔维努斯之家", nil, "加尔维努斯之家")

RegisterEvent(23, "卡格诺商店", function()
    evt.EnterHouse(674) -- Cagnor's Shop
end, "卡格诺商店")

RegisterEvent(24, "卡格诺商店", nil, "卡格诺商店")

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

RegisterEvent(87, "打开板条箱", function()
    evt.OpenChest(6)
end, "打开板条箱")

RegisterEvent(88, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(89, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(90, "岩石", function()
    evt.OpenChest(9)
end, "岩石")

RegisterEvent(91, "箱子", function()
    evt.OpenChest(10)
    SetQBit(QBit(168)) -- Found the treasure of the Dread Pirate Stanley!
end, "箱子")

RegisterEvent(92, "箱子", function()
    evt.OpenChest(11)
    SetQBit(QBit(168)) -- Found the treasure of the Dread Pirate Stanley!
end, "箱子")

RegisterEvent(93, "箱子", function()
    evt.OpenChest(12)
    SetQBit(QBit(168)) -- Found the treasure of the Dread Pirate Stanley!
end, "箱子")

RegisterEvent(94, "箱子", function()
    evt.OpenChest(13)
    SetQBit(QBit(168)) -- Found the treasure of the Dread Pirate Stanley!
end, "箱子")

RegisterEvent(95, "箱子", function()
    evt.OpenChest(14)
    SetQBit(QBit(168)) -- Found the treasure of the Dread Pirate Stanley!
end, "箱子")

RegisterEvent(96, "箱子", function()
    evt.OpenChest(15)
    SetQBit(QBit(168)) -- Found the treasure of the Dread Pirate Stanley!
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
    if not IsAtLeast(MapVar(31), 2) then
        if IsAtLeast(Gold, 199) then
            evt.StatusText("精神焕发")
            return
        elseif IsAtLeast(BankGold, 99) then
            evt.StatusText("精神焕发")
        else
            AddValue(Gold, 200)
            AddValue(MapVar(31), 1)
        end
    return
    end
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(102, "饮用井水", function()
    if not IsAtLeast(BaseEndurance, 16) then
        AddValue(BaseEndurance, 2)
        evt.StatusText("耐力+2（永久）")
        return
    end
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(103, "饮用井水", function()
    evt.StatusText("精神焕发")
end, "饮用井水")

RegisterEvent(150, "方尖碑", function()
    if IsQBitSet(QBit(193)) then return end -- Obelisk Area 8
    evt.StatusText("amonghiss")
    SetAutonote(11) -- Obelisk message #4: amonghiss
    SetQBit(QBit(193)) -- Obelisk Area 8
end, "方尖碑")

RegisterEvent(183, "雾之号", function()
    evt.EnterHouse(482) -- Mist
end, "雾之号")

RegisterEvent(184, "雾之号", nil, "雾之号")

RegisterEvent(191, "牛眼旅店", function()
    evt.EnterHouse(235) -- Bull's Eye Inn
end, "牛眼旅店")

RegisterEvent(192, "牛眼旅店", nil, "牛眼旅店")

RegisterEvent(401, "巴尔萨煞巢穴", nil, "巴尔萨煞巢穴")

RegisterEvent(402, "野蛮人要塞", nil, "野蛮人要塞")

RegisterEvent(403, "科尔布地穴", nil, "科尔布地穴")

RegisterEvent(404, "伊普教堂", nil, "伊普教堂")

RegisterEvent(405, "流水位面之门", nil, "流水位面之门")

RegisterEvent(406, "密封板条箱", nil, "密封板条箱")

RegisterEvent(450, nil, nil)

RegisterEvent(479, nil, function()
    local randomStep = PickRandomOption(479, 2, {2, 4, 6, 8, 10, 12})
    if randomStep == 2 then
        evt.PlaySound(322, 7296, -5280)
    elseif randomStep == 4 then
        evt.PlaySound(322, -1580, -4064)
    elseif randomStep == 6 then
        evt.PlaySound(322, -11808, -3392)
    elseif randomStep == 8 then
        evt.PlaySound(322, -10816, 4352)
    elseif randomStep == 10 then
        evt.PlaySound(322, -1280, 3776)
    end
end)

RegisterEvent(501, "进入巴尔萨泽巢穴", function()
    evt.MoveToMap(1, -100, -85, 1540, 0, 0, 344, 1, "d24.blv") -- Balthazar Lair
end, "进入巴尔萨泽巢穴")

RegisterEvent(502, "进入蛮族堡垒", function()
    evt.MoveToMap(-2284, 1847, 1, 1024, 0, 0, 367, 1, "d25.blv") -- Barbarian Fortress
end, "进入蛮族堡垒")

RegisterEvent(503, "进入科尔布地窖", function()
    evt.MoveToMap(-4436, -6538, 317, 512, 0, 0, 0, 1, "d26.blv") -- The Crypt of Korbu
end, "进入科尔布地窖")

RegisterEvent(504, "进入巴尔萨泽巢穴", function()
    evt.MoveToMap(832, 849, 44, 1548, 0, 0, 344, 1, "d24.blv") -- Balthazar Lair
end, "进入巴尔萨泽巢穴")

RegisterEvent(505, "进入蛮族堡垒", function()
    evt.MoveToMap(614, 1858, 1, 0, 0, 0, 367, 1, "d25.blv") -- Barbarian Fortress
end, "进入蛮族堡垒")

RegisterEvent(506, "进入蛮族堡垒", function()
    evt.MoveToMap(628, -1274, 1, 0, 0, 0, 367, 1, "d25.blv") -- Barbarian Fortress
end, "进入蛮族堡垒")

RegisterEvent(507, "进入蛮族堡垒", function()
    evt.MoveToMap(-2284, -1353, 1, 1024, 0, 0, 367, 1, "d25.blv") -- Barbarian Fortress
end, "进入蛮族堡垒")

RegisterEvent(508, "进入流水位面", function()
    evt.MoveToMap(-6144, -20528, 1, 512, 0, 0, 348, 1, "elemw.odm") -- Plane of Water
end, "进入流水位面")

RegisterEvent(509, "进入伊普教堂", function()
    evt.MoveToMap(-21, 5, 1, 0, 0, 0, 0, 1, "d46.blv") -- Church of Eep
end, "进入伊普教堂")

