-- Dragon's Lair
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    },
    contextActions = {
    [1] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc3.odm", targetName = "诅咒沼泽" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "出口", function()
    evt.MoveToMap(-17962, 20974, 1, 1152, 0, 0, 0, 0, "outc3.odm") -- Mire of the Damned
end, "出口")

