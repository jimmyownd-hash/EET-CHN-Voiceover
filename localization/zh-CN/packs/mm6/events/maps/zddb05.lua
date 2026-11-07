-- pending
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [5] = {0},
    },
    contextActions = {
    [1] = { kind = "generic_event", source = "opcode" },
    [2] = { kind = "teleport", source = "heuristic" },
    [3] = { kind = "generic_event", source = "opcode" },
    [4] = { kind = "use_switch", source = "title" },
    [5] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [6] = { kind = "generic_event", source = "opcode" },
    },
    textureNames = {"d8s2on"},
    spriteNames = {"0"},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    evt.StatusText("空气闻起来发霉，让你咳嗽。")
    AddValue(MapVar(2), 1)
end)

RegisterEvent(2, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    evt.StatusText("有毒孢子把你逼了回来。")
    evt.DamagePlayer(Players.All, const.Damage.Water, 8)
    evt.MoveToMap(-128, -1152, 0, 0, 0, 0, 0, 0)
    SetValue(MapVar(4), 1)
end)

RegisterEvent(3, "崩塌的巨石。", function()
    if IsAtLeast(MapVar(4), 1) then
        evt.StatusText("通风口带来了新鲜空气。")
        evt.SetSprite(1, 0, "0")
        evt.SetSprite(2, 0, "0")
        SetValue(MapVar(3), 1)
    end
end, "崩裂的巨石。")

RegisterEvent(4, "小开关。", function()
    evt.SetTexture(-99, "d8s2on")
    evt.SetDoorState(1, DoorAction.Close)
end, "小开关。")

RegisterEvent(5, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(6, nil, function(continueStep)
    if continueStep == 5 then
        evt.ForPlayer(Players.All)
        AddValue(Experience, 500)
        AddValue(MapVar(5), 1)
    end
    if continueStep ~= nil then return end
    if IsAtLeast(MapVar(5), 1) then
        return
    elseif IsAtLeast(MapVar(3), 1) then
        evt.SetMessage("一个小仙子从地板上的洞里钻出来，感谢你清除了孢子，他使劲握住你的手，然后消失在洞中（那洞也莫名奇妙地在他身后消失了）。+500 经验值。")
        evt._PressAnyKey(6, 5)
    else
        return
    end
end)

