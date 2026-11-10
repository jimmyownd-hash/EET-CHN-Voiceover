-- Lord Markham's Manor
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
    [5] = { kind = "open_door", source = "title" },
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
    [376] = { kind = "secret_event", source = "heuristic", hidden = true },
    [416] = { kind = "enter_house", source = "opcode", houseId = 215, targetName = "马克汉姆爵士之室" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out13.odm", targetName = "塔塔力雅" },
    },
    textureNames = {},
    spriteNames = {"0"},
    castSpellIds = {15},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if IsQBitSet(QBit(616)) then -- Go to Colony Zod in the Land of the Giants and slay Xenofex then return to Resurectra in Castle Lambent in Celeste.
        evt.SetSprite(2, 0, "0")
    end
    if IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
    end
end)

RegisterEvent(2, nil, function()
    if evt.CheckMonstersKilled(ActorKillCheck.Group, 56, 1, false) then -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A; at least 1 matching actor defeated
        SetValue(MapVar(6), 2)
    end
end)

RegisterEvent(3, "门", function()
    if not IsAtLeast(MapVar(6), 2) then
        if not IsAtLeast(MapVar(6), 1) then
            SetValue(MapVar(6), 1)
            evt.SpeakNPC(622) -- Guard
            return
        end
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        SetValue(MapVar(6), 2)
    end
    evt.SetDoorState(3, DoorAction.Open)
    evt.SetDoorState(4, DoorAction.Open)
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(2, DoorAction.Open)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Open)
    evt.SetDoorState(6, DoorAction.Open)
end, "门")

RegisterEvent(6, nil, function()
    evt.PlaySound(42317, 3, 227)
end)

RegisterEvent(176, "柜子", function()
    if not IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        SetValue(MapVar(6), 2)
        evt.OpenChest(1)
        return
    end
    evt.OpenChest(1)
end, "柜子")

RegisterEvent(177, "柜子", function()
    if not IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        SetValue(MapVar(6), 2)
        evt.OpenChest(2)
        return
    end
    evt.OpenChest(2)
end, "柜子")

RegisterEvent(178, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        SetValue(MapVar(6), 2)
        evt.OpenChest(3)
        return
    end
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(179, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        SetValue(MapVar(6), 2)
        evt.OpenChest(4)
        return
    end
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(180, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        SetValue(MapVar(6), 2)
        evt.OpenChest(5)
        return
    end
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(181, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(6)
        return
    end
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(182, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(7)
        return
    end
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(183, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(8)
        return
    end
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(184, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(9)
        return
    end
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(185, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(10)
        return
    end
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(186, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(11)
        return
    end
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(187, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(12)
        return
    end
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(188, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(13)
        return
    end
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(189, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(14)
        return
    end
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(190, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(15)
        return
    end
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(191, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(16)
        return
    end
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(192, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(17)
        return
    end
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(193, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(18)
        return
    end
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(194, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(19)
        return
    end
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(195, "箱子", function()
    if not IsAtLeast(MapVar(6), 2) then
        SetValue(MapVar(6), 2)
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
        evt.OpenChest(0)
        return
    end
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(376, nil, function()
    if not IsQBitSet(QBit(724)) then -- Vase - I lost it
        SetQBit(QBit(724)) -- Vase - I lost it
    end
    if IsQBitSet(QBit(653)) then return end -- Only give Markham's vase once (Markham's manor, Thief promo).
    AddValue(InventoryItem(1426), 1426) -- Vase
    SetQBit(QBit(653)) -- Only give Markham's vase once (Markham's manor, Thief promo).
    evt.SetSprite(2, 0, "0")
    evt.CastSpell(15, 20, 3, -1132, 1001, 374, 0, 0, 0) -- Sparks
end)

RegisterEvent(416, "马克汉姆爵士之室", function()
    if not IsAtLeast(MapVar(6), 2) then
        evt.EnterHouse(215) -- Lord Markham's Chamber
        return
    end
    evt.StatusText("这扇门已经锁上了")
    evt.FaceAnimation(FaceAnimation.DoorLocked)
end, "马克汉姆爵士之室")

RegisterEvent(451, nil, function()
    if IsAtLeast(MapVar(6), 1) then return end
    evt.SpeakNPC(622) -- Guard
    SetValue(MapVar(6), 1)
end)

RegisterEvent(452, nil, function()
    if IsAtLeast(MapVar(6), 2) then return end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Initiate of the Sword, spawn Fighter Plate A, spawn Swordsman A
    SetValue(MapVar(6), 2)
end)

RegisterEvent(453, nil, function()
    if IsAtLeast(MapVar(6), 2) then return end
    SetValue(MapVar(6), 0)
end)

RegisterEvent(501, "离开马克汉姆爵士的庄园", function()
    evt.MoveToMap(11012, -14936, 384, 512, 0, 0, 0, 0, "7out13.odm") -- Tatalia
end, "离开马克汉姆爵士的庄园")

