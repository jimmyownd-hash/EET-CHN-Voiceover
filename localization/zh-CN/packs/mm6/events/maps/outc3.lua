-- Mire of the Damned
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {222},
    onLeave = {},
    openedChestIds = {
    [77] = {1},
    [78] = {2},
    [79] = {3},
    },
    contextActions = {
    [2] = { kind = "enter_house", source = "opcode", houseId = 27, targetName = "钝击武器店" },
    [4] = { kind = "enter_house", source = "opcode", houseId = 66, targetName = "铁拳军械库" },
    [6] = { kind = "enter_house", source = "opcode", houseId = 102, targetName = "烟雾与镜面店" },
    [8] = { kind = "enter_house", source = "opcode", houseId = 474, targetName = "暗泽旅行社" },
    [10] = { kind = "enter_house", source = "opcode", houseId = 270, targetName = "常去之地" },
    [12] = { kind = "enter_house", source = "opcode", houseId = 271, targetName = "锈蚀之盾" },
    [14] = { kind = "enter_house", source = "opcode", houseId = 1595, targetName = "马戏团" },
    [15] = { kind = "enter_house", source = "opcode", houseId = 1596, targetName = "帐篷" },
    [16] = { kind = "enter_house", source = "opcode", houseId = 1598, targetName = "帐篷" },
    [17] = { kind = "enter_house", source = "opcode", houseId = 1601, targetName = "帐篷" },
    [18] = { kind = "enter_house", source = "opcode", houseId = 1597, targetName = "篷车" },
    [19] = { kind = "enter_house", source = "opcode", houseId = 1599, targetName = "篷车" },
    [20] = { kind = "enter_house", source = "opcode", houseId = 1600, targetName = "篷车" },
    [50] = { kind = "enter_house", source = "opcode", houseId = 1222, targetName = "房屋" },
    [51] = { kind = "enter_house", source = "opcode", houseId = 1237, targetName = "房屋" },
    [52] = { kind = "enter_house", source = "opcode", houseId = 1252, targetName = "房屋" },
    [53] = { kind = "enter_house", source = "opcode", houseId = 1267, targetName = "房屋" },
    [54] = { kind = "enter_house", source = "opcode", houseId = 1282, targetName = "房屋" },
    [55] = { kind = "enter_house", source = "opcode", houseId = 1297, targetName = "房屋" },
    [56] = { kind = "enter_house", source = "opcode", houseId = 1310, targetName = "房屋" },
    [57] = { kind = "enter_house", source = "opcode", houseId = 1322, targetName = "房屋" },
    [58] = { kind = "enter_house", source = "opcode", houseId = 1333, targetName = "房屋" },
    [59] = { kind = "enter_house", source = "opcode", houseId = 1345, targetName = "房屋" },
    [60] = { kind = "enter_house", source = "opcode", houseId = 1357, targetName = "房屋" },
    [61] = { kind = "enter_house", source = "opcode", houseId = 1369, targetName = "房屋" },
    [62] = { kind = "enter_house", source = "opcode", houseId = 1380, targetName = "房屋" },
    [63] = { kind = "enter_house", source = "opcode", houseId = 1391, targetName = "房屋" },
    [64] = { kind = "enter_house", source = "opcode", houseId = 1401, targetName = "房屋" },
    [65] = { kind = "enter_house", source = "opcode", houseId = 1410, targetName = "房屋" },
    [66] = { kind = "enter_house", source = "opcode", houseId = 1419, targetName = "房屋" },
    [67] = { kind = "enter_house", source = "opcode", houseId = 1427, targetName = "房屋" },
    [68] = { kind = "enter_house", source = "opcode", houseId = 1436, targetName = "房屋" },
    [70] = { kind = "enter_house", source = "opcode", houseId = 1454, targetName = "房屋" },
    [71] = { kind = "enter_house", source = "opcode", houseId = 1461, targetName = "房屋" },
    [72] = { kind = "enter_house", source = "opcode", houseId = 1467, targetName = "房屋" },
    [73] = { kind = "enter_house", source = "opcode", houseId = 1472, targetName = "房屋" },
    [74] = { kind = "enter_house", source = "opcode", houseId = 1477, targetName = "房屋" },
    [75] = { kind = "enter_house", source = "opcode", houseId = 1482, targetName = "房屋" },
    [76] = { kind = "enter_house", source = "opcode", houseId = 1487, targetName = "房屋" },
    [77] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [78] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [79] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 438, targetName = "斯内格尔铁矿" },
    [91] = { kind = "enter_house", source = "opcode", houseId = 424, targetName = "暗泽城堡" },
    [92] = { kind = "enter_house", source = "opcode", houseId = 334, targetName = "巴阿神庙" },
    [93] = { kind = "enter_dungeon", source = "opcode", targetMap = "zddb01.blv", targetName = "龙巢" },
    [100] = { kind = "fountain", source = "title" },
    [210] = { kind = "secret_event", source = "heuristic", hidden = true },
    [221] = { kind = "use_pedestal", source = "title" },
    [223] = { kind = "obelisk", source = "title" },
    [261] = { kind = "shrine", source = "title" },
    },
    textureNames = {},
    spriteNames = {"ped04"},
    castSpellIds = {},
    timers = {
    { eventId = 65535, sourceEventId = 100, triggerStep = 9, origin = "legacy", triggerKind = "long", scheduleKind = "monthly" },
    },
})

