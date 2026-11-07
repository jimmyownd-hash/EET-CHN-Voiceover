-- pending
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [2] = {1},
    [3] = {0},
    },
    contextActions = {
    [1] = { kind = "generic_event", source = "opcode" },
    [2] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [3] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "长凳", function()
    if IsAtLeast(MapVar(2), 1) then return end
    AddValue(MapVar(2), 1)
    evt.StatusText("你找到了一根小木钉。")
end, "长凳")

RegisterEvent(2, "板条箱", function()
    evt.OpenChest(1)
end, "板条箱")

RegisterEvent(3, "板条箱", function()
    evt.OpenChest(0)
end, "板条箱")

