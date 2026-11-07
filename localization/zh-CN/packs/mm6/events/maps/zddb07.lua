-- pending
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    },
    contextActions = {
    [1] = { kind = "generic_event", source = "opcode" },
    [2] = { kind = "generic_event", source = "opcode" },
    [3] = { kind = "use_switch", source = "title" },
    [5] = { kind = "teleport", source = "heuristic" },
    [6] = { kind = "teleport", source = "heuristic" },
    [7] = { kind = "teleport", source = "heuristic" },
    [8] = { kind = "secret_event", source = "heuristic", hidden = true },
    [9] = { kind = "generic_event", source = "opcode" },
    [10] = { kind = "generic_event", source = "opcode" },
    },
    textureNames = {"d8s2on"},
    spriteNames = {"torch01"},
    castSpellIds = {6},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    evt.StatusText("空气中弥漫着强烈的瓦斯气味。")
    AddValue(MapVar(2), 1)
end)

RegisterEvent(2, "波光粼粼的小水池。", function()
    if not IsAtLeast(MapVar(3), 4) then
        evt.StatusText("水让你凉快下来。")
        AddValue(FireResistance, 40)
        AddValue(MapVar(3), 1)
        return
    end
    evt.StatusText("\"你喝了水，但没有任何效果。\"")
end, "微光闪烁的小池。")

RegisterEvent(3, "开关", function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.StatusText("火把点燃了，沼泽瓦斯也跟着燃烧。")
        evt.SetTexture(-225, "d8s2on")
        evt.CastSpell(6, 0, 1, -3004, -2315, 120, -3244, -2315, 120) -- Fireball
        evt.DamagePlayer(Players.All, const.Damage.Magic, 20)
        evt.SetSprite(1, 1, "torch01")
        evt.SetSprite(2, 1, "torch01")
        evt.SetSprite(3, 1, "torch01")
        evt.SetSprite(4, 1, "torch01")
        evt.SetSprite(5, 1, "torch01")
        evt.SetSprite(6, 1, "torch01")
        evt.SetSprite(7, 1, "torch01")
        evt.SetSprite(8, 1, "torch01")
        evt.SetSprite(9, 1, "torch01")
        evt.SetSprite(10, 1, "torch01")
        evt.SetSprite(11, 1, "torch01")
        evt.SetSprite(12, 1, "torch01")
        evt.SetSprite(13, 1, "torch01")
        evt.SetSprite(14, 1, "torch01")
        evt.SetSprite(15, 1, "torch01")
        evt.SetSprite(16, 1, "torch01")
        evt.SetSprite(17, 1, "torch01")
        evt.SetSprite(18, 1, "torch01")
        evt.SetSprite(19, 1, "torch01")
        evt.SetSprite(20, 1, "torch01")
        evt.SetSprite(21, 1, "torch01")
        evt.SetSprite(22, 1, "torch01")
        evt.SetSprite(23, 1, "torch01")
        evt.SetSprite(24, 1, "torch01")
        SetValue(MapVar(4), 1)
        SetValue(MapVar(5), 1)
        return
    end
    evt.StatusText("开关不起作用。")
end, "开关")

RegisterEvent(5, nil, function()
    if IsAtLeast(MapVar(5), 1) then return end
    evt.StatusText("沼泽瓦斯呛得你咳嗽干呕，连连后退。")
    evt.DamagePlayer(Players.All, const.Damage.Water, 8)
    evt.MoveToMap(-1328, -704, 0, 0, 0, 0, 0, 0)
end)

RegisterEvent(6, nil, function()
    if IsAtLeast(MapVar(5), 1) then return end
    evt.StatusText("沼泽瓦斯呛得你咳嗽干呕，连连后退。")
    evt.DamagePlayer(Players.All, const.Damage.Water, 8)
    evt.MoveToMap(-2128, -1152, 0, 0, 0, 0, 0, 0)
end)

RegisterEvent(7, nil, function()
    if IsAtLeast(MapVar(5), 1) then return end
    evt.StatusText("沼泽瓦斯呛得你咳嗽干呕，连连后退。")
    evt.DamagePlayer(Players.All, const.Damage.Water, 8)
    evt.MoveToMap(-1888, -1600, 0, 0, 0, 0, 0, 0)
end)

RegisterEvent(8, nil, function()
    evt.StatusText("数百条蛇从地板里爬出来咬你。")
    evt.DamagePlayer(Players.All, const.Damage.Water, 15)
end)

RegisterEvent(9, nil, function()
    if IsAtLeast(MapVar(6), 1) then return end
    evt.StatusText("一个声音嘶嘶地说——走蛇之道。")
    AddValue(MapVar(6), 1)
end)

RegisterEvent(10, nil, function(continueStep)
    if continueStep == 3 then
        evt.ForPlayer(Players.All)
        AddValue(Experience, 750)
        AddValue(MapVar(7), 1)
        return
    end
    if continueStep ~= nil then return end
    if IsAtLeast(MapVar(7), 1) then return end
    evt.SetMessage("一个声音低语——我是沼泽之灵，恭喜你，带走你应得之物，然后安然离去——")
    evt._PressAnyKey(10, 3)
end)