RegisterEvent(2, "钝击武器店", function()
    evt.EnterHouse(27) -- Blunt Trauma Weapons
end, "钝击武器店")

RegisterEvent(3, "钝击武器店", nil, "钝击武器店")

RegisterEvent(4, "铁拳军械库", function()
    evt.EnterHouse(66) -- Mailed fist Armory
end, "铁拳军械库")

RegisterEvent(5, "铁拳军械库", nil, "铁拳军械库")

RegisterEvent(6, "烟雾与幻镜", function()
    evt.EnterHouse(102) -- Smoke and Mirrors
end, "烟雾与幻镜")

RegisterEvent(7, "烟雾与幻镜", nil, "烟雾与幻镜")

RegisterEvent(8, "暗沼之旅", function()
    evt.EnterHouse(474) -- Darkmoor Travel
end, "暗沼之旅")

RegisterEvent(9, "暗沼之旅", nil, "暗沼之旅")

RegisterEvent(10, "常去之地", function()
    evt.EnterHouse(270) -- The Haunt
end, "常去之地")

RegisterEvent(11, "常去之地", nil, "常去之地")

RegisterEvent(12, "生锈盾牌", function()
    evt.EnterHouse(271) -- The Rusted Shield
end, "生锈盾牌")

RegisterEvent(13, "生锈盾牌", nil, "生锈盾牌")

RegisterEvent(14, "马戏团", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1595) -- Circus
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1595) -- Circus
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马戏团")

RegisterEvent(15, "帐篷", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1596) -- Tent
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1596) -- Tent
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "帐篷")

RegisterEvent(16, "帐篷", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1598) -- Tent
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1598) -- Tent
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "帐篷")

RegisterEvent(17, "帐篷", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1601) -- Tent
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1601) -- Tent
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "帐篷")

RegisterEvent(18, "马车", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1597) -- Wagon
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1597) -- Wagon
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马车")

RegisterEvent(19, "马车", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1599) -- Wagon
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1599) -- Wagon
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马车")

RegisterEvent(20, "马车", function()
    if IsAtLeast(DayOfYear, 196) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 197) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 198) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 199) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 200) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 201) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 202) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 203) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 204) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 205) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 206) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 207) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 208) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 209) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 210) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 211) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 212) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 213) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 214) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 215) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 216) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 217) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 218) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 219) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 220) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 221) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 222) then
        evt.EnterHouse(1600) -- Wagon
    elseif IsAtLeast(DayOfYear, 223) then
        evt.EnterHouse(1600) -- Wagon
    else
        evt.StatusText("这里没人。马戏团已经搬走了。")
        return
    end
end, "马车")

RegisterEvent(50, "房屋", function()
    evt.EnterHouse(1222) -- House
end, "房屋")

RegisterEvent(51, "房屋", function()
    evt.EnterHouse(1237) -- House
end, "房屋")

