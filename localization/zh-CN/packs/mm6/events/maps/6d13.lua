-- The Monolith
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {26},
    onLeave = {},
    openedChestIds = {
    [13] = {0},
    [14] = {1},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "opcode" },
    [2] = { kind = "open_door", source = "opcode" },
    [3] = { kind = "open_door", source = "opcode" },
    [4] = { kind = "open_door", source = "opcode" },
    [5] = { kind = "open_door", source = "opcode" },
    [6] = { kind = "open_door", source = "opcode" },
    [7] = { kind = "open_door", source = "opcode" },
    [8] = { kind = "open_door", source = "opcode" },
    [9] = { kind = "open_door", source = "opcode" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "opcode" },
    [12] = { kind = "open_door", source = "opcode" },
    [13] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [14] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [15] = { kind = "open_door", source = "opcode" },
    [16] = { kind = "generic_event", source = "opcode" },
    [17] = { kind = "generic_event", source = "opcode" },
    [18] = { kind = "generic_event", source = "opcode" },
    [19] = { kind = "generic_event", source = "opcode" },
    [20] = { kind = "generic_event", source = "opcode" },
    [21] = { kind = "generic_event", source = "opcode" },
    [22] = { kind = "generic_event", source = "opcode" },
    [23] = { kind = "generic_event", source = "opcode" },
    [24] = { kind = "shrine", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd1.odm", targetName = "银湾" },
    },
    textureNames = {"d6flora"},
    spriteNames = {},
    castSpellIds = {63},
    timers = {
    },
})

RegisterEvent(1, "奇怪的岩石", function()
    evt.StatusText("岩石在你触碰下移动了。")
    evt.SetDoorState(1, DoorAction.Close)
end, "奇石")

RegisterEvent(2, "奇怪的岩石", function()
    evt.StatusText("岩石在你触碰下移动了。")
    evt.SetDoorState(2, DoorAction.Close)
end, "奇石")

RegisterEvent(3, "巨石碑", function()
    evt.StatusText("这块巨石摸起来很奇怪。")
    evt.SetDoorState(3, DoorAction.Close)
end, "巨石碑")

RegisterEvent(4, "奇异之树", function()
    evt.StatusText("树木在你触碰下摇晃。")
    evt.SetDoorState(4, DoorAction.Close)
end, "奇怪的树")

RegisterEvent(5, nil, function()
    evt.SetDoorState(5, DoorAction.Close)
end)

RegisterEvent(6, "奇怪的岩石", function()
    evt.StatusText("岩石在你触碰下移动了。")
    evt.SetDoorState(6, DoorAction.Close)
end, "奇石")

RegisterEvent(7, "巨石碑", function()
    evt.StatusText("这块巨石摸起来很奇怪。")
    evt.SetDoorState(7, DoorAction.Trigger)
end, "巨石碑")

RegisterEvent(8, "美丽的花", function()
    evt.StatusText("花儿闻起来很香。")
    evt.SetDoorState(8, DoorAction.Close)
end, "美丽的花")

RegisterEvent(9, "德鲁伊雕像", function()
    evt.StatusText("雕像在你触碰时移动了。")
    evt.SetDoorState(9, DoorAction.Close)
end, "德鲁伊雕像")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, nil, function()
    evt.SetDoorState(7, DoorAction.Open)
end)

RegisterEvent(12, "圣池", function()
    evt.StatusText("水池在你触碰时泛起涟漪。")
    evt.SetDoorState(12, DoorAction.Trigger)
end, "圣池")

