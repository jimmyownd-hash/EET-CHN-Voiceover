-- Shadow Guild Hideout
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {21},
    onLoad = {25},
    onLeave = {},
    openedChestIds = {
    [17] = {1},
    [18] = {2},
    [19] = {3},
    },
    contextActions = {
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "use_switch", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "use_switch", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [12] = { kind = "use_switch", source = "title" },
    [13] = { kind = "use_switch", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "opcode" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [18] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [19] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [20] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd3.odm", targetName = "铁拳城堡" },
    [21] = { kind = "secret_event", source = "heuristic", hidden = true },
    [26] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {},
    spriteNames = {"0"},
    castSpellIds = {6},
    timers = {
    },
})

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "开关", function()
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(8, DoorAction.Trigger)
end, "开关")

RegisterEvent(4, "门", function()
    if not HasItem(2180) then -- Guild Key
        evt.StatusText("门是锁着的。")
        return
    end
    RemoveItem(2180) -- Guild Key
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "开关", function()
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(8, DoorAction.Trigger)
end, "开关")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(12, "开关", function()
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(11, DoorAction.Trigger)
end, "开关")

RegisterEvent(13, "开关", function()
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(11, DoorAction.Trigger)
end, "开关")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, nil, function()
    evt.SetDoorState(15, DoorAction.Close)
end)

RegisterEvent(16, "门", function()
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(17, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(18, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(19, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(20, "出口", function()
    evt.MoveToMap(-350, 18784, 256, 1792, 0, 0, 0, 0, "outd3.odm") -- Castle Ironfist
end, "出口")

RegisterEvent(21, nil, function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.ForPlayer(Players.All)
        if not HasItem(2180) then -- Guild Key
            evt.CastSpell(6, 3, 1, -52, 1162, 128, 0, 0, 0) -- Fireball
            return
        end
    end
    SetValue(MapVar(2), 1)
end)

RegisterEvent(22, nil, function()
    if IsQBitSet(QBit(1036)) then return end -- 12 D3, given when you save Mom.
    evt.SpeakNPC(978) -- Sharry Carnegie
    SetQBit(QBit(1703)) -- Replacement for NPCs �193 ver. 6
    SetQBit(QBit(1036)) -- 12 D3, given when you save Mom.
end)

RegisterEvent(25, nil, function()
    if IsQBitSet(QBit(1036)) then -- 12 D3, given when you save Mom.
        evt.SetSprite(52, 1, "0")
        evt.SetSprite(53, 1, "0")
        evt.SetSprite(54, 1, "0")
        evt.SetSprite(55, 1, "0")
        evt.SetSprite(56, 1, "0")
        evt.SetSprite(57, 1, "0")
    end
end)

RegisterEvent(26, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    SetValue(MapVar(3), 1)
    evt.GiveItem(4, ItemType.Ring_)
end)

