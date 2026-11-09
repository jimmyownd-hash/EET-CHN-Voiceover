-- Free Haven Sewer
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {34},
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [10] = {0},
    [11] = {1},
    [14] = {2},
    [15] = {3},
    [16] = {4},
    [17] = {5},
    [18] = {6},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "opcode" },
    [7] = { kind = "open_door", source = "opcode" },
    [10] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [11] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [12] = { kind = "generic_event", source = "opcode" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [15] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [16] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [17] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [18] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [19] = { kind = "well", source = "title" },
    [20] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [21] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [22] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [23] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [24] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [25] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由天堂" },
    [26] = { kind = "open_door", source = "title" },
    [27] = { kind = "open_door", source = "opcode" },
    [28] = { kind = "passage", source = "opcode", targetMap = "6t6.blv", targetName = "巴之神殿至尊殿" },
    },
    textureNames = {},
    spriteNames = {"0"},
    castSpellIds = {90},
    timers = {
    { eventId = 65535, sourceEventId = 19, triggerStep = 7, origin = "legacy", triggerKind = "long", scheduleKind = "daily", startHour = 0, startMinute = 0, startSecond = 1 },
    { eventId = 34, sourceEventId = 34, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 10 },
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, nil, function()
    evt.SetDoorState(6, DoorAction.Close)
end)

RegisterEvent(7, nil, function()
    evt.SetDoorState(7, DoorAction.Close)
end)

RegisterEvent(8, nil, function()
    if IsQBitSet(QBit(1194)) then -- NPC
        return
    elseif IsQBitSet(QBit(1122)) then -- Capture the Prince of Thieves and bring him to Lord Anthony Stone at Castle Stone. - NPC
        SetQBit(QBit(1701)) -- Replacement for NPCs �17 ver. 6
        SetQBit(QBit(1194)) -- NPC
        evt.SpeakNPC(802) -- The Prince of Thieves
        return
    else
        return
    end
end)

RegisterEvent(9, "火把", function()
    evt.SetSprite(112, 1, "0")
    evt.SetLight(0, 1)
end, "火把")

RegisterEvent(10, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(11, "柜子", function()
    evt.OpenChest(1)
end, "柜子")

RegisterEvent(12, "下水道格栅", function()
    if not IsAtLeast(MapVar(5), 1) then
        AddValue(InventoryItem(2198), 2198) -- Sewer Key
        evt.StatusText("这里藏了东西！")
        SetValue(MapVar(5), 1)
        return
    end
    if IsAtLeast(MapVar(2), 12) then return end
    local randomStep = PickRandomOption(12, 7, {7, 10, 14, 17, 18})
    if randomStep == 7 then
        AddValue(MapVar(2), 1)
        local randomStep = PickRandomOption(12, 9, {19, 23, 19})
        if randomStep == 19 then
            evt.DamagePlayer(Players.All, const.Damage.Water, 30)
            evt.StatusText("哎哟！")
            AddValue(MapVar(2), 1)
            return
        elseif randomStep == 23 then
            AddValue(MapVar(2), 1)
            return
        end
    elseif randomStep == 10 then
        AddValue(MapVar(2), 2)
        AddValue(Gold, 2000)
        evt.StatusText("这里藏了东西！")
        return
    elseif randomStep == 14 then
        AddValue(Gold, 1000)
        evt.StatusText("这里藏了东西！")
        AddValue(MapVar(2), 1)
        return
    elseif randomStep == 17 then
        return
    elseif randomStep == 18 then
        return
    end
end, "下水道格栅")

RegisterEvent(13, "门", function()
    if not HasItem(2198) then -- Sewer Key
        evt.StatusText("门是锁着的。")
        return
    end
    evt.SetDoorState(8, DoorAction.Close)
    RemoveItem(2198) -- Sewer Key
end, "门")

RegisterEvent(14, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(15, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(16, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(17, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(18, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(19, "水井", function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.StatusText("神清气爽！")
        SetAutonote(459) -- +10 Hit points restored south west of the main Sewer chamber.
        return
    end
    SubtractValue(MapVar(4), 1)
    AddValue(CurrentHealth, 10)
    evt.StatusText("生命值恢复10点。")
    SetAutonote(459) -- +10 Hit points restored south west of the main Sewer chamber.
end, "水井")

RegisterEvent(20, "出口", function()
    evt.MoveToMap(5322, 16780, 256, 512, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(21, "出口", function()
    evt.MoveToMap(10592, 16625, 161, 1024, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(22, "出口", function()
    evt.MoveToMap(12226, 11741, 1, 1024, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(23, "出口", function()
    evt.MoveToMap(12322, 8748, 256, 512, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(24, "出口", function()
    evt.MoveToMap(9465, 8037, 256, 1024, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(25, "出口", function()
    evt.MoveToMap(12184, 8703, 256, 512, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(26, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(27, "圆柱", function()
    if IsQBitSet(QBit(1200)) then -- NPC
        evt.SetDoorState(21, DoorAction.Open)
    end
end, "圆柱")

RegisterEvent(28, nil, function()
    if IsQBitSet(QBit(1200)) then -- NPC
        evt.MoveToMap(-3078, 2819, 2049, 1536, 0, 0, 0, 0, "6t6.blv") -- Supreme Temple of Baa
    end
end)

RegisterEvent(30, "下水道格栅", function()
    if IsAtLeast(MapVar(7), 4) then return end
    AddValue(MapVar(7), 1)
    AddValue(InventoryItem(220), 220) -- Potion Bottle
end, "下水道格栅")

RegisterEvent(31, "下水道格栅", function()
    if IsAtLeast(MapVar(8), 4) then return end
    AddValue(MapVar(8), 1)
    AddValue(InventoryItem(221), 221) -- Catalyst
end, "下水道格栅")

RegisterEvent(32, "下水道格栅", function()
    if IsAtLeast(MapVar(9), 4) then return end
    AddValue(MapVar(9), 1)
    AddValue(InventoryItem(222), 222) -- Cure Wounds
end, "下水道格栅")

RegisterEvent(33, "下水道格栅", function()
    if IsAtLeast(MapVar(10), 4) then return end
    AddValue(MapVar(10), 1)
    AddValue(InventoryItem(223), 223) -- Magic Potion
end, "下水道格栅")

RegisterEvent(34, nil, function()
    evt.CastSpell(90, 6, 1, -4864, 3904, 200, -4000, 3904, 200) -- Toxic Cloud
    evt.CastSpell(90, 6, 1, -1280, 1152, 142, -1280, 3000, 142) -- Toxic Cloud
    evt.CastSpell(90, 6, 1, 2688, 5760, 142, 2000, 5760, 142) -- Toxic Cloud
    evt.CastSpell(90, 6, 1, 2624, 1216, 142, -2304, 6016, 142) -- Toxic Cloud
    evt.CastSpell(90, 6, 1, 1536, 6144, 142, 1536, 4000, 142) -- Toxic Cloud
    evt.CastSpell(90, 6, 1, 384, 3328, 1700, 384, 3328, 0) -- Toxic Cloud
end)

RegisterEvent(65535, "", function()
    SetValue(MapVar(4), 20)
end)

