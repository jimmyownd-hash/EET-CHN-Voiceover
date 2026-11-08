-- The Tularean Caves
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1, 65535, 65534},
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
    [157] = { kind = "teleport", source = "heuristic" },
    [158] = { kind = "teleport", source = "heuristic" },
    [159] = { kind = "teleport", source = "heuristic" },
    [160] = { kind = "teleport", source = "heuristic" },
    [161] = { kind = "open_door", source = "opcode" },
    [162] = { kind = "teleport", source = "heuristic" },
    [163] = { kind = "teleport", source = "heuristic" },
    [164] = { kind = "teleport", source = "heuristic" },
    [165] = { kind = "teleport", source = "heuristic" },
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
    [376] = { kind = "open_door", source = "title" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out04.odm", targetName = "土拉立安森林" },
    [502] = { kind = "passage", source = "opcode", targetMap = "7d32.blv", targetName = "那文城堡" },
    },
    textureNames = {"cwb1", "trim11_16"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 151, sourceEventId = 151, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 4 },
    { eventId = 152, sourceEventId = 152, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 5 },
    { eventId = 153, sourceEventId = 153, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 4 },
    { eventId = 154, sourceEventId = 154, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 3 },
    { eventId = 155, sourceEventId = 155, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 4 },
    { eventId = 156, sourceEventId = 156, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 2 },
    },
})

RegisterEvent(1, nil, function()
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: spawn Elf Spearman A
    if IsAtLeast(MapVar(3), 1) then
        evt.SetFacetBit(1, FacetBits.Untouchable, 1)
        evt.SetFacetBit(1, FacetBits.Fluid, 1)
        evt.SetTexture(1, "trim11_16")
    end
end)

RegisterEvent(3, "门", function()
    evt.SetDoorState(12, DoorAction.Trigger)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Trigger)
end, "门")

RegisterEvent(151, nil, function()
    evt.SetDoorState(9, DoorAction.Trigger)
end)

RegisterEvent(152, nil, function()
    evt.SetDoorState(10, DoorAction.Trigger)
end)

RegisterEvent(153, nil, function()
    evt.SetDoorState(11, DoorAction.Trigger)
end)

RegisterEvent(154, nil, function()
    evt.SetDoorState(1, DoorAction.Trigger)
end)

RegisterEvent(155, nil, function()
    evt.SetDoorState(2, DoorAction.Trigger)
end)

RegisterEvent(156, nil, function()
    evt.SetDoorState(3, DoorAction.Trigger)
end)

RegisterEvent(157, nil, function()
    evt.MoveToMap(-5248, -7552, 768, 0, 0, 0, 0, 0)
end)

RegisterEvent(158, nil, function()
    evt.MoveToMap(-4640, -7901, 768, 0, 0, 0, 0, 0)
end)

RegisterEvent(159, nil, function()
    evt.MoveToMap(-5248, -8320, 768, 0, 0, 0, 0, 0)
end)

RegisterEvent(160, nil, function()
    evt.MoveToMap(-6912, 14592, -576, 0, 0, 0, 0, 0)
end)

RegisterEvent(161, nil, function()
    evt.SetDoorState(8, DoorAction.Trigger)
    SetValue(MapVar(3), 1)
    AddValue(MapVar(4), 1)
    evt.SetFacetBit(1, FacetBits.Untouchable, 1)
    evt.SetFacetBit(1, FacetBits.Fluid, 1)
    evt.SetTexture(1, "trim11_16")
end)

RegisterEvent(162, nil, function()
    if not IsAtLeast(MapVar(3), 1) then return end
    local randomStep = PickRandomOption(162, 3, {4, 6, 8})
    if randomStep == 4 then
        evt.MoveToMap(256, -128, 1, 0, 0, 0, 0, 0)
        return
    elseif randomStep == 6 then
        evt.MoveToMap(-10624, 2304, -832, 0, 0, 0, 0, 0)
        return
    elseif randomStep == 8 then
        evt.MoveToMap(-4096, -10624, 832, 0, 0, 0, 0, 0)
        return
    end
end)

RegisterEvent(163, nil, function()
    if not IsAtLeast(MapVar(3), 1) then return end
    local randomStep = PickRandomOption(163, 3, {4, 6, 8})
    if randomStep == 4 then
        evt.MoveToMap(256, -128, 1, 0, 0, 0, 0, 0)
        return
    elseif randomStep == 6 then
        evt.MoveToMap(-10624, 2304, -832, 0, 0, 0, 0, 0)
        return
    elseif randomStep == 8 then
        evt.MoveToMap(-4096, -10624, 832, 0, 0, 0, 0, 0)
        return
    end
end)

RegisterEvent(164, nil, function()
    if IsAtLeast(MapVar(3), 1) then
        evt.MoveToMap(6016, 6528, 1528, 0, 0, 0, 0, 0)
    end
end)

RegisterEvent(165, nil, function()
    evt.MoveToMap(2816, 7552, 288, 0, 0, 0, 0, 0)
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

RegisterEvent(196, "矿脉", function()
    if IsAtLeast(MapVar(16), 1) then return end
    local randomStep = PickRandomOption(196, 2, {2, 4, 6, 8, 2, 2})
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

RegisterEvent(197, "矿脉", function()
    if IsAtLeast(MapVar(17), 1) then return end
    local randomStep = PickRandomOption(197, 2, {2, 4, 6, 8, 2, 2})
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

RegisterEvent(376, "门", function()
    if not IsQBitSet(QBit(1696)) then -- Replacement for NPCs ¹72 ver. 7
        if IsQBitSet(QBit(1695)) then -- Replacement for NPCs ¹71 ver. 7
            return
        elseif IsQBitSet(QBit(593)) then -- Gave Loren to Catherine
            evt.FaceAnimation(FaceAnimation.DoorLocked)
        elseif IsQBitSet(QBit(595)) then -- Gave false Loren to Catherine (betray)
            return
        elseif IsQBitSet(QBit(605)) then -- Tularean Caves. Got Loren
            evt.FaceAnimation(FaceAnimation.DoorLocked)
        else
            SetQBit(QBit(1695)) -- Replacement for NPCs ¹71 ver. 7
            evt.ForPlayer(Players.All)
            SetQBit(QBit(605)) -- Tularean Caves. Got Loren
            evt.SpeakNPC(410) -- Loren Steel
            return
        end
        return
    end
    evt.FaceAnimation(FaceAnimation.DoorLocked)
end, "门")

RegisterEvent(501, "出口：图拉利昂洞穴", function()
    evt.MoveToMap(-13798, 19726, 4192, 1024, 0, 0, 0, 0, "7out04.odm") -- The Tularean Forest
end, "出口：图拉利昂洞穴")

RegisterEvent(502, "出口：图拉利昂洞穴", function()
    evt.MoveToMap(-10183, 12574, -1967, 1792, 0, 0, 0, 0, "7d32.blv") -- Castle Navan
end, "出口：图拉利昂洞穴")

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

