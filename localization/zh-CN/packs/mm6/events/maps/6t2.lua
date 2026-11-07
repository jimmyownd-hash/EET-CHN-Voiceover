-- Temple of the Fist
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {11},
    onLeave = {},
    openedChestIds = {
    [5] = {0},
    [6] = {1},
    [7] = {2},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "opcode" },
    [4] = { kind = "use_switch", source = "title" },
    [5] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [6] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [7] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [8] = { kind = "generic_event", source = "opcode" },
    [9] = { kind = "generic_event", source = "opcode" },
    [10] = { kind = "open_door", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd2.odm", targetName = "私货湾" },
    },
    textureNames = {},
    spriteNames = {"0"},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", nil, "门")

RegisterEvent(3, "闪烁的火把", function()
    evt.SetDoorState(3, DoorAction.Close)
    evt.StatusText("你拉动火把，它在手中移动了")
end, "闪烁的火把")

RegisterEvent(4, "开关", function()
    evt.SetDoorState(4, DoorAction.Close)
    evt.SetDoorState(2, DoorAction.Close)
end, "开关")

RegisterEvent(5, "柜子", function()
    evt.OpenChest(0)
end, "柜子")

RegisterEvent(6, "柜子", function()
    evt.OpenChest(1)
end, "柜子")

RegisterEvent(7, "满满的麻袋", function()
    evt.OpenChest(2)
end, "装满的口袋")

RegisterEvent(8, nil, function()
    evt.ForPlayer(Players.All)
    SubtractValue(MightBonus, 10)
    evt.StatusText("骷髅似乎在吸取你的力量")
end)

RegisterEvent(9, "邪恶水晶", function()
    if IsQBitSet(QBit(1045)) then return end -- 21 T2, Given when evil crystal is destroyed
    evt.SetSprite(25, 0, "0")
    SetQBit(QBit(1045)) -- 21 T2, Given when evil crystal is destroyed
    evt.StatusText("你摧毁了邪恶水晶")
end, "邪恶水晶")

RegisterEvent(10, "门", function()
    evt.StatusText("门纹丝不动")
end, "门")

RegisterEvent(11, nil, function()
    if IsQBitSet(QBit(1045)) then -- 21 T2, Given when evil crystal is destroyed
        evt.SetSprite(25, 0, "0")
    end
end)

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-21001, -4653, 257, 1536, 0, 0, 0, 0, "outd2.odm") -- Bootleg Bay
end, "出口")

RegisterEvent(55, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    AddValue(InventoryItem(1877), 1877) -- Flying Fist
end)

RegisterEvent(56, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    SetValue(MapVar(3), 1)
    AddValue(InventoryItem(1877), 1877) -- Flying Fist
end)

RegisterEvent(57, nil, function()
    if IsAtLeast(MapVar(4), 1) then return end
    SetValue(MapVar(4), 1)
    AddValue(InventoryItem(1877), 1877) -- Flying Fist
end)

RegisterEvent(58, nil, function()
    if IsAtLeast(MapVar(5), 1) then return end
    SetValue(MapVar(5), 1)
    AddValue(InventoryItem(1877), 1877) -- Flying Fist
end)

