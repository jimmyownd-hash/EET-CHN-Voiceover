-- Bootleg Bay
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {122},
    onLeave = {},
    openedChestIds = {
    [60] = {1},
    [61] = {2},
    [62] = {3},
    [63] = {4},
    [64] = {5},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 23, targetName = "锤与钳" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 65, targetName = "亚伯拉罕金属工坊" },
    [6] = { kind = "enter_house", source = "opcode", houseId = 99, targetName = "小小魔法店" },
    [8] = { kind = "enter_house", source = "opcode", houseId = 1587, targetName = "海滨训练场" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 266, targetName = "地精之牙" },
    [12] = { kind = "enter_house", source = "opcode", houseId = 267, targetName = "断弯刀酒馆" },
    [14] = { kind = "enter_house", source = "opcode", houseId = 1595, targetName = "马戏团" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 333, targetName = "疗愈之家" },
    [16] = { kind = "enter_house", source = "opcode", houseId = 506, targetName = "女武神号" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 505, targetName = "海啸号" },
    [18] = { kind = "enter_house", source = "opcode", houseId = 1596, targetName = "帐篷" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 1598, targetName = "帐篷" },
    [20] = { kind = "enter_house", source = "opcode", houseId = 1601, targetName = "帐篷" },
    [21] = { kind = "enter_house", source = "opcode", houseId = 1597, targetName = "马车" },
    [22] = { kind = "enter_house", source = "opcode", houseId = 1599, targetName = "马车" },
    [23] = { kind = "enter_house", source = "opcode", houseId = 1600, targetName = "马车" },
    [24] = { kind = "generic_event", source = "opcode" },
    [25] = { kind = "generic_event", source = "opcode" },
    [26] = { kind = "generic_event", source = "opcode" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1224, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1239, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1254, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1269, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1284, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1299, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1312, targetName = "房屋" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1324, targetName = "房屋" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1335, targetName = "房屋" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1347, targetName = "房屋" },
    [60] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [61] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [62] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [63] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [64] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 428, targetName = "火之领主之厅" },
    [91] = { kind = "enter_house", source = "opcode", houseId = 423, targetName = "拳头神殿" },
    [92] = { kind = "enter_house", source = "opcode", houseId = 429, targetName = "太阳神殿" },
    [93] = { kind = "enter_house", source = "opcode", houseId = 426, targetName = "赞萨神殿" },
    [94] = { kind = "enter_house", source = "opcode", houseId = 334, targetName = "巴阿神庙" },
    [100] = { kind = "well", source = "title" },
    [101] = { kind = "well", source = "title" },
    [102] = { kind = "fountain", source = "title" },
    [103] = { kind = "fountain", source = "title" },
    [220] = { kind = "fountain", source = "title" },
    [221] = { kind = "use_pedestal", source = "title" },
    [223] = { kind = "obelisk", source = "title" },
    [261] = { kind = "shrine", source = "title" },
    },
    textureNames = {},
    spriteNames = {"ped05"},
    castSpellIds = {},
    timers = {
    { eventId = 104, sourceEventId = 104, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "monthly" },
    { eventId = 219, sourceEventId = 219, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "weekly" },
    },
})

RegisterEvent(2, "锤与钳", function()
    evt.EnterHouse(23) -- Hammer and Tongs
end, "锤与钳")

RegisterEvent(3, "锤与钳", nil, "锤与钳")

RegisterEvent(4, "亚伯拉罕金属工坊", function()
    evt.EnterHouse(65) -- Abraham's Metalworks
end, "亚伯拉罕金属工坊")

RegisterEvent(5, "亚伯拉罕金属工坊", nil, "亚伯拉罕金属工坊")

RegisterEvent(6, "小小魔法店", function()
    evt.EnterHouse(99) -- The Little Magic Shop
end, "小小魔法店")

RegisterEvent(7, "小小魔法店", nil, "小小魔法店")

RegisterEvent(8, "海滨训练场", function()
    evt.EnterHouse(1587) -- Training-by-the-Sea
end, "海滨训练场")

