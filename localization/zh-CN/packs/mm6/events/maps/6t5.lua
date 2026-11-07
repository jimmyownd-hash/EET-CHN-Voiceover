-- Temple of the Moon
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [13] = {1},
    [14] = {2},
    [15] = {3},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "use_switch", source = "title" },
    [13] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [14] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [15] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [16] = { kind = "shrine", source = "title" },
    [17] = { kind = "shrine", source = "title" },
    [18] = { kind = "shrine", source = "title" },
    [19] = { kind = "shrine", source = "title" },
    [20] = { kind = "shrine", source = "title" },
    [21] = { kind = "shrine", source = "title" },
    [22] = { kind = "generic_event", source = "opcode" },
    [23] = { kind = "open_door", source = "title" },
    [24] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [27] = { kind = "shrine", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc2.odm", targetName = "自由港" },
    [51] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "门", function()
    if not IsAtLeast(MapVar(8), 21) then
        evt.StatusText("门纹丝不动")
        return
    end
    evt.SetDoorState(3, DoorAction.Close)
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "开关", function()
    evt.SetDoorState(11, DoorAction.Trigger)
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(16, DoorAction.Trigger)
end, "开关")

RegisterEvent(13, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(14, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(15, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(16, "力量祭坛", function()
    if IsAtLeast(MapVar(9), 1) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        SetValue(MapVar(5), 1)
        AddValue(MapVar(8), 3)
        evt.StatusText("哎哟！")
        return
    elseif IsAtLeast(MapVar(5), 1) then
        return
    elseif IsAtLeast(MapVar(2), 1) then
        SetValue(MapVar(5), 1)
        AddValue(MapVar(8), 3)
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(BaseMight, 5)
        end
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
    else
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        SetValue(MapVar(5), 1)
        AddValue(MapVar(8), 3)
        evt.StatusText("哎哟！")
    end
end, "力量祭坛")

RegisterEvent(17, "生命祭坛", function()
    if IsAtLeast(MapVar(9), 1) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(7), 1)
        AddValue(MapVar(8), 1)
        evt.StatusText("哎哟！")
        return
    elseif IsAtLeast(MapVar(7), 1) then
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
        return
    else
        SetValue(MapVar(7), 1)
        AddValue(MapVar(8), 1)
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(BasePersonality, 5)
        end
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
        return
    end
end, "生命祭坛")

RegisterEvent(18, "耐力祭坛", function()
    if IsAtLeast(MapVar(9), 1) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        SetValue(MapVar(3), 1)
        AddValue(MapVar(8), 4)
        evt.StatusText("哎哟！")
        return
    elseif IsAtLeast(MapVar(3), 1) then
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
        return
    elseif IsAtLeast(MapVar(5), 1) then
        SetValue(MapVar(3), 1)
        AddValue(MapVar(8), 4)
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(BaseEndurance, 5)
        end
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
    else
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        SetValue(MapVar(3), 1)
        AddValue(MapVar(8), 4)
        evt.StatusText("哎哟！")
    end
end, "耐力祭坛")

RegisterEvent(19, "精准祭坛", function()
    if IsAtLeast(MapVar(9), 1) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        AddValue(MapVar(8), 2)
        SetValue(MapVar(2), 1)
        evt.StatusText("哎哟！")
        return
    elseif IsAtLeast(MapVar(2), 1) then
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
        return
    elseif IsAtLeast(MapVar(7), 1) then
        SetValue(MapVar(2), 1)
        AddValue(MapVar(8), 2)
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(BaseAccuracy, 5)
        end
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
    else
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        AddValue(MapVar(8), 2)
        SetValue(MapVar(2), 1)
        evt.StatusText("哎哟！")
    end
end, "准确祭坛")

RegisterEvent(20, "速度祭坛", function()
    if IsAtLeast(MapVar(9), 1) then
        SetValue(MapVar(6), 1)
        SetValue(MapVar(9), 1)
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        AddValue(MapVar(8), 5)
        evt.StatusText("哎哟！")
        return
    elseif IsAtLeast(MapVar(6), 1) then
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
        return
    elseif IsAtLeast(MapVar(3), 1) then
        SetValue(MapVar(6), 1)
        AddValue(MapVar(8), 5)
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(BaseSpeed, 5)
        end
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
    else
        SetValue(MapVar(6), 1)
        SetValue(MapVar(9), 1)
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        AddValue(MapVar(8), 5)
        evt.StatusText("哎哟！")
    end
end, "速度祭坛")

RegisterEvent(21, "幸运祭坛", function()
    if IsAtLeast(MapVar(9), 1) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        SetValue(MapVar(4), 1)
        AddValue(MapVar(8), 6)
        evt.StatusText("哎哟！")
        return
    elseif IsAtLeast(MapVar(4), 1) then
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
        return
    elseif IsAtLeast(MapVar(6), 1) then
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if player == Players.Member0 then
                AddValue(BaseLuck, 2)
            else
                AddValue(BaseLuck, 5)
            end
        end
        SetValue(MapVar(4), 1)
        AddValue(MapVar(8), 6)
        evt.StatusText("你跪在祭坛前默默祈祷片刻。")
    else
        evt.DamagePlayer(Players.All, const.Damage.Physical, 10)
        SetValue(MapVar(9), 1)
        SetValue(MapVar(4), 1)
        AddValue(MapVar(8), 6)
        evt.StatusText("哎哟！")
    end
end, "幸运祭坛")

RegisterEvent(22, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("生命高于一切，精准先于力量，耐力先于速度，最后是运气。")
    evt._PressAnyKey(22, 2)
end, "铭牌")

RegisterEvent(23, "门", function()
    evt.SetDoorState(13, DoorAction.Close)
end, "门")

RegisterEvent(24, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(15, DoorAction.Close)
end, "门")

RegisterEvent(27, "月亮祭坛", function()
    if IsQBitSet(QBit(1198)) then return end -- NPC
    if not IsQBitSet(QBit(1143)) then return end -- Visit the Altar of the Moon in the Temple of the Moon at midnight of a full moon. - NPC
    if IsAtLeast(Hour, 1) then
        return
    elseif IsAtLeast(Hour, 0) then
        evt.SpeakNPC(1091) -- Loretta Fleise
    else
        return
    end
end, "月亮祭坛")

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-18178, 19695, 161, 512, 0, 0, 0, 0, "outc2.odm") -- Free Haven
end, "出口")

