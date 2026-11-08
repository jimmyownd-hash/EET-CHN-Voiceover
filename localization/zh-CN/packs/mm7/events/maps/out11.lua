-- The Barrow Downs
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1, 250},
    onLeave = {},
    openedChestIds = {
    [201] = {1},
    [202] = {2},
    [203] = {3},
    [204] = {4},
    [205] = {5},
    [206] = {6},
    [207] = {7},
    [208] = {8},
    [209] = {9},
    [210] = {10},
    [211] = {11},
    [212] = {12},
    [213] = {13},
    [214] = {14},
    [215] = {15},
    [216] = {16},
    [217] = {17},
    [218] = {18},
    [219] = {19},
    [220] = {0},
    },
    contextActions = {
    [3] = { kind = "enter_house", source = "opcode", houseId = 249, targetName = "矿工专营店" },
    [101] = { kind = "enter_house", source = "opcode", houseId = 1151, targetName = "达利娅之家" },
    [102] = { kind = "enter_house", source = "opcode", houseId = 1152, targetName = "宝石宅邸" },
    [103] = { kind = "enter_house", source = "opcode", houseId = 1153, targetName = "长石之家" },
    [104] = { kind = "enter_house", source = "opcode", houseId = 1154, targetName = "裂隙宅邸" },
    [105] = { kind = "enter_house", source = "opcode", houseId = 1155, targetName = "石榴石之屋" },
    [106] = { kind = "enter_house", source = "opcode", houseId = 1156, targetName = "裂岩宅邸" },
    [201] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [202] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [203] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [204] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [205] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [206] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [207] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [208] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [209] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [210] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [211] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [212] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [213] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [214] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [215] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [216] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [217] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [218] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [219] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [220] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [251] = { kind = "generic_event", source = "opcode" },
    [252] = { kind = "generic_event", source = "opcode" },
    [253] = { kind = "generic_event", source = "opcode" },
    [254] = { kind = "generic_event", source = "opcode" },
    [255] = { kind = "generic_event", source = "opcode" },
    [256] = { kind = "generic_event", source = "opcode" },
    [321] = { kind = "well", source = "title" },
    [322] = { kind = "well", source = "title" },
    [452] = { kind = "shrine", source = "title" },
    [453] = { kind = "obelisk", source = "title" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d24.blv", targetName = "石城" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d37.blv", targetName = "鬼宅" },
    [503] = { kind = "enter_dungeon", source = "opcode", targetMap = "mdt01.blv", targetName = "9号墓穴" },
    [504] = { kind = "enter_dungeon", source = "opcode", targetMap = "mdr01.blv", targetName = "10号墓穴" },
    [505] = { kind = "enter_dungeon", source = "opcode", targetMap = "mdk01.blv", targetName = "7号墓穴" },
    },
    textureNames = {},
    spriteNames = {"0", "7tree13", "7tree14", "7tree15", "7tree16", "7tree17", "7tree18", "7tree22", "7tree24", "7tree30", "tree37"},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 321, triggerStep = 9, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 1, startMinute = 0, startSecond = 0 },
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn AGog A, spawn Gargoyle A, spawn Ghost A
end)

RegisterEvent(3, "矿工专属", function()
    evt.EnterHouse(249) -- Miner's Only
end, "矿工专属")

RegisterEvent(4, "矿工专属", nil, "矿工专属")

RegisterEvent(100, "房屋", nil, "房屋")

RegisterEvent(101, "达利娅之家", function()
    evt.EnterHouse(1151) -- Dallia's Home
end, "达利娅之家")

RegisterEvent(102, "宝石宅邸", function()
    evt.EnterHouse(1152) -- Gemstone Residence
end, "宝石宅邸")

RegisterEvent(103, "长石之家", function()
    evt.EnterHouse(1153) -- Feldspar's Home
end, "长石之家")

RegisterEvent(104, "裂隙宅邸", function()
    evt.EnterHouse(1154) -- Fissure Residence
end, "裂隙宅邸")

