-- White Cliff Cave
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {65535, 65534, 65533},
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
    [196] = { kind = "secret_event", source = "heuristic", hidden = true },
    [197] = { kind = "secret_event", source = "heuristic", hidden = true },
    [198] = { kind = "secret_event", source = "heuristic", hidden = true },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out02.odm", targetName = "和谐谷" },
    },
    textureNames = {"cwb1"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(3, "门", function()
    evt.SetDoorState(1, DoorAction.Open)
end, "门")

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

RegisterEvent(196, nil, function()
    if IsAtLeast(MapVar(16), 1) then return end
    local randomStep = PickRandomOption(196, 2, {2, 4, 6, 7, 2, 2})
    if randomStep == 2 then
        AddValue(InventoryItem(1488), 1488) -- Iron-laced ore
    elseif randomStep == 4 then
        AddValue(InventoryItem(1488), 1488) -- Iron-laced ore
    elseif randomStep == 6 then
        evt.DamagePlayer(Players.All, const.Damage.Fire, 50)
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 7 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    end
    SetValue(MapVar(16), 1)
    evt.SetTexture(2, "cwb1")
end)

RegisterEvent(197, nil, function()
    if IsAtLeast(MapVar(17), 1) then return end
    local randomStep = PickRandomOption(197, 2, {2, 4, 6, 7, 2, 2})
    if randomStep == 2 then
        AddValue(InventoryItem(1488), 1488) -- Iron-laced ore
    elseif randomStep == 4 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 6 then
        evt.DamagePlayer(Players.All, const.Damage.Fire, 50)
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 7 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    end
    SetValue(MapVar(17), 1)
    evt.SetTexture(3, "cwb1")
end)

RegisterEvent(198, nil, function()
    if IsAtLeast(MapVar(18), 1) then return end
    local randomStep = PickRandomOption(198, 2, {2, 4, 6, 7, 2, 2})
    if randomStep == 2 then
        AddValue(InventoryItem(1488), 1488) -- Iron-laced ore
    elseif randomStep == 4 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 6 then
        evt.DamagePlayer(Players.All, const.Damage.Fire, 50)
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    elseif randomStep == 7 then
        AddValue(InventoryItem(1489), 1489) -- Siertal-laced ore
    end
    SetValue(MapVar(18), 1)
    evt.SetTexture(4, "cwb1")
end)

RegisterEvent(501, "离开白崖穴", function()
    evt.MoveToMap(9686, -17990, 702, 1024, 0, 0, 0, 0, "7out02.odm") -- Harmondale
end, "离开白崖穴")

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

RegisterEvent(65533, "", function()
    if IsAtLeast(MapVar(18), 1) then
        evt.SetTexture(4, "cwb1")
    end
end)

