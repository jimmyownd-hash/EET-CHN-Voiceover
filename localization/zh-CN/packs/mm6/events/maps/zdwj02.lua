-- Devil Outpost
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    },
    contextActions = {
    [1] = { kind = "leave_dungeon", source = "opcode", targetMap = "outb1.odm", targetName = "克里格斯" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "出口", function()
    evt.MoveToMap(-17420, -959, 161, 1920, 0, 0, 0, 0, "outb1.odm") -- Kriegspire
end, "出口")

