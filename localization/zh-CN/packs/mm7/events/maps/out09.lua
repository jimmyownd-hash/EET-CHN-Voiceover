-- Evenmorn Island
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {},
    openedChestIds = {
    [151] = {1},
    [152] = {2},
    [153] = {3},
    [154] = {4},
    [155] = {5},
    [156] = {6},
    [157] = {7},
    [158] = {8},
    [159] = {9},
    [160] = {10},
    [161] = {11},
    [162] = {12},
    [163] = {13},
    [164] = {14},
    [165] = {15},
    [166] = {16},
    [167] = {17},
    [168] = {18},
    [169] = {19},
    [170] = {0},
    },
    contextActions = {
    [3] = { kind = "enter_house", source = "opcode", houseId = 247, targetName = "笑面僧侣" },
    [5] = { kind = "enter_house", source = "opcode", houseId = 143, targetName = "水系至高公会" },
    [7] = { kind = "enter_house", source = "opcode", houseId = 489, targetName = "圣帆航运" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 987, targetName = "鹤之宅邸" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 988, targetName = "史密森宅邸" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 986, targetName = "洞丘宅邸" },
    [151] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [152] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [153] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [154] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [155] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [156] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [157] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [158] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [159] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [160] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [161] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [162] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [163] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [164] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [165] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [166] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [167] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [168] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [169] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [170] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [205] = { kind = "teleport", source = "heuristic" },
    [206] = { kind = "teleport", source = "heuristic" },
    [401] = { kind = "shrine", source = "title" },
    [452] = { kind = "shrine", source = "title" },
    [453] = { kind = "obelisk", source = "title" },
    [501] = { kind = "enter_dungeon", source = "opcode", targetMap = "7d19.blv", targetName = "月之圣殿" },
    [502] = { kind = "enter_dungeon", source = "opcode", targetMap = "t03.blv", targetName = "日之圣殿" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Gargoyle A
end)

RegisterEvent(3, "大笑僧侣", function()
    evt.EnterHouse(247) -- The Laughing Monk
end, "大笑僧侣")

RegisterEvent(4, "大笑僧侣", nil, "大笑僧侣")

RegisterEvent(5, "水系至上行会", function()
    evt.EnterHouse(143) -- Paramount Guild of Water
end, "水系至上行会")

RegisterEvent(6, "水系至上行会", nil, "水系至上行会")

RegisterEvent(7, "神圣之帆", function()
    evt.EnterHouse(489) -- Sacred Sails
end, "神圣之帆")

RegisterEvent(8, "神圣之帆", nil, "神圣之帆")

RegisterEvent(51, "房屋", nil, "房屋")

RegisterEvent(52, "鹤之宅邸", function()
    evt.EnterHouse(987) -- Crane Residence
end, "鹤之宅邸")

RegisterEvent(53, "史密斯森宅邸", function()
    evt.EnterHouse(988) -- Smithson Residence
end, "史密斯森宅邸")

RegisterEvent(54, "洞丘宅邸", function()
    evt.EnterHouse(986) -- Caverhill Residence
end, "洞丘宅邸")

RegisterEvent(151, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(152, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(153, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(154, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(155, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(156, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(157, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(158, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(159, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(160, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(161, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(162, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(163, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(164, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(165, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(166, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(167, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(168, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(169, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(170, nil, function()
    if IsQBitSet(QBit(690)) then return end -- Open final Obelisk Chest
    evt.OpenChest(0)
    AddValue(Gold, 100000)
    evt.ForPlayer(Players.All)
    SetQBit(QBit(690)) -- Open final Obelisk Chest
end)

RegisterEvent(201, "水井", nil, "水井")

RegisterEvent(202, "月之圣殿", nil, "月之圣殿")

RegisterEvent(203, "日之圣殿", nil, "日之圣殿")

RegisterEvent(204, nil, nil)

RegisterEvent(205, "跳入水井", function()
    evt.MoveToMap(4234, -8993, 384, 1216, 0, 0, 0, 0)
end, "跳入水井")

RegisterEvent(206, "跳入水井", function()
    evt.MoveToMap(-13860, -5350, 256, 192, 0, 0, 0, 0)
end, "跳入水井")

RegisterEvent(401, "祭坛", function()
    if not IsQBitSet(QBit(561)) then return end -- Visit the three stonehenge monoliths in Tatalia, the Evenmorn Islands, and Avlee, then return to Anthony Green in the Tularean Forest.
    if IsQBitSet(QBit(562)) then -- Visited all stonehenges
        return
    elseif IsQBitSet(QBit(563)) then -- Visited stonehenge 1 (area 9)
        return
    else
        evt.ForPlayer(Players.All)
        SetQBit(QBit(563)) -- Visited stonehenge 1 (area 9)
        evt.ForPlayer(Players.All)
        SetQBit(QBit(757)) -- Congratulations - For Blinging
        ClearQBit(QBit(757)) -- Congratulations - For Blinging
        if IsQBitSet(QBit(564)) and IsQBitSet(QBit(565)) then -- Visited stonehenge 2 (area 13)
            evt.ForPlayer(Players.All)
            SetQBit(QBit(562)) -- Visited all stonehenges
        else
        end
        return
    end
end, "祭坛")

RegisterEvent(451, "神殿", nil, "神殿")

RegisterEvent(452, "祭坛", function()
    if not IsPlayerBitSet(PlayerBit(27)) then
        AddValue(BaseAccuracy, 10)
        AddValue(BaseSpeed, 10)
        SetPlayerBit(PlayerBit(27))
        evt.StatusText("+10 精准和速度(永久)")
        return
    end
    evt.StatusText("你祈祷")
end, "祭坛")

RegisterEvent(453, "方尖碑", function()
    if IsQBitSet(QBit(683)) then return end -- Visited Obelisk in Area 9
    evt.StatusText(" _vehlgpe")
    SetAutonote(316) -- Obelisk message #8: _vehlgpe
    evt.ForPlayer(Players.All)
    SetQBit(QBit(683)) -- Visited Obelisk in Area 9
end, "方尖碑")

RegisterEvent(500, nil, function()
    if evt.CheckSeason(3) then return end
    if evt.CheckSeason(2) then return end
    if evt.CheckSeason(1) then return end
    if evt.CheckSeason(0) then
    end
end)

RegisterEvent(501, "进入月之圣殿", function()
    evt.MoveToMap(3136, 2053, 1, 512, 0, 0, 148, 1, "7d19.blv") -- Grand Temple of the Moon
end, "进入月之圣殿")

RegisterEvent(502, "进入日之圣殿", function()
    evt.MoveToMap(0, -3179, 161, 512, 0, 0, 149, 1, "t03.blv") -- Grand Temple of the Sun
end, "进入日之圣殿")

