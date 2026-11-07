-- Grand Temple of the Moon
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {2},
    openedChestIds = {
    [17] = {6},
    [176] = {1},
    [177] = {2},
    [178] = {3},
    [179] = {4},
    [180] = {5},
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
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "opcode" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "opcode" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "opcode" },
    [11] = { kind = "use_switch", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "opcode" },
    [17] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "press_button", source = "title" },
    [20] = { kind = "open_door", source = "opcode" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "opcode" },
    [23] = { kind = "open_door", source = "opcode" },
    [24] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "opcode" },
    [176] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [177] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [178] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [179] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [180] = { kind = "open_chest", source = "opcode", chestIds = {5} },
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
    [196] = { kind = "generic_event", source = "opcode" },
    [197] = { kind = "generic_event", source = "opcode" },
    [376] = { kind = "shrine", source = "title" },
    [451] = { kind = "open_door", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out09.odm", targetName = "恒晨岛" },
    },
    textureNames = {"t2bedsht"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    SetValue(MapVar(2), 1)
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Cleric Moon A, spawn Wight A
end)

RegisterEvent(2, nil, function()
    local function Step_1()
        evt.ForPlayer(Players.All)
        return 2
    end
    local function Step_2()
        if HasItem(1143) then return 4 end -- Telekinesis
        return 3
    end
    local function Step_3()
        return nil
    end
    local function Step_4()
        RemoveItem(1143) -- Telekinesis
        return 5
    end
    local function Step_5()
        return 2
    end
    local step = 1
    while step ~= nil do
        if step == 1 then
            step = Step_1()
        elseif step == 2 then
            step = Step_2()
        elseif step == 3 then
            step = Step_3()
        elseif step == 4 then
            step = Step_4()
        elseif step == 5 then
            step = Step_5()
        else
            step = nil
        end
    end
end)

RegisterEvent(3, nil, function()
    evt.SetDoorState(6, DoorAction.Open)
end)

RegisterEvent(4, "门", function()
    evt.SetDoorState(3, DoorAction.Open)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(7, DoorAction.Open)
end, "门")

RegisterEvent(6, nil, function()
    if IsAtLeast(MapVar(2), 2) then return end
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(9, DoorAction.Open)
end)

RegisterEvent(7, "门", function()
    evt.SetDoorState(10, DoorAction.Open)
    evt.SetDoorState(11, DoorAction.Open)
end, "门")

RegisterEvent(8, nil, function()
    evt.SetDoorState(8, DoorAction.Close)
    evt.SetDoorState(9, DoorAction.Close)
end)

RegisterEvent(9, "门", function()
    evt.SetDoorState(12, DoorAction.Open)
    evt.SetDoorState(13, DoorAction.Open)
end, "门")

RegisterEvent(10, nil, function()
    evt.SetDoorState(14, DoorAction.Open)
end)

RegisterEvent(11, "开关", function()
    evt.SetDoorState(15, DoorAction.Close)
    evt.SetDoorState(28, DoorAction.Open)
end, "开关")

RegisterEvent(12, "门", function()
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(18, DoorAction.Open)
    evt.SetDoorState(19, DoorAction.Open)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(20, DoorAction.Open)
    evt.SetDoorState(21, DoorAction.Open)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(22, DoorAction.Open)
    evt.SetDoorState(23, DoorAction.Open)
end, "门")

RegisterEvent(16, nil, function()
    evt.SetDoorState(24, DoorAction.Open)
    evt.SetDoorState(25, DoorAction.Open)
end)

RegisterEvent(17, "抽屉", function()
    evt.SetDoorState(26, DoorAction.Open)
    evt.OpenChest(6)
end, "抽屉")

RegisterEvent(18, "门", function()
    evt.SetDoorState(27, DoorAction.Open)
end, "门")

RegisterEvent(19, "按钮", function()
    evt.SetDoorState(28, DoorAction.Close)
    evt.SetDoorState(15, DoorAction.Open)
end, "按钮")