RegisterEvent(52, "房屋", function()
    evt.EnterHouse(1252) -- House
end, "房屋")

RegisterEvent(53, "房屋", function()
    evt.EnterHouse(1267) -- House
end, "房屋")

RegisterEvent(54, "房屋", function()
    evt.EnterHouse(1282) -- House
end, "房屋")

RegisterEvent(55, "房屋", function()
    evt.EnterHouse(1297) -- House
end, "房屋")

RegisterEvent(56, "房屋", function()
    evt.EnterHouse(1310) -- House
end, "房屋")

RegisterEvent(57, "房屋", function()
    evt.EnterHouse(1322) -- House
end, "房屋")

RegisterEvent(58, "房屋", function()
    evt.EnterHouse(1333) -- House
end, "房屋")

RegisterEvent(59, "房屋", function()
    evt.EnterHouse(1345) -- House
end, "房屋")

RegisterEvent(60, "房屋", function()
    evt.EnterHouse(1357) -- House
end, "房屋")

RegisterEvent(61, "房屋", function()
    evt.EnterHouse(1369) -- House
end, "房屋")

RegisterEvent(62, "房屋", function()
    evt.EnterHouse(1380) -- House
end, "房屋")

RegisterEvent(63, "房屋", function()
    evt.EnterHouse(1391) -- House
end, "房屋")

RegisterEvent(64, "房屋", function()
    evt.EnterHouse(1401) -- House
end, "房屋")

RegisterEvent(65, "房屋", function()
    evt.EnterHouse(1410) -- House
end, "房屋")

RegisterEvent(66, "房屋", function()
    evt.EnterHouse(1419) -- House
end, "房屋")

RegisterEvent(67, "房屋", function()
    evt.EnterHouse(1427) -- House
end, "房屋")

RegisterEvent(68, "房屋", function()
    evt.EnterHouse(1436) -- House
end, "房屋")

RegisterEvent(70, "房屋", function()
    evt.EnterHouse(1454) -- House
end, "房屋")

RegisterEvent(71, "房屋", function()
    evt.EnterHouse(1461) -- House
end, "房屋")

RegisterEvent(72, "房屋", function()
    evt.EnterHouse(1467) -- House
end, "房屋")

RegisterEvent(73, "房屋", function()
    evt.EnterHouse(1472) -- House
end, "房屋")

RegisterEvent(74, "房屋", function()
    evt.EnterHouse(1477) -- House
end, "房屋")

RegisterEvent(75, "房屋", function()
    evt.EnterHouse(1482) -- House
end, "房屋")

RegisterEvent(76, "房屋", function()
    evt.EnterHouse(1487) -- House
end, "房屋")

RegisterEvent(77, "板条箱", function()
    evt.OpenChest(1)
end, "板条箱")

RegisterEvent(78, "板条箱", function()
    evt.OpenChest(2)
end, "板条箱")

RegisterEvent(79, "板条箱", function()
    evt.OpenChest(3)
end, "板条箱")

RegisterEvent(90, nil, function()
    evt.MoveToMap(-3714, 1250, 1, 0, 0, 0, 438, 1, "6d09.blv") -- Snergle's Iron Mines
end)

RegisterEvent(91, nil, function()
    evt.MoveToMap(21169, 1920, -689, 1024, 0, 0, 424, 1, "cd2.blv") -- Castle Darkmoor
end)

RegisterEvent(92, "巴之神殿", function()
    evt.EnterHouse(334) -- Temple Baa
end, "巴之神殿")

RegisterEvent(93, "龙巢", function()
    evt.MoveToMap(-622, 239, 1, 128, 0, 0, 0, 0, "zddb01.blv") -- Dragon's Lair
end, "龙巢")

RegisterEvent(100, "饮用喷泉", function()
    if not IsAtLeast(BaseEndurance, 15) then
        if not IsAtLeast(MapVar(6), 1) then
            evt.StatusText("神清气爽！")
            return
        end
        SubtractValue(MapVar(6), 1)
        AddValue(BaseEndurance, 2)
        evt.StatusText("耐力+2（永久）。")
        SetAutonote(417) -- 2 Points of permanent endurance from the fountain in the south of the Mire of the Damned.
        return
    end
    evt.StatusText("神清气爽！")
end, "在喷泉饮水")