RegisterEvent(105, "石榴石之家", function()
    evt.EnterHouse(1155) -- Garnet House
end, "石榴石之家")

RegisterEvent(106, "裂岩宅邸", function()
    evt.EnterHouse(1156) -- Rivenrock Residence
end, "裂岩宅邸")

RegisterEvent(201, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(202, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(203, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(204, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(205, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(206, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(207, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(208, "箱子", function()
    evt.OpenChest(8)
    evt.MoveToMap(3072, -416, 0, 0, 0, 0, 0, 0)
end, "箱子")

RegisterEvent(209, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(210, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(211, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(212, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(213, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(214, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(215, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(216, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(217, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(218, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(219, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(220, "箱子", function()
    evt.OpenChest(0)
    if IsQBitSet(QBit(578)) then -- Placed Golem torso
        return
    elseif IsQBitSet(QBit(737)) then -- Torso - I lost it
        return
    else
        SetQBit(QBit(737)) -- Torso - I lost it
        return
    end
end, "箱子")

RegisterEvent(250, nil, function()
    if evt.CheckSeason(2) then
        goto step_16
    end
    if evt.CheckSeason(3) then
        goto step_20
    end
    evt.SetSprite(5, 1, "7tree13")
    evt.SetSprite(6, 1, "7tree16")
    evt.SetSprite(7, 1, "7tree22")
    evt.SetSprite(10, 1, "0")
    goto step_32
    ::step_8::
    if evt.CheckSeason(1) then
        goto step_12
    end
    if evt.CheckSeason(0) then
        goto step_14
    end
    do return end
    ::step_12::
    evt.StatusText("你得到了一个苹果")
    goto step_31
    ::step_14::
    evt.StatusText("果树")
    goto step_31
    ::step_16::
    evt.SetSprite(5, 1, "7tree14")
    evt.SetSprite(6, 1, "7tree17")
    goto step_23
    ::step_20::
    evt.SetSprite(5, 1, "7tree15")
    evt.SetSprite(6, 1, "7tree18")
    ::step_23::
    evt.SetSprite(7, 1, "7tree24")
    evt.SetSprite(10, 0, "0")
    evt.SetSprite(51, 1, "7tree30")
    evt.SetSprite(52, 1, "7tree30")
    evt.SetSprite(53, 1, "7tree30")
    evt.SetSprite(54, 1, "7tree30")
    evt.SetSprite(55, 1, "7tree30")
    evt.SetSprite(56, 1, "7tree30")
    ::step_31::
    do return end
    ::step_32::
    if IsAtLeast(MapVar(52), 1) then
        goto step_35
    end
    evt.SetSprite(51, 1, "0")
    goto step_36
    ::step_35::
    evt.SetSprite(51, 1, "0")
    ::step_36::
    if IsAtLeast(MapVar(53), 1) then
        goto step_39
    end
    evt.SetSprite(52, 1, "0")
    goto step_40
    ::step_39::
    evt.SetSprite(52, 1, "0")
    ::step_40::
    if IsAtLeast(MapVar(54), 1) then
        goto step_43
    end
    evt.SetSprite(53, 1, "0")
    goto step_44
    ::step_43::
    evt.SetSprite(53, 1, "0")
    ::step_44::
    if IsAtLeast(MapVar(55), 1) then
        goto step_47
    end
    evt.SetSprite(54, 1, "0")
    goto step_48
    ::step_47::
    evt.SetSprite(54, 1, "0")
    ::step_48::
    if IsAtLeast(MapVar(56), 1) then
        goto step_51
    end
    evt.SetSprite(55, 1, "0")
    goto step_52
    ::step_51::
    evt.SetSprite(55, 1, "0")
    ::step_52::
    if IsAtLeast(MapVar(57), 1) then
        goto step_55
    end
    evt.SetSprite(56, 1, "0")
    goto step_56
    ::step_55::
    evt.SetSprite(56, 1, "0")
    ::step_56::
    goto step_8
end)

RegisterEvent(251, "果树", function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if IsAtLeast(MapVar(52), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(52), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(51, 1, "tree37")
end, "果树")

RegisterEvent(252, "果树", function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if IsAtLeast(MapVar(53), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(53), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(52, 1, "tree37")
end, "果树")

RegisterEvent(253, "果树", function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if IsAtLeast(MapVar(54), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(54), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(53, 1, "tree37")
end, "果树")

RegisterEvent(254, "果树", function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if IsAtLeast(MapVar(55), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(55), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(54, 1, "tree37")
end, "果树")

RegisterEvent(255, "果树", function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if IsAtLeast(MapVar(56), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(56), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(55, 1, "tree37")
end, "果树")

RegisterEvent(256, "果树", function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if IsAtLeast(MapVar(57), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(57), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(56, 1, "tree37")
end, "果树")

RegisterEvent(317, "石城", nil, "石城")

RegisterEvent(318, "矮人古墓", nil, "矮人古墓")

RegisterEvent(319, "宅邸", nil, "宅邸")

RegisterEvent(320, "水井", nil, "水井")

RegisterEvent(321, "饮用井水", function()
    if not IsPlayerBitSet(PlayerBit(18)) then
        if not IsAutonoteSet(282) then -- 25 points of temporary Fire resistance from the well in the southwestern village in the Barrow Downs.
            SetAutonote(282) -- 25 points of temporary Fire resistance from the well in the southwestern village in the Barrow Downs.
        end
        AddValue(FireResistanceBonus, 25)
        SetPlayerBit(PlayerBit(18))
        evt.StatusText("火系抗性+25（临时）")
        return
    end
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(322, "饮用井水", function()
    if not IsAtLeast(Dead, 0) then
        evt.StatusText("精神焕发！")
        return
    end
    SetValue(MapVar(1), 0)
    evt.StatusText("麻痹已解除")
end, "饮用井水")

RegisterEvent(451, "神殿", nil, "神殿")

RegisterEvent(452, "祭坛", function()
    if not IsPlayerBitSet(PlayerBit(29)) then
        AddValue(BaseEndurance, 10)
        AddValue(BaseMight, 10)
        SetPlayerBit(PlayerBit(29))
        evt.StatusText("耐力与力量+10（永久）")
        return
    end
    evt.StatusText("你祈祷")
end, "祭坛")

RegisterEvent(453, "方尖碑", function()
    if IsQBitSet(QBit(685)) then return end -- Visited Obelisk in Area 11
    evt.StatusText("ivg_whn_")
    SetAutonote(318) -- Obelisk message #10: ivg_whn_
    evt.ForPlayer(Players.All)
    SetQBit(QBit(685)) -- Visited Obelisk in Area 11
end, "方尖碑")

RegisterEvent(501, "进入石城", function()
    evt.MoveToMap(245, -5362, 34, 512, 0, 0, 152, 1, "7d24.blv") -- Stone City
end, "进入石城")

RegisterEvent(502, "进入豪宅", function()
    evt.MoveToMap(2, -1096, -31, 512, 0, 0, 0, 0, "7d37.blv") -- The Haunted Mansion
end, "进入豪宅")

RegisterEvent(503, "进入矮人墓穴", function()
    evt.MoveToMap(382, 324, -15, 1280, 0, 0, 61, 4, "mdt01.blv") -- Barrow IX
end, "进入矮人墓穴")

RegisterEvent(504, "进入矮人墓穴", function()
    evt.MoveToMap(106, -666, 49, 256, 0, 0, 61, 4, "mdr01.blv") -- Barrow X
end, "进入矮人墓穴")

RegisterEvent(505, "进入矮人墓穴", function()
    evt.MoveToMap(-384, -983, 1, 256, 0, 0, 61, 4, "mdk01.blv") -- Barrow VII
end, "进入矮人墓穴")

RegisterEvent(65535, "", function()
    evt.ForPlayer(Players.All)
    ClearPlayerBit(PlayerBit(18))
end)

