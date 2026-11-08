-- Stone City
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1, 65535, 65534},
    onLeave = {},
    openedChestIds = {
    [176] = {0},
    [177] = {1},
    [178] = {2},
    [179] = {3},
    [180] = {4},
    [181] = {5},
    [182] = {6},
    [183] = {7},
    [184] = {8},
    [185] = {9},
    [186] = {10},
    [187] = {11},
    [188] = {12},
    [189] = {13},
    [190] = {14},
    [191] = {15},
    [192] = {16},
    [193] = {17},
    [194] = {18},
    [195] = {19},
    },
    contextActions = {
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [151] = { kind = "press_button", source = "title" },
    [152] = { kind = "press_button", source = "title" },
    [153] = { kind = "press_button", source = "title" },
    [154] = { kind = "press_button", source = "title" },
    [176] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [177] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [178] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [179] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [180] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [181] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [182] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [183] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [184] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [185] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [186] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [187] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [188] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [189] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [190] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [191] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [192] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [193] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [194] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [195] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [196] = { kind = "generic_event", source = "opcode" },
    [197] = { kind = "generic_event", source = "opcode" },
    [198] = { kind = "generic_event", source = "opcode" },
    [199] = { kind = "generic_event", source = "opcode" },
    [200] = { kind = "generic_event", source = "opcode" },
    [201] = { kind = "generic_event", source = "opcode" },
    [415] = { kind = "obelisk", source = "title" },
    [416] = { kind = "enter_house", source = "opcode", houseId = 216, targetName = "王座室" },
    [417] = { kind = "enter_house", source = "opcode", houseId = 17, targetName = "平衡之斧" },
    [419] = { kind = "enter_house", source = "opcode", houseId = 57, targetName = "抛光护肩" },
    [421] = { kind = "enter_house", source = "opcode", houseId = 93, targetName = "精致物品店" },
    [423] = { kind = "enter_house", source = "opcode", houseId = 124, targetName = "强效药剂与酿造店" },
    [425] = { kind = "enter_house", source = "opcode", houseId = 321, targetName = "石之神庙" },
    [427] = { kind = "enter_house", source = "opcode", houseId = 1579, targetName = "战争学院" },
    [429] = { kind = "enter_house", source = "opcode", houseId = 252, targetName = "格罗格的烈酒店" },
    [431] = { kind = "enter_house", source = "opcode", houseId = 293, targetName = "矿产财富店" },
    [433] = { kind = "enter_house", source = "opcode", houseId = 148, targetName = "大地系大师公会" },
    [435] = { kind = "enter_house", source = "opcode", houseId = 1051, targetName = "锋刃宅邸" },
    [436] = { kind = "enter_house", source = "opcode", houseId = 1052, targetName = "塞琳之家" },
    [437] = { kind = "enter_house", source = "opcode", houseId = 1053, targetName = "韦尔曼宅邸" },
    [438] = { kind = "enter_house", source = "opcode", houseId = 1054, targetName = "塞恩之家" },
    [439] = { kind = "enter_house", source = "opcode", houseId = 1055, targetName = "吉兹莫家" },
    [440] = { kind = "enter_house", source = "opcode", houseId = 1056, targetName = "火花之家" },
    [441] = { kind = "enter_house", source = "opcode", houseId = 1057, targetName = "索林森宅邸" },
    [442] = { kind = "enter_house", source = "opcode", houseId = 1058, targetName = "厄斯史密斯宅邸" },
    [443] = { kind = "enter_house", source = "opcode", houseId = 216, targetName = "王座室" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out11.odm", targetName = "丘陵地" },
    [502] = { kind = "passage", source = "opcode", targetMap = "7d35.blv", targetName = "尼弘隧道" },
    },
    textureNames = {"cwb1"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if IsQBitSet(QBit(611)) then return end -- Chose the path of Light
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(2, DoorAction.Open)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(3, DoorAction.Open)
    evt.SetDoorState(4, DoorAction.Open)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Open)
    evt.SetDoorState(6, DoorAction.Open)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(8, DoorAction.Open)
end, "门")

