-- The School of Sorcery
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {454},
    onLoad = {1},
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
    [3] = { kind = "use_lever", source = "title" },
    [4] = { kind = "use_lever", source = "title" },
    [5] = { kind = "use_lever", source = "title" },
    [6] = { kind = "use_lever", source = "title" },
    [7] = { kind = "open_door", source = "opcode" },
    [8] = { kind = "use_lever", source = "title" },
    [9] = { kind = "use_lever", source = "title" },
    [10] = { kind = "use_switch", source = "title" },
    [11] = { kind = "open_door", source = "opcode" },
    [12] = { kind = "open_door", source = "opcode" },
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
    [416] = { kind = "open_door", source = "title" },
    [454] = { kind = "secret_event", source = "heuristic", hidden = true },
    [455] = { kind = "open_door", source = "title" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "7out06.odm", targetName = "布拉卡达沙漠" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {6, 18},
    timers = {
    { eventId = 65535, sourceEventId = 196, triggerStep = 22, origin = "legacy", triggerKind = "long", scheduleKind = "weekly" },
    { eventId = 65534, sourceEventId = 196, triggerStep = 25, origin = "legacy", triggerKind = "long", scheduleKind = "yearly" },
    { eventId = 65533, sourceEventId = 196, triggerStep = 26, origin = "legacy", triggerKind = "long", scheduleKind = "yearly" },
    },
})

RegisterEvent(1, nil, function()
    if IsAtLeast(MapVar(6), 2) then
        evt.SetMonGroupBit(55, MonsterBits.Hostile, 1) -- actor group 55: Wizard
        evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Archmage, spawn Golem A, spawn Mage A
        evt.SetMonGroupBit(57, MonsterBits.Hostile, 1)
    end
end)

RegisterEvent(3, "拉杆", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "拉杆")

RegisterEvent(4, "拉杆", function()
    evt.SetDoorState(4, DoorAction.Close)
    evt.SetDoorState(5, DoorAction.Close)
    evt.SetDoorState(8, DoorAction.Open)
end, "拉杆")

RegisterEvent(5, "拉杆", function()
    evt.SetDoorState(8, DoorAction.Close)
    evt.SetDoorState(1, DoorAction.Open)
    evt.SetDoorState(6, DoorAction.Open)
    evt.SetDoorState(4, DoorAction.Open)
    evt.SetDoorState(5, DoorAction.Open)
end, "拉杆")

