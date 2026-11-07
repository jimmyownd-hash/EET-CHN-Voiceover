-- New World Computing
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {65},
    onLeave = {},
    openedChestIds = {
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "title" },
    [12] = { kind = "open_door", source = "title" },
    [13] = { kind = "open_door", source = "title" },
    [14] = { kind = "open_door", source = "title" },
    [15] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "open_door", source = "title" },
    [24] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [26] = { kind = "open_door", source = "title" },
    [27] = { kind = "open_door", source = "title" },
    [28] = { kind = "open_door", source = "title" },
    [29] = { kind = "open_door", source = "title" },
    [30] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_door", source = "title" },
    [32] = { kind = "open_door", source = "title" },
    [33] = { kind = "open_door", source = "title" },
    [34] = { kind = "open_door", source = "title" },
    [35] = { kind = "open_door", source = "title" },
    [36] = { kind = "open_door", source = "title" },
    [37] = { kind = "open_door", source = "title" },
    [38] = { kind = "open_door", source = "title" },
    [39] = { kind = "open_door", source = "title" },
    [40] = { kind = "open_door", source = "title" },
    [41] = { kind = "open_door", source = "title" },
    [42] = { kind = "use_lever", source = "title" },
    [44] = { kind = "open_door", source = "title" },
    [45] = { kind = "open_door", source = "title" },
    [46] = { kind = "open_door", source = "title" },
    [47] = { kind = "open_door", source = "title" },
    [48] = { kind = "open_door", source = "title" },
    [49] = { kind = "open_door", source = "title" },
    [50] = { kind = "open_door", source = "title" },
    [51] = { kind = "open_door", source = "title" },
    [52] = { kind = "open_door", source = "title" },
    [53] = { kind = "open_door", source = "title" },
    [54] = { kind = "open_door", source = "title" },
    [55] = { kind = "open_door", source = "title" },
    [56] = { kind = "open_door", source = "title" },
    [57] = { kind = "open_door", source = "title" },
    [58] = { kind = "open_door", source = "title" },
    [59] = { kind = "open_door", source = "title" },
    [60] = { kind = "generic_event", source = "opcode" },
    [61] = { kind = "generic_event", source = "opcode" },
    [62] = { kind = "generic_event", source = "opcode" },
    [64] = { kind = "generic_event", source = "opcode" },
    [66] = { kind = "generic_event", source = "opcode" },
    [69] = { kind = "generic_event", source = "opcode" },
    [70] = { kind = "generic_event", source = "opcode" },
    [72] = { kind = "generic_event", source = "opcode" },
    [74] = { kind = "generic_event", source = "opcode" },
    [75] = { kind = "leave_dungeon", source = "opcode", targetMap = "outb3.odm", targetName = "龙沙" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {83},
    timers = {
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Close)
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(41, DoorAction.Open)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(9, DoorAction.Open)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(11, DoorAction.Open)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(11, DoorAction.Close)
    evt.SetDoorState(12, DoorAction.Open)
    evt.SetDoorState(9, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
    evt.SetDoorState(17, DoorAction.Open)
    evt.SetDoorState(11, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(13, DoorAction.Close)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(15, DoorAction.Close)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
    evt.SetDoorState(12, DoorAction.Open)
    evt.SetDoorState(18, DoorAction.Open)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
    evt.SetDoorState(17, DoorAction.Open)
    evt.SetDoorState(19, DoorAction.Open)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
    evt.SetDoorState(18, DoorAction.Open)
    evt.SetDoorState(20, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(20, DoorAction.Close)
    evt.SetDoorState(19, DoorAction.Open)
    evt.SetDoorState(21, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(21, DoorAction.Close)
    evt.SetDoorState(20, DoorAction.Open)
    evt.SetDoorState(22, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(22, "门", function()
    evt.SetDoorState(22, DoorAction.Close)
    evt.SetDoorState(21, DoorAction.Open)
    evt.SetDoorState(23, DoorAction.Open)
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(23, "门", function()
    evt.SetDoorState(23, DoorAction.Close)
    evt.SetDoorState(22, DoorAction.Open)
    evt.SetDoorState(24, DoorAction.Open)
end, "门")

RegisterEvent(24, "门", function()
    evt.SetDoorState(24, DoorAction.Close)
    evt.SetDoorState(23, DoorAction.Open)
    evt.SetDoorState(25, DoorAction.Open)
end, "门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(25, DoorAction.Close)
    evt.SetDoorState(24, DoorAction.Open)
    evt.SetDoorState(26, DoorAction.Open)
end, "门")

RegisterEvent(26, "门", function()
    evt.SetDoorState(26, DoorAction.Close)
    evt.SetDoorState(25, DoorAction.Open)
    evt.SetDoorState(27, DoorAction.Open)
end, "门")

RegisterEvent(27, "门", function()
    evt.SetDoorState(27, DoorAction.Close)
    evt.SetDoorState(28, DoorAction.Open)
    evt.SetDoorState(26, DoorAction.Open)
end, "门")

RegisterEvent(28, "门", function()
    evt.SetDoorState(28, DoorAction.Close)
    evt.SetDoorState(27, DoorAction.Open)
    evt.SetDoorState(29, DoorAction.Open)
end, "门")

RegisterEvent(29, "门", function()
    evt.SetDoorState(29, DoorAction.Close)
    evt.SetDoorState(28, DoorAction.Open)
    evt.SetDoorState(30, DoorAction.Open)
end, "门")

RegisterEvent(30, "门", function()
    evt.SetDoorState(30, DoorAction.Close)
    evt.SetDoorState(31, DoorAction.Open)
    evt.SetDoorState(29, DoorAction.Open)
end, "门")

RegisterEvent(31, "门", function()
    evt.SetDoorState(31, DoorAction.Close)
    evt.SetDoorState(30, DoorAction.Open)
    evt.SetDoorState(32, DoorAction.Open)
end, "门")

RegisterEvent(32, "门", function()
    evt.SetDoorState(32, DoorAction.Close)
    evt.SetDoorState(31, DoorAction.Open)
    evt.SetDoorState(33, DoorAction.Open)
end, "门")

RegisterEvent(33, "门", function()
    evt.SetDoorState(33, DoorAction.Close)
    evt.SetDoorState(34, DoorAction.Open)
    evt.SetDoorState(32, DoorAction.Open)
end, "门")

RegisterEvent(34, "门", function()
    evt.SetDoorState(34, DoorAction.Close)
    evt.SetDoorState(38, DoorAction.Open)
    evt.SetDoorState(33, DoorAction.Open)
end, "门")

RegisterEvent(35, "门", function()
    evt.SetDoorState(35, DoorAction.Close)
end, "门")

RegisterEvent(36, "门", function()
    evt.SetDoorState(36, DoorAction.Close)
end, "门")

RegisterEvent(37, "门", function()
    evt.SetDoorState(37, DoorAction.Close)
end, "门")

RegisterEvent(38, "门", function()
    evt.SetDoorState(38, DoorAction.Close)
    evt.SetDoorState(39, DoorAction.Open)
    evt.SetDoorState(34, DoorAction.Open)
end, "门")

RegisterEvent(39, "门", function()
    evt.SetDoorState(39, DoorAction.Close)
end, "门")

RegisterEvent(40, "门", function()
    evt.SetDoorState(40, DoorAction.Close)
    evt.SetDoorState(39, DoorAction.Open)
    evt.SetDoorState(41, DoorAction.Open)
end, "门")

RegisterEvent(41, "门", function()
    evt.SetDoorState(41, DoorAction.Close)
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(40, DoorAction.Open)
end, "门")

RegisterEvent(42, "拉杆", function()
    evt.SetDoorState(42, DoorAction.Trigger)
    evt.SetDoorState(16, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(44, "门", function()
    evt.SetDoorState(44, DoorAction.Close)
    evt.SetDoorState(43, DoorAction.Close)
end, "门")

RegisterEvent(45, "门", function()
    evt.SetDoorState(45, DoorAction.Close)
end, "门")

RegisterEvent(46, "门", function()
    evt.SetDoorState(46, DoorAction.Close)
end, "门")

RegisterEvent(47, "门", function()
    evt.SetDoorState(47, DoorAction.Close)
end, "门")

RegisterEvent(48, "门", function()
    evt.SetDoorState(48, DoorAction.Close)
end, "门")

RegisterEvent(49, "门", function()
    evt.SetDoorState(49, DoorAction.Close)
end, "门")

RegisterEvent(50, "门", function()
    evt.SetDoorState(50, DoorAction.Close)
end, "门")

RegisterEvent(51, "门", function()
    evt.SetDoorState(51, DoorAction.Close)
end, "门")

RegisterEvent(52, "门", function()
    evt.SetDoorState(52, DoorAction.Close)
end, "门")

RegisterEvent(53, "门", function()
    evt.SetDoorState(53, DoorAction.Close)
end, "门")

RegisterEvent(54, "门", function()
    evt.SetDoorState(54, DoorAction.Close)
end, "门")

RegisterEvent(55, "门", function()
    evt.SetDoorState(55, DoorAction.Close)
end, "门")

RegisterEvent(56, "门", function()
    evt.SetDoorState(56, DoorAction.Close)
end, "门")

RegisterEvent(57, "门", function()
    evt.SetDoorState(57, DoorAction.Close)
end, "门")

RegisterEvent(58, "门", function()
    evt.SetDoorState(58, DoorAction.Close)
end, "门")

RegisterEvent(59, "门", function()
    evt.SetDoorState(59, DoorAction.Close)
end, "门")

RegisterEvent(60, "书架", function()
    if not IsAtLeast(MapVar(2), 4) then
        AddValue(MapVar(2), 1)
        evt.StatusText("你发现了东西！")
        local randomStep = PickRandomOption(60, 4, {4, 6, 8, 10, 12, 14})
        if randomStep == 4 then
            AddValue(InventoryItem(1603), 1603) -- Longsword
            return
        elseif randomStep == 6 then
            AddValue(InventoryItem(1617), 1617) -- Dagger
            return
        elseif randomStep == 8 then
            AddValue(InventoryItem(1660), 1660) -- Root Club
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(1763), 1763) -- Phirna Root
            return
        elseif randomStep == 12 then
            AddValue(InventoryItem(1913), 1913) -- Inferno
            return
        elseif randomStep == 14 then
            AddValue(InventoryItem(114), 114) -- Citizen Hat
            return
        end
        return
    end
    evt.StatusText("这里什么都没有")
end, "架子")

RegisterEvent(61, "药剂出售", function()
    if not IsAtLeast(Gold, 100) then
        evt.StatusText("金币不足")
        return
    end
    evt.StatusText("你发现了东西！")
    local randomStep = PickRandomOption(61, 5, {5, 8, 11, 14, 17, 20})
    if randomStep == 5 then
        AddValue(InventoryItem(220), 220) -- Potion Bottle
        if not IsAtLeast(Gold, 50) then
            return
        end
        SubtractValue(Gold, 50)
        return
    elseif randomStep == 8 then
        AddValue(InventoryItem(221), 221) -- Catalyst
        if not IsAtLeast(Gold, 20) then
            return
        end
        SubtractValue(Gold, 20)
        return
    elseif randomStep == 11 then
        AddValue(InventoryItem(221), 221) -- Catalyst
        if not IsAtLeast(Gold, 100) then
            return
        end
        SubtractValue(Gold, 100)
        return
    elseif randomStep == 14 then
        AddValue(InventoryItem(222), 222) -- Cure Wounds
        if not IsAtLeast(Gold, 50) then
            return
        end
        SubtractValue(Gold, 50)
        return
    elseif randomStep == 17 then
        AddValue(InventoryItem(223), 223) -- Magic Potion
        if not IsAtLeast(Gold, 20) then
            return
        end
        SubtractValue(Gold, 20)
        return
    elseif randomStep == 20 then
        AddValue(InventoryItem(224), 224) -- Cure Weakness
        if not IsAtLeast(Gold, 50) then
            return
        end
        SubtractValue(Gold, 50)
        return
    end
end, "出售药剂")

RegisterEvent(62, "食品储藏室", function()
    local randomStep = PickRandomOption(62, 1, {1, 3, 5, 7, 10, 13})
    if randomStep == 1 then
        AddValue(Food, 1)
        return
    elseif randomStep == 3 then
        AddValue(Food, 2)
        return
    elseif randomStep == 5 then
        AddValue(Food, 1)
        return
    elseif randomStep == 7 then
        evt.StatusText("坏食物！")
        SetValue(PoisonedYellow, 1)
        return
    elseif randomStep == 10 then
        evt.StatusText("嗝！")
        SetValue(PoisonedGreen, 1)
        return
    elseif randomStep == 13 then
        AddValue(InventoryItem(220), 220) -- Potion Bottle
    end
end, "储藏室")

RegisterEvent(63, "柜台", function()
    AddValue(InventoryItem(220), 220) -- Potion Bottle
end, "柜台")

RegisterEvent(64, nil, function()
    if IsAtLeast(MapVar(3), 16) then return end
    AddValue(MapVar(3), 1)
    evt.StatusText("你发现了东西！")
    local randomStep = PickRandomOption(64, 4, {4, 6, 8})
    if randomStep == 4 then
        AddValue(InventoryItem(1762), 1762) -- Poppysnaps
        return
    elseif randomStep == 6 then
        AddValue(InventoryItem(1763), 1763) -- Phirna Root
        return
    elseif randomStep == 8 then
        AddValue(InventoryItem(1764), 1764) -- Widoweeps Berries
        return
    end
end)

RegisterEvent(65, nil, function()
    evt.SummonObject(36, 2944, 1920, 1, 1000, 5, false) -- Widowsweep Berries
end)

RegisterEvent(66, "书桌", function()
    if IsAtLeast(MapVar(5), 1) then return end
    AddValue(MapVar(5), 1)
    evt.StatusText("你发现了东西！")
    local randomStep = PickRandomOption(66, 4, {4, 6, 8, 10, 12})
    if randomStep == 4 then
        AddValue(InventoryItem(89), 89) -- Rusty Mail Vest
        return
    elseif randomStep == 6 then
        AddValue(InventoryItem(90), 90) -- Steel Chainmail
        return
    elseif randomStep == 8 then
        AddValue(InventoryItem(91), 91) -- Minotaur Chainmail
        return
    elseif randomStep == 10 then
        AddValue(InventoryItem(92), 92) -- Siertal Chainmail
        return
    elseif randomStep == 12 then
        AddValue(InventoryItem(93), 93) -- Erudine Chainmail
    end
end, "书桌")

RegisterEvent(67, nil, function()
    evt.ForPlayer(Players.All)
    AddValue(Insane, 10)
end)

RegisterEvent(68, nil, function()
    evt.ForPlayer(Players.All)
    if IsAtLeast(Insane, 10) then
        SubtractValue(Insane, 10)
    end
end)

RegisterEvent(69, "书桌", function()
    if IsAtLeast(MapVar(4), 1) then return end
    SetValue(MapVar(4), 1)
    evt.StatusText("你发现了东西！")
    AddValue(InventoryItem(133), 133) -- Hardened Leather Boots
end, "书桌")

RegisterEvent(70, "书桌", function()
    if IsAtLeast(MapVar(6), 1) then return end
    SetValue(MapVar(6), 1)
    evt.StatusText("你发现了东西！")
    AddValue(InventoryItem(1660), 1660) -- Root Club
end, "书桌")

RegisterNoOpEvent(71, "Desk", "Desk")

RegisterEvent(72, "书桌", function()
    if IsAtLeast(MapVar(7), 4) then return end
    evt.StatusText("你发现了东西！")
    AddValue(InventoryItem(123), 123) -- Moon Temple Cloak
    AddValue(MapVar(7), 1)
end, "书桌")

RegisterEvent(73, "书桌", function()
    evt.CastSpell(83, 64, 3, 0, 0, 0, 0, 0, 0) -- Day of the Gods
end, "书桌")

RegisterEvent(74, "书桌", function()
    if IsAtLeast(Gold, 10000) then return end
    AddValue(Gold, 500)
    evt.StatusText("你发现了东西！")
end, "书桌")

RegisterEvent(75, "出口", function()
    evt.MoveToMap(12808, 6832, 64, 512, 0, 0, 0, 0, "outb3.odm") -- Dragonsand
end, "出口")

