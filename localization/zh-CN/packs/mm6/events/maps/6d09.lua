-- Snergle's Iron Mines
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [27] = {1},
    [28] = {2},
    [29] = {3},
    [30] = {4},
    [31] = {5},
    [32] = {6},
    [33] = {7},
    [34] = {8},
    [35] = {9},
    [36] = {10},
    [37] = {11},
    [77] = {12},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "opcode" },
    [23] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [26] = { kind = "open_door", source = "title" },
    [27] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [28] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [29] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [30] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [31] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [32] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [33] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [34] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [35] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [36] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [37] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [40] = { kind = "generic_event", source = "opcode" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc3.odm", targetName = "诅咒沼泽" },
    [61] = { kind = "generic_event", source = "opcode" },
    [62] = { kind = "generic_event", source = "opcode" },
    [63] = { kind = "open_door", source = "opcode" },
    [77] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 60, sourceEventId = 60, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 0, startMinute = 0, startSecond = 1 },
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", function()
    if not HasItem(2192) then -- Cell Key
        evt.StatusText("门是锁着的")
        return
    end
    evt.SetDoorState(2, DoorAction.Close)
    RemoveItem(2192) -- Cell Key
end, "门")

RegisterEvent(3, "门", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("门是锁着的")
        return
    end
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "门", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("门是锁着的")
        return
    end
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "双开门", function()
    evt.SetDoorState(6, DoorAction.Close)
    evt.SetDoorState(7, DoorAction.Close)
end, "双开门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    if not IsAtLeast(ActualIntellect, 40) then
        evt.ForPlayer(Players.All)
        evt.DamagePlayer(Players.All, const.Damage.Fire, 30)
        evt.StatusText("你不够聪明！")
        return
    end
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(13, DoorAction.Close)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(15, DoorAction.Close)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(20, DoorAction.Close)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(21, DoorAction.Close)
end, "门")

RegisterEvent(22, nil, function()
    evt.SetDoorState(22, DoorAction.Close)
end)

RegisterEvent(23, "双开门", function()
    evt.SetDoorState(23, DoorAction.Close)
    evt.SetDoorState(24, DoorAction.Close)
end, "双开门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(25, DoorAction.Close)
end, "门")

RegisterEvent(26, "门", function()
    evt.SetDoorState(26, DoorAction.Close)
end, "门")

RegisterEvent(27, "柜子", function()
    evt.OpenChest(1)
    SetValue(MapVar(2), 1)
    if IsAtLeast(MapVar(21), 1) then return end
    evt.SummonMonsters(1, 1, 2, -1280, 3200, 0, 0, 0) -- encounter slot 1 "BDwarf" tier A, count 2, pos=(-1280, 3200, 0), actor group 0, no unique actor name
    evt.SummonMonsters(1, 2, 2, -1920, 2688, 0, 0, 0) -- encounter slot 1 "BDwarf" tier B, count 2, pos=(-1920, 2688, 0), actor group 0, no unique actor name
    evt.SummonMonsters(1, 3, 2, -2560, 2944, 0, 0, 0) -- encounter slot 1 "BDwarf" tier C, count 2, pos=(-2560, 2944, 0), actor group 0, no unique actor name
    evt.SummonMonsters(3, 1, 1, -1792, 3584, 0, 0, 0) -- encounter slot 3 "Demon" tier A, count 1, pos=(-1792, 3584, 0), actor group 0, no unique actor name
    SetValue(MapVar(21), 1)
end, "柜子")

RegisterEvent(28, "柜子", function()
    evt.OpenChest(2)
end, "柜子")

RegisterEvent(29, "柜子", function()
    evt.OpenChest(3)
end, "柜子")

RegisterEvent(30, "柜子", function()
    evt.OpenChest(4)
end, "柜子")

RegisterEvent(31, "柜子", function()
    evt.OpenChest(5)
end, "柜子")

