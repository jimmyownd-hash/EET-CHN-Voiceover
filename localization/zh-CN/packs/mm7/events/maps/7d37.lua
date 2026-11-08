-- The Haunted Mansion
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {2},
    openedChestIds = {
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
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "title" },
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
    [198] = { kind = "generic_event", source = "opcode" },
    [199] = { kind = "generic_event", source = "opcode" },
    [200] = { kind = "generic_event", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out11.odm", targetName = "丘陵地" },
    },
    textureNames = {"t2bs"},
    spriteNames = {},
    castSpellIds = {2},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Ghost A, spawn Ghoul A, spawn Wight A
end)

RegisterEvent(2, nil, function()
    if evt.CheckMonstersKilled(ActorKillCheck.Any, 51, 0, false) then -- any actor; all matching actors defeated
        evt.ForPlayer(Players.All)
        SetQBit(QBit(652)) -- Cleaned out the haunted mansion (Cavalier promo)
    end
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

RegisterEvent(7, "门", function()
    evt.SetDoorState(9, DoorAction.Open)
    evt.SetDoorState(10, DoorAction.Open)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(11, DoorAction.Open)
    evt.SetDoorState(12, DoorAction.Open)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(13, DoorAction.Open)
    evt.SetDoorState(14, DoorAction.Open)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(15, DoorAction.Open)
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
    evt.SetDoorState(18, DoorAction.Open)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(19, DoorAction.Open)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(20, DoorAction.Open)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(21, DoorAction.Open)
    evt.SetDoorState(22, DoorAction.Close)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(23, DoorAction.Trigger)
    evt.CastSpell(2, 20, 3, 0, 3488, 576, 0, 2588, 576) -- Fire Bolt
end, "门")

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
    if IsAtLeast(MapVar(52), 1) then return end
    local randomStep = PickRandomOption(197, 2, {2, 2, 2, 4, 15, 18})
    if randomStep == 2 then
        evt.GiveItem(5, ItemType.Scroll_)
        local randomStep = PickRandomOption(197, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(52), 1)
        end
    elseif randomStep == 4 then
        local randomStep = PickRandomOption(197, 5, {5, 7, 9, 11, 13, 14})
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
        local randomStep = PickRandomOption(197, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(52), 1)
        end
    elseif randomStep == 15 then
        AddValue(MapVar(52), 1)
    end
end, "书柜")

RegisterEvent(198, "书柜", function()
    if IsAtLeast(MapVar(53), 1) then return end
    local randomStep = PickRandomOption(198, 2, {2, 2, 2, 4, 15, 18})
    if randomStep == 2 then
        evt.GiveItem(5, ItemType.Scroll_)
        local randomStep = PickRandomOption(198, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(53), 1)
        end
    elseif randomStep == 4 then
        local randomStep = PickRandomOption(198, 5, {5, 7, 9, 11, 13, 14})
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
        local randomStep = PickRandomOption(198, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(53), 1)
        end
    elseif randomStep == 15 then
        AddValue(MapVar(53), 1)
    end
end, "书柜")

RegisterEvent(199, "书柜", function()
    if IsAtLeast(MapVar(54), 1) then return end
    local randomStep = PickRandomOption(199, 2, {2, 2, 2, 4, 15, 18})
    if randomStep == 2 then
        evt.GiveItem(5, ItemType.Scroll_)
        local randomStep = PickRandomOption(199, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(54), 1)
        end
    elseif randomStep == 4 then
        local randomStep = PickRandomOption(199, 5, {5, 7, 9, 11, 13, 14})
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
        local randomStep = PickRandomOption(199, 15, {15, 15, 15, 15, 18, 18})
        if randomStep == 15 then
            AddValue(MapVar(54), 1)
        end
    elseif randomStep == 15 then
        AddValue(MapVar(54), 1)
    end
end, "书柜")

RegisterEvent(200, "书柜", function()
    evt.StatusText("没有让你感兴趣的物品")
end, "书柜")

RegisterEvent(376, "肖像", function()
    if IsQBitSet(QBit(778)) then return end -- Took Angel Painting
    evt.SetTexture(15, "t2bs")
    AddValue(InventoryItem(1423), 1423) -- Angel Statue Painting
    SetQBit(QBit(778)) -- Took Angel Painting
end, "肖像")

RegisterEvent(501, "离开鬼屋", function()
    evt.MoveToMap(-19207, 12339, 33, 1536, 0, 0, 0, 0, "out11.odm") -- The Barrow Downs
end, "离开鬼屋")