RegisterEvent(9, "海滨训练场", nil, "海滨训练场")

RegisterEvent(10, "地精之牙", function()
    evt.EnterHouse(266) -- The Goblin's Tooth
end, "地精之牙")

RegisterEvent(11, "地精之牙", nil, "地精之牙")

RegisterEvent(12, "断弯刀酒馆", function()
    evt.EnterHouse(267) -- The Broken Cutlass
end, "断弯刀酒馆")

RegisterEvent(13, "断弯刀酒馆", nil, "断弯刀酒馆")

RegisterEvent(14, "马戏团", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1595) -- Circus
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马戏团")

RegisterEvent(15, "疗愈之家", function()
    evt.EnterHouse(333) -- House of Healing
end, "疗愈之家")

RegisterEvent(16, "女武神号", function()
    evt.EnterHouse(506) -- Valkyrie
end, "女武神号")

RegisterEvent(17, "海啸号", function()
    evt.EnterHouse(505) -- Tsunami
end, "海啸号")

RegisterEvent(18, "帐篷", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1596) -- Tent
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "帐篷")

RegisterEvent(19, "帐篷", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1598) -- Tent
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "帐篷")

RegisterEvent(20, "帐篷", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1601) -- Tent
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "帐篷")

RegisterEvent(21, "马车", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1597) -- Wagon
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马车")

RegisterEvent(22, "马车", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1599) -- Wagon
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马车")

RegisterEvent(23, "马车", function()
    if IsAtLeast(DayOfYear, 308) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 309) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 310) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 311) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 312) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 313) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 314) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 315) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 316) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 317) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 318) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 319) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 320) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 321) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 322) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 323) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 324) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 325) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 326) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 327) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 328) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 329) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 330) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 331) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 332) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 333) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 334) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 335) then
        evt.EnterHouse(1600) -- Wagon
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马车")

RegisterEvent(24, "铁拳城堡", function()
    evt.StatusText("铁拳城堡")
end, "铁拳城堡")

RegisterEvent(25, "自由港", function()
    evt.StatusText("自由港")
end, "自由港")

RegisterEvent(26, "马戏团（冬季）", function()
    evt.StatusText("马戏团（冬季）")
end, "马戏团（冬季）")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1224) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1239) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1254) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1269) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1284) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1299) -- House
end, "房屋")

RegisterEvent(56, "房屋", function()
    evt.EnterHouse(1312) -- House
end, "房屋")

RegisterEvent(57, "房屋", function()
    evt.EnterHouse(1324) -- House
end, "房屋")

RegisterEvent(58, "房屋", function()
    evt.EnterHouse(1335) -- House
end, "房屋")

RegisterEvent(59, "房屋", function()
    evt.EnterHouse(1347) -- House
end, "房屋")

