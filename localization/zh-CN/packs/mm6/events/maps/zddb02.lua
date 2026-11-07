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
    [3] = { kind = "generic_event", source = "opcode" },
    [4] = { kind = "boost", source = "title" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "麻袋", function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.StatusText("你在袋子里找到了牛肉干（食物+10）。")
        AddValue(Food, 10)
        AddValue(MapVar(2), 1)
        return
    end
    evt.StatusText("袋子是空的。")
end, "麻袋")

RegisterEvent(2, "装满炖菜的碗。", function()
    if not IsAtLeast(MapVar(3), 2) then
        evt.StatusText("炖肉味道不错——你感觉好多了（生命+5）。")
        AddValue(CurrentHealth, 5)
        AddValue(MapVar(3), 1)
        return
    end
    evt.StatusText("碗是空的。")
end, "装满炖菜的大碗。")

RegisterEvent(3, "装满木屑的板条箱。", function()
    evt.StatusText("板条箱里没有值钱的东西。")
end, "装满木屑的板条箱。")

RegisterEvent(4, "装满蜂蜜酒的木桶。", function()
    if not IsAtLeast(MapVar(4), 4) then
        evt.StatusText("你喝了蜂蜜酒，感觉很好。")
        AddValue(PoisonedGreen, 5)
        AddValue(MapVar(4), 1)
        return
    end
    evt.StatusText("蜂蜜酒桶是空的。")
end, "装满蜂蜜酒的桶。")