RegisterEvent(20, nil, function()
    AddValue(InventoryItem(1143), 1143) -- Telekinesis
    evt.SetDoorState(29, DoorAction.Open)
end)

RegisterEvent(21, "门", function()
    evt.SetDoorState(31, DoorAction.Open)
end, "门")

RegisterEvent(22, nil, function()
    evt.SetDoorState(4, DoorAction.Open)
    evt.SetDoorState(5, DoorAction.Open)
end)

RegisterEvent(23, nil, function()
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(2, DoorAction.Open)
end)

RegisterEvent(24, "门", function()
    evt.SetDoorState(51, DoorAction.Open)
    evt.SetDoorState(50, DoorAction.Open)
end, "门")

RegisterEvent(25, nil, function()
    evt.SetDoorState(52, DoorAction.Open)
end)

RegisterEvent(176, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(177, "柜子", function()
    evt.OpenChest(2)
end, "柜子")

RegisterEvent(178, "柜子", function()
    evt.OpenChest(3)
end, "柜子")

RegisterEvent(179, "柜子", function()
    evt.OpenChest(4)
end, "柜子")

RegisterEvent(180, "箱子", function()
    evt.OpenChest(5)
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

RegisterEvent(196, "书柜", function()
    if IsAtLeast(MapVar(51), 1) then return end
    local randomStep = PickRandomOption(196, 2, {2, 2, 2, 4, 15, 18})
    if randomStep == 2 then
        evt.GiveItem(5, ItemType.Scroll_)
        local randomStep = PickRandomOption(196, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(51), 1)
        end
    elseif randomStep == 4 then
        local randomStep = PickRandomOption(196, 5, {5, 7, 9, 11, 13, 14})
        if randomStep == 5 then
            AddValue(InventoryItem(1203), 1203) -- Fire Bolt
        elseif randomStep == 7 then
            AddValue(InventoryItem(1214), 1214) -- Feather Fall
        elseif randomStep == 9 then
            AddValue(InventoryItem(1216), 1216) -- Sparks
        elseif randomStep == 11 then
            AddValue(InventoryItem(1281), 1281) -- Dispel Magic
        elseif randomStep == 13 then
            AddValue(InventoryItem(1269), 1269) -- Heal
        end
        local randomStep = PickRandomOption(196, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(51), 1)
        end
    elseif randomStep == 15 then
        AddValue(MapVar(51), 1)
    end
end, "书柜")

RegisterEvent(197, "书柜", function()
end, "书柜")

RegisterEvent(376, "祭坛", function()
    if IsQBitSet(QBit(574)) then return end -- Purified the Altar of Evil. Priest of Light promo quest.
    if IsQBitSet(QBit(554)) then -- Purify the Altar of Evil in the Temple of the Moon on Evenmorn Isle then return to Rebecca Devine in Celeste.
        evt.SetTexture(20, "t2bedsht")
        evt.ForPlayer(Players.All)
        SetQBit(QBit(574)) -- Purified the Altar of Evil. Priest of Light promo quest.
        SetQBit(QBit(757)) -- Congratulations - For Blinging
        ClearQBit(QBit(757)) -- Congratulations - For Blinging
        evt.StatusText("你净化了祭坛")
    end
end, "祭坛")

RegisterEvent(451, nil, function()
    if not IsAtLeast(MapVar(2), 2) then
        SetValue(MapVar(2), 2)
        evt.SetFacetBit(1, FacetBits.Untouchable, 1)
        evt.SetDoorState(30, DoorAction.Open)
        return
    end
    SetValue(MapVar(2), 1)
    evt.SetFacetBit(1, FacetBits.Untouchable, 0)
    evt.SetDoorState(30, DoorAction.Close)
end)

RegisterEvent(501, "离开月亮大神庙", function()
    evt.ForPlayer(Players.All)
    RemoveItem(1143) -- Telekinesis
    evt.MoveToMap(8472, -3176, 32, 1408, 0, 0, 0, 0, "out09.odm") -- Evenmorn Island
end, "离开月亮大神庙")

