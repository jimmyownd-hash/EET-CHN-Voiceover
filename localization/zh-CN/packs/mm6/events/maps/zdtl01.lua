-- pending
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [5] = {1},
    [6] = {0},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "opcode" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [6] = { kind = "open_chest", source = "opcode", chestIds = {0} },
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

RegisterEvent(3, "梳妆台", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "梳妆台")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(6, "袋子", function()
    evt.OpenChest(0)
end, "袋子")