RegisterEvent(151, "按钮", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "按钮")

RegisterEvent(152, "按钮", function()
    evt.SetDoorState(10, DoorAction.Open)
end, "按钮")

RegisterEvent(153, "按钮", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "按钮")

RegisterEvent(154, "按钮", function()
    evt.SetDoorState(11, DoorAction.Open)
end, "按钮")

RegisterEvent(176, "柜子", function()
    evt.OpenChest(0)
end, "柜子")

RegisterEvent(177, "柜子", function()
    evt.OpenChest(1)
end, "柜子")

RegisterEvent(178, "柜子", function()
    evt.OpenChest(2)
end, "柜子")

RegisterEvent(179, "柜子", function()
    evt.OpenChest(3)
end, "柜子")

RegisterEvent(180, "柜子", function()
    evt.OpenChest(4)
end, "柜子")

RegisterEvent(181, "柜子", function()
    evt.OpenChest(5)
end, "柜子")

RegisterEvent(182, "柜子", function()
    evt.OpenChest(6)
end, "柜子")

RegisterEvent(183, "柜子", function()
    evt.OpenChest(7)
end, "柜子")

RegisterEvent(184, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(185, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(186, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(187, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(188, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(189, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(190, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(191, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(192, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(193, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(194, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(195, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(196, "喝一口", function()
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(197, "喝一口", function()
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(198, "喝一口", function()
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(199, "书柜", function()
    evt.StatusText("这里什么都没有")
end, "书柜")

RegisterEvent(200, "矿脉", function()
    if IsAtLeast(MapVar(16), 1) then return end
    local randomStep = PickRandomOption(200, 2, {2, 4, 6, 8, 2, 2})
    if randomStep == 2 then
        AddValue(InventoryItem(1488), 1488) -- Iron-laced ore
    elseif randomStep == 4 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 6 then
        evt.DamagePlayer(Players.All, const.Damage.Fire, 50)
        evt.StatusText("塌方！")
        AddValue(InventoryItem(1490), 1490) -- Phylt-laced ore
    elseif randomStep == 8 then
        AddValue(InventoryItem(1490), 1490) -- Phylt-laced ore
    end
    SetValue(MapVar(16), 1)
    evt.SetTexture(2, "cwb1")
end, "矿脉")

RegisterEvent(201, "矿脉", function()
    if IsAtLeast(MapVar(17), 1) then return end
    local randomStep = PickRandomOption(201, 2, {2, 4, 6, 8, 2, 2})
    if randomStep == 2 then
        AddValue(InventoryItem(1488), 1488) -- Iron-laced ore
    elseif randomStep == 4 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 6 then
        evt.DamagePlayer(Players.All, const.Damage.Fire, 50)
        evt.StatusText("塌方！")
        AddValue(InventoryItem(1490), 1490) -- Phylt-laced ore
    elseif randomStep == 8 then
        AddValue(InventoryItem(1490), 1490) -- Phylt-laced ore
    end
    SetValue(MapVar(17), 1)
    evt.SetTexture(3, "cwb1")
end, "矿脉")

RegisterEvent(415, "方尖碑", function()
    if IsQBitSet(QBit(689)) then return end -- Visited Obelisk in Area 39
    evt.StatusText("___d___d")
    SetAutonote(322) -- Obelisk message #14: ___d___d
    evt.ForPlayer(Players.All)
    SetQBit(QBit(689)) -- Visited Obelisk in Area 39
end, "方尖碑")

RegisterEvent(416, "王座厅", function()
    if not HasAward(Award(3)) then -- Removed goblins from Castle Harmondale
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        evt.StatusText("门锁着")
        return
    end
    evt.EnterHouse(216) -- 王座大厅
end, "王座厅")

RegisterEvent(417, "均衡战斧", function()
    evt.EnterHouse(17) -- The Balanced Axe
end, "均衡战斧")

RegisterEvent(418, "均衡战斧", nil, "均衡战斧")

RegisterEvent(419, "抛光肩甲店", function()
    evt.EnterHouse(57) -- The Polished Pauldron
end, "抛光肩甲店")

RegisterEvent(420, "抛光肩甲店", nil, "抛光肩甲店")

RegisterEvent(421, "精巧之物", function()
    evt.EnterHouse(93) -- Delicate Things
end, "精巧之物")

RegisterEvent(422, "精巧之物", nil, "精巧之物")

RegisterEvent(423, "强力药水与酿造", function()
    evt.EnterHouse(124) -- Potent Potions & Brews
end, "强力药水与酿造")

RegisterEvent(424, "强力药水与酿造", nil, "强力药水与酿造")

RegisterEvent(425, "石之神殿", function()
    evt.EnterHouse(321) -- Temple of Stone
end, "石之神殿")

RegisterEvent(426, "石之神殿", nil, "石之神殿")

RegisterEvent(427, "战争学院", function()
    evt.EnterHouse(1579) -- War College
end, "战争学院")

RegisterEvent(428, "战争学院", nil, "战争学院")

RegisterEvent(429, "格罗格烈酒馆", function()
    evt.EnterHouse(252) -- Grogg's Grog
end, "格罗格烈酒馆")

RegisterEvent(430, "格罗格烈酒馆", nil, "格罗格烈酒馆")

RegisterEvent(431, "矿产财富", function()
    evt.EnterHouse(293) -- Mineral Wealth
end, "矿产财富")

RegisterEvent(432, "矿产财富", nil, "矿产财富")

RegisterEvent(433, "土系大师行会", function()
    evt.EnterHouse(148) -- Master Guild of Earth
end, "土系大师行会")

RegisterEvent(434, "土系大师行会", nil, "土系大师行会")

RegisterEvent(435, "锐锋宅邸", function()
    evt.EnterHouse(1051) -- Keenedge Residence
end, "锐锋宅邸")

RegisterEvent(436, "塞琳之家", function()
    evt.EnterHouse(1052) -- Seline's House
end, "塞琳之家")

RegisterEvent(437, "韦尔曼宅邸", function()
    evt.EnterHouse(1053) -- Welman Residence
end, "韦尔曼宅邸")

RegisterEvent(438, "塞恩之家", function()
    evt.EnterHouse(1054) -- Thain's House
end, "塞恩之家")

RegisterEvent(439, "吉兹莫之居", function()
    evt.EnterHouse(1055) -- Gizmo's
end, "吉兹莫之居")

RegisterEvent(440, "火花之家", function()
    evt.EnterHouse(1056) -- Spark's House
end, "火花之家")

RegisterEvent(441, "托林森宅邸", function()
    evt.EnterHouse(1057) -- Thorinson Residence
end, "托林森宅邸")

RegisterEvent(442, "乌斯迈特宅邸", function()
    evt.EnterHouse(1058) -- Urthsmite Residence
end, "乌斯迈特宅邸")

RegisterEvent(443, "王座厅", function()
    evt.EnterHouse(216) -- 王座大厅
end, "王座厅")

RegisterEvent(444, "房屋", nil, "房屋")

RegisterEvent(451, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 1) then return end
    evt.SpeakNPC(780) -- Guard
    SetValue(MapVar(6), 1)
end)

RegisterEvent(452, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 2) then return end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
    evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Dwarven Commander, Dwarven Lieutenant, Dwarven Soldier
    SetValue(MapVar(6), 2)
end)

RegisterEvent(453, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 2) then return end
    SetValue(MapVar(6), 0)
end)

RegisterEvent(501, "离开石城", function()
    evt.MoveToMap(-2384, 3064, 2091, 0, 0, 0, 0, 0, "out11.odm") -- The Barrow Downs
end, "离开石城")

RegisterEvent(502, "离开石城", function()
    evt.MoveToMap(522, -808, 1, 1024, 0, 0, 0, 0, "7d35.blv") -- Nighon Tunnels
end, "离开石城")

RegisterEvent(65535, "", function()
    if IsAtLeast(MapVar(16), 1) then
        evt.SetTexture(2, "cwb1")
    end
end)

RegisterEvent(65534, "", function()
    if IsAtLeast(MapVar(17), 1) then
        evt.SetTexture(3, "cwb1")
    end
end)