RegisterEvent(32, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(33, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(34, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(35, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(36, "柜子", function()
    evt.OpenChest(10)
end, "柜子")

RegisterEvent(37, "柜子", function()
    evt.OpenChest(11)
end, "柜子")

RegisterNoOpEvent(39, "Bookshelves", "Bookshelves")

RegisterEvent(40, "书架", function()
    evt.StatusText("\"你翻阅书籍，却没有找到任何感兴趣的东西。\"")
    evt.FaceExpression(39)
end, "书架")

RegisterEvent(41, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(2108) then return end -- Key to Snergle's Chambers
    SetQBit(QBit(1025)) -- 1 D09, key to open D05
    evt.SpeakNPC(851) -- Ghim Hammond
end)

RegisterEvent(50, "出口", function()
    evt.MoveToMap(20212, 13238, 97, 1408, 0, 0, 0, 0, "outc3.odm") -- Mire of the Damned
end, "出口")

RegisterEvent(60, nil, function()
    SetValue(MapVar(51), 20)
    SetValue(MapVar(52), 20)
end)

RegisterEvent(61, "水池", function()
    if not IsAtLeast(MapVar(51), 1) then
        evt.StatusText("神清气爽！")
        SetAutonote(457) -- 10 Hit points cured by the right side pool in Snergle's Iron Mines.
        return
    end
    SubtractValue(MapVar(51), 1)
    AddValue(CurrentHealth, 10)
    evt.StatusText("生命值恢复10点。")
    SetAutonote(457) -- 10 Hit points cured by the right side pool in Snergle's Iron Mines.
end, "水池")

RegisterEvent(62, "水池", function()
    if not IsAtLeast(MapVar(52), 1) then
        evt.StatusText("神清气爽！")
        SetAutonote(458) -- 10 Spell points restored by the left side pool in Snergle's Iron Mines.
        return
    end
    SubtractValue(MapVar(52), 1)
    AddValue(CurrentSpellPoints, 10)
    evt.StatusText("法术值恢复10点。")
    SetAutonote(458) -- 10 Spell points restored by the left side pool in Snergle's Iron Mines.
end, "水池")

RegisterEvent(63, nil, function()
    evt.SetDoorState(27, DoorAction.Close)
end)

RegisterEvent(64, "书架", function()
    if IsAtLeast(MapVar(3), 1) then return end
    AddValue(InventoryItem(1902), 1902) -- Torch Light
    SetValue(MapVar(3), 1)
end, "书架")

RegisterEvent(65, "书架", function()
    if IsAtLeast(MapVar(4), 1) then return end
    AddValue(InventoryItem(1903), 1903) -- Fire Bolt
    SetValue(MapVar(4), 1)
end, "书架")

RegisterEvent(66, "书架", function()
    if IsAtLeast(MapVar(5), 1) then return end
    AddValue(InventoryItem(1905), 1905) -- Fire Resistance
    SetValue(MapVar(5), 1)
end, "书架")

RegisterEvent(67, "书架", function()
    if IsAtLeast(MapVar(6), 1) then return end
    AddValue(InventoryItem(1915), 1915) -- Wizard Eye
    SetValue(MapVar(6), 1)
end, "书架")

RegisterEvent(68, "书架", function()
    if IsAtLeast(MapVar(7), 1) then return end
    AddValue(InventoryItem(1916), 1916) -- Feather Fall
    SetValue(MapVar(7), 1)
end, "书架")

RegisterEvent(69, "书架", function()
    if IsAtLeast(MapVar(8), 1) then return end
    AddValue(InventoryItem(1918), 1918) -- Air Resistance
    SetValue(MapVar(8), 1)
end, "书架")

RegisterEvent(70, "书架", function()
    if IsAtLeast(MapVar(9), 1) then return end
    AddValue(InventoryItem(1928), 1928) -- Awaken
    SetValue(MapVar(9), 1)
end, "书架")

RegisterEvent(71, "书架", function()
    if IsAtLeast(MapVar(10), 1) then return end
    AddValue(InventoryItem(1929), 1929) -- Poison Spray
    SetValue(MapVar(10), 1)
end, "书架")

RegisterEvent(72, "书架", function()
    if IsAtLeast(MapVar(11), 1) then return end
    AddValue(InventoryItem(1930), 1930) -- Water Resistance
    SetValue(MapVar(11), 1)
end, "书架")

RegisterEvent(73, "书架", function()
    if IsAtLeast(MapVar(12), 1) then return end
    AddValue(InventoryItem(1980), 1980) -- Cure Weakness
    SetValue(MapVar(12), 1)
end, "书架")

RegisterEvent(74, "书架", function()
    if IsAtLeast(MapVar(13), 1) then return end
    AddValue(InventoryItem(1981), 1981) -- Heal
    SetValue(MapVar(13), 1)
end, "书架")

RegisterEvent(75, "书架", function()
    if IsAtLeast(MapVar(14), 1) then return end
    AddValue(InventoryItem(1983), 1983) -- Body Resistance
    SetValue(MapVar(14), 1)
end, "书架")

RegisterEvent(76, "书架", function()
    if IsAtLeast(MapVar(15), 1) then return end
    AddValue(InventoryItem(1960), 1960) -- Remove Curse
    SetValue(MapVar(15), 1)
end, "书架")

RegisterEvent(77, "柜子", function()
    evt.OpenChest(12)
end, "柜子")