RegisterEvent(6, "拉杆", function()
    evt.SetDoorState(9, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(7, nil, function()
    evt.SetDoorState(10, DoorAction.Trigger)
    evt.SetDoorState(11, DoorAction.Trigger)
end)

RegisterEvent(8, "拉杆", function()
    evt.SetDoorState(1, DoorAction.Close)
    evt.SetDoorState(6, DoorAction.Close)
    evt.SetDoorState(8, DoorAction.Open)
end, "拉杆")

RegisterEvent(9, "拉杆", function()
    evt.SetDoorState(2, DoorAction.Close)
    evt.SetDoorState(7, DoorAction.Close)
end, "拉杆")

RegisterEvent(10, "开关", function()
    evt.SetDoorState(24, DoorAction.Open)
    evt.SetDoorState(20, DoorAction.Open)
    evt.SetDoorState(21, DoorAction.Open)
end, "开关")

RegisterEvent(11, nil, function()
    evt.SetDoorState(22, DoorAction.Open)
end)

RegisterEvent(12, nil, function()
    evt.SetDoorState(23, DoorAction.Open)
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

RegisterEvent(196, "书柜", function()
    if evt.CheckMonstersKilled(ActorKillCheck.ActorIdOe, 0, 0, false) then return end -- OE actor 0; all matching actors defeated
    if not IsQBitSet(QBit(657)) then return end -- Membership to the School of Sorcery Scroll Shop
    if not IsAtLeast(MapVar(4), 3) then
        local randomStep = PickRandomOption(196, 5, {5, 5, 5, 7, 18, 21})
        if randomStep == 5 then
            evt.GiveItem(5, ItemType.Scroll_)
            local randomStep = PickRandomOption(196, 18, {18, 18, 18, 18, 21, 21})
            if randomStep == 18 then
                AddValue(MapVar(4), 1)
            end
        elseif randomStep == 7 then
            local randomStep = PickRandomOption(196, 8, {8, 10, 12, 14, 16, 17})
            if randomStep == 8 then
                AddValue(InventoryItem(1203), 1203) -- Fire Bolt
            elseif randomStep == 10 then
                AddValue(InventoryItem(1214), 1214) -- Feather Fall
            elseif randomStep == 12 then
                AddValue(InventoryItem(1216), 1216) -- Sparks
            elseif randomStep == 14 then
                AddValue(InventoryItem(1281), 1281) -- Dispel Magic
            elseif randomStep == 16 then
                AddValue(InventoryItem(1269), 1269) -- Heal
            end
            local randomStep = PickRandomOption(196, 18, {18, 18, 18, 18, 21, 21})
            if randomStep == 18 then
                AddValue(MapVar(4), 1)
            end
        elseif randomStep == 18 then
            AddValue(MapVar(4), 1)
        end
        return
    end
    evt.StatusText("没有让你感兴趣的物品")
end, "书柜")

RegisterEvent(197, "书柜", function()
    if IsQBitSet(QBit(666)) then return end -- Got Scroll of Waves
    AddValue(InventoryItem(1504), 1504) -- Scroll of Waves
    SetQBit(QBit(726)) -- Scroll of Waves - I lost it
    SetQBit(QBit(666)) -- Got Scroll of Waves
end, "书柜")

RegisterEvent(416, "门", function()
    evt.SpeakNPC(387) -- Thomas Grey
end, "门")

RegisterEvent(451, nil, function()
    if IsAtLeast(MapVar(6), 1) then return end
    evt.SpeakNPC(621) -- Guard
    SetValue(MapVar(6), 1)
end)

RegisterEvent(452, nil, function()
    if IsAtLeast(MapVar(6), 2) then return end
    evt.SetMonGroupBit(56, MonsterBits.Hostile, 1) -- actor group 56: Archmage, spawn Golem A, spawn Mage A
    SetValue(MapVar(6), 2)
end)

RegisterEvent(453, nil, function()
    if IsAtLeast(MapVar(6), 2) then return end
    SetValue(MapVar(6), 0)
end)

RegisterEvent(454, nil, function()
    if IsAtLeast(Unknown1, 0) then
        evt.CastSpell(18, 15, 4, 1074, 1870, 1, 1074, 293, 1) -- Lightning Bolt
        evt.CastSpell(18, 15, 4, -1106, 1882, 1, -1106, 293, 1) -- Lightning Bolt
        evt.CastSpell(6, 10, 4, -1220, 427, 1, 1209, 427, 1) -- Fireball
        evt.CastSpell(6, 10, 4, 1209, 427, 1, -1220, 427, 1) -- Fireball
    end
end)

RegisterEvent(455, "门", function()
    evt.DamagePlayer(Players.Current, const.Damage.Water, 10)
end, "门")

RegisterEvent(501, "离开巫术学院", function()
    evt.MoveToMap(1530, -16578, 1377, 512, 0, 0, 0, 0, "7out06.odm") -- The Bracada Desert
end, "离开巫术学院")

RegisterEvent(65535, "", function()
    SetValue(MapVar(4), 0)
end)

RegisterEvent(65534, "", function()
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(657)) -- Membership to the School of Sorcery Scroll Shop
    evt.SetNPCTopic(620, 1, 926) -- Eric Swarrel topic 1: Book Shop
end)

RegisterEvent(65533, "", function()
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(657)) -- Membership to the School of Sorcery Scroll Shop
    evt.SetNPCTopic(620, 1, 926) -- Eric Swarrel topic 1: Book Shop
end)

