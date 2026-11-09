-- Castle Gryphonheart
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {2},
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
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "opcode" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "opcode" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "opcode" },
    [12] = { kind = "open_door", source = "title" },
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
    [196] = { kind = "generic_event", source = "opcode" },
    [197] = { kind = "generic_event", source = "opcode" },
    [198] = { kind = "generic_event", source = "opcode" },
    [376] = { kind = "enter_house", source = "opcode", houseId = 1158, targetName = "爱丽丝·哈格里夫斯" },
    [416] = { kind = "enter_house", source = "opcode", houseId = 217, targetName = "王座厅" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "伊拉西亚" },
    [502] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out03.odm", targetName = "伊拉西亚" },
    },
    textureNames = {"chb1"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 454, sourceEventId = 454, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "monthly" },
    },
})

RegisterEvent(1, nil, function()
    if IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
    else
        return
    end
end)

RegisterEvent(2, nil, function()
    if evt.CheckMonstersKilled(ActorKillCheck.Group, 56, 1, false) or evt.CheckMonstersKilled(ActorKillCheck.Group, 55, 1, false) then -- actor group 56; at least 1 matching actor defeated
        SetValue(MapVar(6), 2)
    end
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(4, DoorAction.Open)
    evt.SetDoorState(5, DoorAction.Open)
end, "门")

RegisterEvent(4, nil, function()
    evt.SetDoorState(6, DoorAction.Open)
end)

RegisterEvent(5, "门", function()
    evt.SetDoorState(7, DoorAction.Open)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(8, DoorAction.Open)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(9, DoorAction.Open)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(10, DoorAction.Open)
end, "门")

RegisterEvent(9, nil, function()
    evt.SetDoorState(11, DoorAction.Open)
end)

RegisterEvent(10, "门", function()
    evt.SetDoorState(12, DoorAction.Open)
end, "门")

RegisterEvent(11, nil, function()
    evt.SetDoorState(1, DoorAction.Open)
end)

RegisterEvent(12, "门", function()
    evt.SetDoorState(2, DoorAction.Open)
    evt.SetDoorState(3, DoorAction.Open)
end, "门")

RegisterEvent(176, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(1)
        return
    end
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(177, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(2)
        return
    end
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(178, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(3)
        return
    end
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(179, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(4)
        return
    end
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(180, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(5)
        return
    end
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(181, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(6)
        return
    end
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(182, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(7)
        return
    end
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(183, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(8)
        return
    end
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(184, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(9)
        return
    end
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(185, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(10)
        return
    end
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(186, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(11)
        return
    end
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(187, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(12)
        return
    end
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(188, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(13)
        return
    end
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(189, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(14)
        return
    end
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(190, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(15)
        return
    end
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(191, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(16)
        return
    end
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(192, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(17)
        return
    end
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(193, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(18)
        return
    end
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(194, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(19)
        return
    end
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(195, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
        evt.OpenChest(0)
        return
    end
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
end, "书柜")

RegisterEvent(376, "爱丽丝·哈格里夫斯", function()
    if not IsQBitSet(QBit(537)) then -- Mini-dungeon Area 5. Rescued/Captured Alice Hargreaves.
        if IsQBitSet(QBit(1685)) then -- Replacement for NPCs ¹54 ver. 7
            evt.StatusText("门锁着")
            evt.FaceAnimation(FaceAnimation.DoorLocked)
            return
        elseif IsQBitSet(QBit(538)) then -- Capture Alice Hargreaves from her residence in Castle Gryphonheart and return her to William's Tower in the Deyja Moors.
            evt.EnterHouse(1158) -- Alice Hargreaves
        else
            evt.StatusText("门锁着")
            evt.FaceAnimation(FaceAnimation.DoorLocked)
        end
    return
    end
    evt.StatusText("门锁着")
    evt.FaceAnimation(FaceAnimation.DoorLocked)
end, "爱丽丝·哈格里夫斯")

RegisterEvent(377, "肖像", function()
    if IsQBitSet(QBit(776)) then return end -- Took Roland Painting
    evt.SetTexture(15, "chb1")
    AddValue(InventoryItem(1425), 1425) -- Roland Ironfist Painting
    SetQBit(QBit(776)) -- Took Roland Painting
end, "肖像")

RegisterEvent(378, "肖像", function()
    if IsQBitSet(QBit(777)) then return end -- Took Archi Painting
    evt.SetTexture(16, "chb1")
    AddValue(InventoryItem(1424), 1424) -- Archibald Ironfist Painting
    SetQBit(QBit(777)) -- Took Archi Painting
end, "肖像")

RegisterEvent(416, "王座厅", function()
    if IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        if not IsAtLeast(MapVar(6), 2) then
            evt.EnterHouse(217) -- 王座大厅
            return
        end
    end
    evt.FaceAnimation(FaceAnimation.DoorLocked)
    evt.StatusText("门锁着")
end, "王座厅")

RegisterEvent(451, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 1) then return end
    evt.SpeakNPC(616) -- Castle Guard
    SetValue(MapVar(6), 1)
end)

RegisterEvent(452, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 2) then return end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1)
    evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Champion of the Sword, spawn Archer A, spawn Fighter Chain A, spawn Fighter Plate A
    SetValue(MapVar(6), 2)
end)

RegisterEvent(453, nil, function()
    if IsAtLeast(Invisible, 0) then return end
    if IsAtLeast(MapVar(6), 2) then return end
    SetValue(MapVar(6), 0)
end)

RegisterEvent(454, nil, function()
    SetValue(MapVar(6), 0)
end)

RegisterEvent(501, "离开狮鹫心城堡", function()
    evt.MoveToMap(-486, 9984, 2401, 1024, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开狮鹫心城堡")

RegisterEvent(502, "离开狮鹫心城堡", function()
    if not HasItem(1462) then -- Catherine's Key
        evt.StatusText("门锁着")
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        return
    end
    evt.MoveToMap(1050, 9991, 2913, 1024, 0, 0, 0, 0, "7out03.odm") -- Erathia
end, "离开狮鹫心城堡")