RegisterEvent(210, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    evt.SummonMonsters(2, 3, 4, -304, 9904, 3000, 0, 0) -- encounter slot 2 "BHarpy" tier C, count 4, pos=(-304, 9904, 3000), actor group 0, no unique actor name
    evt.SummonMonsters(2, 3, 4, 480, 7904, 256, 0, 0) -- encounter slot 2 "BHarpy" tier C, count 4, pos=(480, 7904, 256), actor group 0, no unique actor name
    evt.SummonMonsters(2, 3, 4, -1200, 6480, 2500, 0, 0) -- encounter slot 2 "BHarpy" tier C, count 4, pos=(-1200, 6480, 2500), actor group 0, no unique actor name
    evt.SummonMonsters(2, 3, 4, -4336, 8552, 1750, 0, 0) -- encounter slot 2 "BHarpy" tier C, count 4, pos=(-4336, 8552, 1750), actor group 0, no unique actor name
    evt.SummonMonsters(2, 3, 4, -2784, 10000, 1945, 0, 0) -- encounter slot 2 "BHarpy" tier C, count 4, pos=(-2784, 10000, 1945), actor group 0, no unique actor name
end)

RegisterEvent(220, nil, function()
    if not IsAtLeast(MapVar(11), 1) then
        SetValue(MapVar(11), 1)
        evt.SetFacetBit(4, FacetBits.Invisible, 0)
        return
    end
    SetValue(MapVar(11), 0)
    evt.SetFacetBit(4, FacetBits.Invisible, 1)
end)

RegisterEvent(221, "基座", function()
    if HasItem(2072) then -- Wolf Statuette
        RemoveItem(2072) -- Wolf Statuette
        evt.SetSprite(394, 1, "ped04")
        SetQBit(QBit(1249)) -- NPC
        if not IsQBitSet(QBit(1247)) then return end -- NPC
        if not IsQBitSet(QBit(1248)) then return end -- NPC
        if not IsQBitSet(QBit(1246)) then return end -- NPC
        if IsQBitSet(QBit(1250)) then -- NPC
            evt.MoveNPC(872, 0) -- Twillen -> removed
            evt.MoveNPC(826, 1342) -- Twillen -> House
        end
        return
    elseif HasItem(2073) then -- Eagle Statuette
        if not IsQBitSet(QBit(1248)) then return end -- NPC
        RemoveItem(2073) -- Eagle Statuette
        evt.SetSprite(394, 1, "ped04")
        SetQBit(QBit(1249)) -- NPC
        if not IsQBitSet(QBit(1247)) then return end -- NPC
        if not IsQBitSet(QBit(1248)) then return end -- NPC
        if not IsQBitSet(QBit(1246)) then return end -- NPC
        if IsQBitSet(QBit(1250)) then -- NPC
            evt.MoveNPC(872, 0) -- Twillen -> removed
            evt.MoveNPC(826, 1342) -- Twillen -> House
        end
        return
    else
        return
    end
end, "基座")

RegisterEvent(222, nil, function()
    if IsQBitSet(QBit(1249)) then -- NPC
        evt.SetSprite(394, 1, "ped04")
    end
end)

RegisterEvent(223, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1392)) -- NPC
        SetAutonote(450) -- Obelisk Message # 9: aoflo'h.hbtid_p_
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                           aoflo'h.hbtid_p_")
    evt._PressAnyKey(223, 2)
end, "方尖碑")

RegisterEvent(261, "速度圣坛", function()
    if not IsAtLeast(MonthIs, 5) then
        evt.StatusText("你在神龛前祈祷。")
        return
    end
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1236)) then -- NPC
            SetQBit(QBit(1236)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(BaseSpeed, 10)
            evt.StatusText("速度+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(BaseSpeed, 3)
        evt.StatusText("速度+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "速度神龛")

RegisterEvent(65535, "", function()
    SetValue(MapVar(6), 8)
end)

