-- The Arena
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    },
    contextActions = {
    [1] = { kind = "leave_dungeon", source = "opcode", targetMap = "OutD3.Odm", targetName = "铁拳城堡" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "出口", function()
    evt.MoveToMap(14088, 2800, 96, 1024, 0, 0, 0, 0, "OutD3.Odm") -- Castle Ironfist
end, "出口")

RegisterEvent(5, nil, function()
    evt.SpeakNPC(313) -- Arena Master
end)