RegisterEvent(51, nil, function()
    if IsAtLeast(MapVar(21), 1) then return end
    SetValue(MapVar(21), 1)
    evt.GiveItem(6, 37)
end)

RegisterEvent(52, nil, function()
    if IsAtLeast(MapVar(22), 1) then return end
    SetValue(MapVar(22), 1)
    AddValue(InventoryItem(1841), 1841) -- Stone to Flesh
end)

RegisterEvent(53, nil, function()
    if IsAtLeast(MapVar(23), 1) then return end
    SetValue(MapVar(23), 1)
    AddValue(InventoryItem(1841), 1841) -- Stone to Flesh
end)

RegisterEvent(54, nil, function()
    if IsAtLeast(MapVar(24), 1) then return end
    SetValue(MapVar(24), 1)
    AddValue(InventoryItem(1841), 1841) -- Stone to Flesh
end)

RegisterEvent(55, nil, function()
    if IsAtLeast(MapVar(25), 1) then return end
    SetValue(MapVar(25), 1)
    AddValue(InventoryItem(1841), 1841) -- Stone to Flesh
end)

RegisterEvent(56, nil, function()
    if IsAtLeast(MapVar(26), 1) then return end
    SetValue(MapVar(26), 1)
    AddValue(InventoryItem(1841), 1841) -- Stone to Flesh
end)

