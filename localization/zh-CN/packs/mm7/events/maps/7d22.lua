-- The Hall under the Hill
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {460},
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
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [151] = { kind = "open_door", source = "opcode" },
    [152] = { kind = "teleport", source = "heuristic" },
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
    [197] = { kind = "well", source = "title" },
    [451] = { kind = "teleport", source = "heuristic" },
    [452] = { kind = "teleport", source = "heuristic" },
    [453] = { kind = "open_door", source = "opcode" },
    [454] = { kind = "generic_event", source = "opcode" },
    [455] = { kind = "generic_event", source = "opcode" },
    [456] = { kind = "generic_event", source = "opcode" },
    [457] = { kind = "generic_event", source = "opcode" },
    [458] = { kind = "generic_event", source = "opcode" },
    [459] = { kind = "generic_event", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "out14.odm", targetName = "艾维利" },
    },
    textureNames = {},
    spriteNames = {"0", "tree37"},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(3, "门", function()
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(30, DoorAction.Trigger)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(31, DoorAction.Trigger)
end, "门")

RegisterEvent(151, nil, function()
    evt.SetDoorState(1, DoorAction.Close)
end)

RegisterEvent(152, nil, function()
    evt.MoveToMap(-1383, 2328, 1, 0, 0, 0, 0, 0)
    evt.SetDoorState(1, DoorAction.Open)
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

RegisterEvent(196, "水井", nil, "水井")

RegisterEvent(197, "饮用井水", function()
    evt.StatusText("精神焕发！")
end, "饮用井水")

RegisterEvent(316, nil, function()
    if IsQBitSet(QBit(549)) or IsQBitSet(QBit(691)) then -- Solve the secret to the entrance of the Faerie Mound in Avlee and speak to the Faerie King.
        evt.SpeakNPC(391) -- Faerie King
    end
end)

RegisterEvent(451, nil, function()
    evt.MoveToMap(1233, -34, -1023, -1, 0, 0, 0, 0)
end)

RegisterEvent(452, nil, function()
    evt.MoveToMap(-1210, 194, -2047, -1, 0, 0, 0, 0)
end)

RegisterEvent(453, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1464) then -- Faerie Key
        evt.FaceAnimation(FaceAnimation.DoorLocked)
        evt.StatusText("门锁着")
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(11, DoorAction.Close)
    evt.SetDoorState(12, DoorAction.Close)
    evt.SetDoorState(13, DoorAction.Close)
    evt.SetDoorState(14, DoorAction.Close)
    evt.SetDoorState(15, DoorAction.Close)
    evt.SetDoorState(16, DoorAction.Close)
    evt.SetDoorState(20, DoorAction.Close)
end)

RegisterEvent(454, "果树", function()
    if IsAtLeast(MapVar(52), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(52), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(51, 1, "tree37")
end, "果树")

RegisterEvent(455, "果树", function()
    if IsAtLeast(MapVar(53), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(53), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(52, 1, "tree37")
end, "果树")

RegisterEvent(456, "果树", function()
    if IsAtLeast(MapVar(54), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(54), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(53, 1, "tree37")
end, "果树")

RegisterEvent(457, "果树", function()
    if IsAtLeast(MapVar(55), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(55), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(54, 1, "tree37")
end, "果树")

RegisterEvent(458, "果树", function()
    if IsAtLeast(MapVar(56), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(56), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(55, 1, "tree37")
end, "果树")

RegisterEvent(459, "果树", function()
    if IsAtLeast(MapVar(57), 1) then return end
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    SetValue(MapVar(57), 1)
    evt.StatusText("你得到了一个苹果")
    evt.SetSprite(56, 1, "tree37")
end, "果树")

RegisterEvent(460, nil, function()
    if IsAtLeast(MapVar(52), 1) then
        goto step_4
    end
    evt.SetSprite(51, 1, "0")
    goto step_5
    ::step_4::
    evt.SetSprite(51, 1, "0")
    ::step_5::
    if IsAtLeast(MapVar(53), 1) then
        goto step_8
    end
    evt.SetSprite(52, 1, "0")
    goto step_9
    ::step_8::
    evt.SetSprite(52, 1, "0")
    ::step_9::
    if IsAtLeast(MapVar(54), 1) then
        goto step_12
    end
    evt.SetSprite(53, 1, "0")
    goto step_13
    ::step_12::
    evt.SetSprite(53, 1, "0")
    ::step_13::
    if IsAtLeast(MapVar(55), 1) then
        goto step_16
    end
    evt.SetSprite(54, 1, "0")
    goto step_17
    ::step_16::
    evt.SetSprite(54, 1, "0")
    ::step_17::
    if IsAtLeast(MapVar(56), 1) then
        goto step_20
    end
    evt.SetSprite(55, 1, "0")
    goto step_21
    ::step_20::
    evt.SetSprite(55, 1, "0")
    ::step_21::
    if IsAtLeast(MapVar(57), 1) then
        goto step_24
    end
    evt.SetSprite(56, 1, "0")
    goto step_25
    ::step_24::
    evt.SetSprite(56, 1, "0")
    ::step_25::
    do return end
end)

RegisterEvent(501, "离开山丘下的大厅", function()
    evt.MoveToMap(1550, 21117, 800, 1536, 0, 0, 0, 0, "out14.odm") -- Avlee
end, "离开山丘下的大厅")