RegisterEvent(13, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(14, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(15, "奇异之树", function()
    evt.StatusText("树木在你触碰下摇晃。")
    evt.SetDoorState(15, DoorAction.Close)
end, "奇怪的树")

RegisterEvent(16, "奇异之树", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 1000)
        AddValue(MapVar(2), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(17, "奇异之树", function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 1500)
        AddValue(MapVar(3), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(18, "奇异之树", function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 2000)
        AddValue(MapVar(4), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(19, "奇异之树", function()
    if not IsAtLeast(MapVar(5), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 2500)
        AddValue(MapVar(5), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(20, "奇异之树", function()
    if not IsAtLeast(MapVar(6), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 3000)
        AddValue(MapVar(6), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(21, "奇异之树", function()
    if not IsAtLeast(MapVar(7), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 3500)
        AddValue(MapVar(7), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(22, "巨石碑", function()
    evt.StatusText("这块巨石摸起来很奇怪。")
    evt.CastSpell(63, 3, 2, 0, 0, 0, 0, 0, 0) -- Mass Fear
end, "巨石碑")

RegisterEvent(23, "奇异之树", function()
    if not IsAtLeast(MapVar(8), 1) then
        evt.StatusText("你搜索树木，发现了东西。")
        AddValue(Gold, 5000)
        AddValue(MapVar(8), 1)
        return
    end
    evt.StatusText("你什么也没找到。")
end, "奇怪的树")

RegisterEvent(24, "邪恶祭坛", function()
    if IsQBitSet(QBit(1047)) then -- 23 D13, Given when Altar is desecrated
        return
    end
    evt.SetTexture(-949, "d6flora")
    evt.SetTexture(-947, "d6flora")
    evt.SetTexture(-927, "d6flora")
    evt.SetTexture(-928, "d6flora")
    evt.SetTexture(-929, "d6flora")
    evt.SetTexture(-948, "d6flora")
    evt.SetTexture(-945, "d6flora")
    evt.SetTexture(-946, "d6flora")
    evt.SetTexture(-944, "d6flora")
    evt.SetTexture(-943, "d6flora")
    evt.SetTexture(-942, "d6flora")
    evt.StatusText("德鲁伊和牧师个性+5（永久）。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 4) then
            AddValue(BasePersonality, 5)
        end
    end
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 12) then
            AddValue(BasePersonality, 5)
        end
    end
    evt.ForPlayer(Players.All)
    SetQBit(QBit(1047)) -- 23 D13, Given when Altar is desecrated
end, "邪恶祭坛")

RegisterEvent(25, "门", function()
    evt.StatusText("门纹丝不动。")
end, "门")

RegisterEvent(26, nil, function()
    if IsQBitSet(QBit(1047)) then -- 23 D13, Given when Altar is desecrated
        evt.SetTexture(-949, "d6flora")
        evt.SetTexture(-947, "d6flora")
        evt.SetTexture(-927, "d6flora")
        evt.SetTexture(-928, "d6flora")
        evt.SetTexture(-929, "d6flora")
        evt.SetTexture(-948, "d6flora")
        evt.SetTexture(-945, "d6flora")
        evt.SetTexture(-946, "d6flora")
        evt.SetTexture(-944, "d6flora")
        evt.SetTexture(-943, "d6flora")
        evt.SetTexture(-942, "d6flora")
    end
end)

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-17658, -12361, 257, 1024, 0, 0, 0, 0, "outd1.odm") -- Silver Cove
end, "出口")

RegisterEvent(51, "奇怪的岩石", function()
    if IsAtLeast(MapVar(22), 1) then
        return
    elseif IsAtLeast(MapVar(21), 1) then
        evt.GiveItem(6, 34)
        evt.GiveItem(6, 39)
        AddValue(InventoryItem(1991), 1991) -- Flying Fist
        SetValue(MapVar(22), 1)
    elseif IsAtLeast(MapVar(19), 1) then
        SetValue(MapVar(20), 1)
        return
    elseif IsAtLeast(MapVar(17), 1) then
        SetValue(MapVar(18), 1)
        return
    elseif IsAtLeast(MapVar(15), 1) then
        SetValue(MapVar(16), 1)
        return
    elseif IsAtLeast(MapVar(13), 1) then
        SetValue(MapVar(14), 1)
        return
    elseif IsAtLeast(MapVar(11), 1) then
        SetValue(MapVar(12), 1)
        return
    else
        return
    end
end, "奇石")

RegisterEvent(52, "奇怪的岩石", function()
    if IsAtLeast(MapVar(20), 1) then
        SetValue(MapVar(21), 1)
        return
    elseif IsAtLeast(MapVar(18), 1) then
        SetValue(MapVar(19), 1)
        return
    elseif IsAtLeast(MapVar(16), 1) then
        SetValue(MapVar(17), 1)
        return
    elseif IsAtLeast(MapVar(14), 1) then
        SetValue(MapVar(15), 1)
        return
    elseif IsAtLeast(MapVar(12), 1) then
        SetValue(MapVar(13), 1)
    else
        SetValue(MapVar(11), 1)
    end
end, "奇石")