RegisterEvent(60, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(61, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(62, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(63, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(64, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(90, nil, function()
    evt.MoveToMap(-1792, -19, 1, 0, 0, 0, 428, 1, "6d04.blv") -- Hall of the Fire Lord
end)

RegisterEvent(91, "拳之神庙", function()
    evt.MoveToMap(0, -2231, 513, 512, 0, 0, 423, 1, "6t2.blv") -- Temple of the Fist
end, "拳之神庙")

RegisterEvent(92, "日之神庙", function()
    evt.MoveToMap(-3258, 483, 49, 0, 0, 0, 429, 1, "6t4.blv") -- Temple of the Sun
end, "日之神庙")

RegisterEvent(93, "赞萨神庙", function()
    evt.MoveToMap(2817, -4748, -639, 512, 0, 0, 426, 1, "6t3.blv") -- Temple of Tsantsa
end, "赞萨神庙")

RegisterEvent(94, "巴之神殿", function()
    evt.EnterHouse(334) -- Temple Baa
end, "巴之神殿")

RegisterEvent(100, "饮用井水", function()
    if IsAtLeast(MightBonus, 20) then return end
    SetValue(MightBonus, 20)
    evt.StatusText("力量+20（临时）。")
    SetAutonote(410) -- 20 Points of temporary might from the well near the Goblin's Tooth in Bootleg Bay.
end, "饮用井水")

RegisterEvent(101, "饮用井水", function()
    evt.DamagePlayer(Players.Current, const.Damage.Water, 40)
    SetValue(PoisonedYellow, 1)
    evt.StatusText("中毒！")
end, "饮用井水")

RegisterEvent(102, "饮用喷泉", function()
    if not IsAtLeast(BaseIntellect, 15) then
        if not IsAtLeast(MapVar(3), 1) then
            evt.StatusText("神清气爽！")
            return
        end
        SubtractValue(MapVar(3), 1)
        AddValue(BaseIntellect, 2)
        evt.StatusText("智力+2（永久）。")
        SetAutonote(411) -- 2 Points of permanent intellect from the north fountain in Bootleg Bay.
        return
    end
    evt.StatusText("神清气爽！")
end, "饮用喷泉")

RegisterEvent(103, "饮用喷泉", function()
    if not IsAtLeast(BasePersonality, 15) then
        if not IsAtLeast(MapVar(4), 1) then
            evt.StatusText("神清气爽！")
            return
        end
        SubtractValue(MapVar(4), 1)
        AddValue(BasePersonality, 2)
        evt.StatusText("个性+2（永久）。")
        SetAutonote(412) -- 2 Points of permanent personality from the south fountain in Bootleg Bay.
        return
    end
    evt.StatusText("神清气爽！")
end, "饮用喷泉")

RegisterEvent(104, nil, function()
    SetValue(MapVar(3), 8)
    SetValue(MapVar(4), 8)
end)

RegisterEvent(122, nil, function()
    if IsQBitSet(QBit(1250)) then -- NPC
        evt.SetSprite(347, 1, "ped05")
    end
end)

RegisterEvent(219, nil, function()
    SetValue(MapVar(11), 0)
end)

RegisterEvent(220, "饮用魔法喷泉", function()
    if IsQBitSet(QBit(1135)) then -- Drink from the Fountain of Magic and return to Lord Albert Newton in Mist. - NPC
        evt.SetNPCTopic(790, 1, 1371) -- Albert Newton topic 1: Wizards
        SetQBit(QBit(1260)) -- NPC
    end
    if not IsAtLeast(MaxSpellPoints, 0) then
        AddValue(CurrentSpellPoints, 20)
        evt.StatusText("法术值恢复20点。")
        SetAutonote(400)
        return
    end
    evt.StatusText("神清气爽！")
    SetAutonote(400)
end, "饮用魔法喷泉")

RegisterEvent(221, "基座", function()
    if not HasItem(2074) then return end -- Dragon Statuette
    RemoveItem(2074) -- Dragon Statuette
    evt.SetSprite(347, 1, "ped05")
    SetQBit(QBit(1250)) -- NPC
    if not IsQBitSet(QBit(1247)) then return end -- NPC
    if not IsQBitSet(QBit(1248)) then return end -- NPC
    if not IsQBitSet(QBit(1249)) then return end -- NPC
    if IsQBitSet(QBit(1246)) then -- NPC
        evt.MoveNPC(872, 0) -- Twillen -> removed
        evt.MoveNPC(826, 1342) -- Twillen -> House
    end
end, "基座")

RegisterEvent(223, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1394)) -- NPC
        SetAutonote(452) -- Obelisk Message # 11: d_re_e_Hpfotyhz_
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                           d_re_e_Hpfotyhz_")
    evt._PressAnyKey(223, 2)
end, "方尖碑")

RegisterEvent(261, "力量圣坛", function()
    if not IsAtLeast(MonthIs, 0) then
        evt.StatusText("你在神龛前祈祷。")
        return
    end
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1231)) then -- NPC
            SetQBit(QBit(1231)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(BaseMight, 10)
            evt.StatusText("力量+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(BaseMight, 3)
        evt.StatusText("力量+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "力量圣坛")

