-- pending
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [12] = {0},
    [13] = {1},
    },
    contextActions = {
    [1] = { kind = "use_switch", source = "title" },
    [2] = { kind = "use_switch", source = "title" },
    [3] = { kind = "generic_event", source = "opcode" },
    [4] = { kind = "open_door", source = "title" },
    [6] = { kind = "use_switch", source = "title" },
    [9] = { kind = "generic_event", source = "opcode" },
    [10] = { kind = "generic_event", source = "opcode" },
    [11] = { kind = "generic_event", source = "opcode" },
    [12] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [13] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [14] = { kind = "open_door", source = "opcode" },
    [19] = { kind = "generic_event", source = "opcode" },
    [20] = { kind = "generic_event", source = "opcode" },
    [21] = { kind = "press_button", source = "title" },
    [22] = { kind = "press_button", source = "title" },
    [23] = { kind = "press_button", source = "title" },
    [25] = { kind = "generic_event", source = "opcode" },
    [26] = { kind = "generic_event", source = "opcode" },
    [27] = { kind = "generic_event", source = "opcode" },
    [28] = { kind = "generic_event", source = "opcode" },
    [29] = { kind = "generic_event", source = "opcode" },
    [30] = { kind = "generic_event", source = "opcode" },
    [31] = { kind = "generic_event", source = "opcode" },
    [32] = { kind = "generic_event", source = "opcode" },
    [33] = { kind = "generic_event", source = "opcode" },
    [34] = { kind = "generic_event", source = "opcode" },
    [35] = { kind = "generic_event", source = "opcode" },
    [37] = { kind = "teleport", source = "heuristic" },
    [38] = { kind = "open_door", source = "title" },
    [39] = { kind = "generic_event", source = "opcode" },
    [40] = { kind = "generic_event", source = "opcode" },
    [41] = { kind = "generic_event", source = "opcode" },
    [42] = { kind = "open_door", source = "title" },
    [43] = { kind = "open_door", source = "title" },
    },
    textureNames = {"d8s2on"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(1, "开关", function()
    evt.StatusText("你用力把开关扳了下来。")
    evt.SetDoorState(1, DoorAction.Trigger)
    evt.SetDoorState(3, DoorAction.Trigger)
end, "开关")

RegisterEvent(2, "开关", function()
    evt.StatusText("你用力把开关扳了下来。")
    evt.SetDoorState(2, DoorAction.Trigger)
    evt.SetDoorState(4, DoorAction.Trigger)
end, "开关")

RegisterEvent(3, "板条箱。", function()
    evt.StatusText("板条箱都是空的。")
end, "板条箱。")

RegisterEvent(4, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "开关", function()
    if IsAtLeast(MapVar(7), 1) then return end
    evt.StatusText("你扳动开关，听到远处传来刺耳的声响。")
    evt.SetTexture(-1392, "d8s2on")
    evt.SetDoorState(6, DoorAction.Trigger)
    AddValue(MapVar(7), 1)
end, "开关")

RegisterEvent(8, "旧骸骨。", function()
    evt.DamagePlayer(Players.Current, const.Damage.Air, 10)
end, "旧骸骨。")

RegisterEvent(9, "缺砖的墙壁", function(continueStep)
    if continueStep == 2 then
        AddValue(Insane, 1)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("有什么黏糊糊的东西在这堵砖墙后面移动。")
    evt._PressAnyKey(9, 2)
end, "缺砖的墙壁")

RegisterEvent(10, "缺砖的墙壁", function()
    evt.StatusText("有什么黏糊糊的东西在这堵砖墙后面移动。")
    AddValue(Insane, 2)
end, "缺砖的墙壁")

RegisterEvent(11, "缺砖的墙壁", function()
    evt.StatusText("有什么黏糊糊的东西在这堵砖墙后面移动。")
    AddValue(Insane, 2)
end, "缺砖的墙壁")

RegisterEvent(12, "箱子。", function()
    evt.OpenChest(0)
end, "箱子。")

RegisterEvent(13, "箱子。", function()
    evt.OpenChest(1)
end, "箱子。")

RegisterEvent(14, nil, function()
    evt.SetDoorState(7, DoorAction.Close)
    evt.SetDoorState(8, DoorAction.Close)
end)

RegisterEvent(19, "旧骸骨。", function()
    evt.StatusText("这些骨头给你一种不好的感觉。")
    evt.ForPlayer(6)
    AddValue(Asleep, 1)
end, "旧骸骨。")

RegisterEvent(20, "铁处女", function()
    evt.StatusText("铁处女里只有尖刺。")
end, "铁处女")

RegisterEvent(21, "按钮", function()
    if not IsAtLeast(MapVar(21), 2) then
        evt.SetDoorState(10, DoorAction.Open)
        evt.SetDoorState(11, DoorAction.Open)
        evt.SetDoorState(9, DoorAction.Close)
        SetValue(MapVar(21), 0)
        SetValue(MapVar(20), 0)
        AddValue(MapVar(18), 1)
        return
    end
    evt.SetDoorState(9, DoorAction.Trigger)
    evt.SetDoorState(12, DoorAction.Trigger)
end, "按钮")

RegisterEvent(22, "按钮", function()
    if not IsAtLeast(MapVar(18), 1) then
        if not IsAtLeast(MapVar(20), 1) then
            AddValue(MapVar(21), 1)
            evt.SetDoorState(10, DoorAction.Close)
            return
        end
    end
    evt.SetDoorState(9, DoorAction.Open)
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(11, DoorAction.Open)
    SetValue(MapVar(18), 0)
    SetValue(MapVar(20), 0)
end, "按钮")

RegisterEvent(23, "按钮", function()
    if not IsAtLeast(MapVar(21), 1) then
        evt.SetDoorState(9, DoorAction.Open)
        evt.SetDoorState(10, DoorAction.Open)
        evt.SetDoorState(11, DoorAction.Close)
        AddValue(MapVar(20), 1)
        SetValue(MapVar(21), 0)
        SetValue(MapVar(18), 0)
        return
    end
    AddValue(MapVar(21), 1)
    evt.SetDoorState(11, DoorAction.Close)
end, "按钮")

RegisterEvent(25, "墓龛", function()
    if IsAtLeast(MapVar(24), 1) then return end
    local randomStep = PickRandomOption(25, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 300)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 400)
    end
    AddValue(MapVar(24), 1)
end, "墓龛")

RegisterEvent(26, "墓龛", function(continueStep)
    local function Step_0()
        if IsAtLeast(MapVar(25), 1) then return 15 end
        return 1
    end
    local function Step_1()
        return PickRandomOption(26, 1, {2, 5, 8, 12})
    end
    local function Step_2()
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        return 3
    end
    local function Step_3()
        AddValue(Gold, 300)
        return 4
    end
    local function Step_4()
        return 14
    end
    local function Step_5()
        evt.StatusText("骨头似乎充了电！！")
        return 6
    end
    local function Step_6()
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
        return 7
    end
    local function Step_7()
        return 14
    end
    local function Step_8()
        evt.StatusText("这些骨头真的很老……真的很老。")
        return 9
    end
    local function Step_9()
        evt._PressAnyKey(26, 10)
        return nil
    end
    local function Step_10()
        AddValue(Age, 5)
        return 11
    end
    local function Step_11()
        return 14
    end
    local function Step_12()
        evt.StatusText("你从这些古老的骨头中获得知识。")
        return 13
    end
    local function Step_13()
        AddValue(Experience, 400)
        return 14
    end
    local function Step_14()
        AddValue(MapVar(25), 1)
        return 15
    end
    local function Step_15()
        return nil
    end
    local step = continueStep or 0
    while step ~= nil do
        if step == 0 then
            step = Step_0()
        elseif step == 1 then
            step = Step_1()
        elseif step == 2 then
            step = Step_2()
        elseif step == 3 then
            step = Step_3()
        elseif step == 4 then
            step = Step_4()
        elseif step == 5 then
            step = Step_5()
        elseif step == 6 then
            step = Step_6()
        elseif step == 7 then
            step = Step_7()
        elseif step == 8 then
            step = Step_8()
        elseif step == 9 then
            step = Step_9()
        elseif step == 10 then
            step = Step_10()
        elseif step == 11 then
            step = Step_11()
        elseif step == 12 then
            step = Step_12()
        elseif step == 13 then
            step = Step_13()
        elseif step == 14 then
            step = Step_14()
        elseif step == 15 then
            step = Step_15()
        else
            step = nil
        end
    end
end, "墓龛")

RegisterEvent(27, "墓龛", function()
    if IsAtLeast(MapVar(26), 1) then return end
    local randomStep = PickRandomOption(27, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 300)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 400)
    end
    AddValue(MapVar(26), 1)
end, "墓龛")

RegisterEvent(28, "墓龛", function()
    if IsAtLeast(MapVar(27), 1) then return end
    local randomStep = PickRandomOption(28, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 300)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 800)
    end
    AddValue(MapVar(27), 1)
end, "墓龛")

RegisterEvent(29, "墓龛", function()
    if IsAtLeast(MapVar(28), 1) then return end
    local randomStep = PickRandomOption(29, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 300)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 400)
    end
    AddValue(MapVar(28), 1)
end, "墓龛")

RegisterEvent(30, "墓龛", function()
    if IsAtLeast(MapVar(29), 1) then return end
    local randomStep = PickRandomOption(30, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 300)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 400)
    end
    AddValue(MapVar(29), 1)
end, "墓龛")

RegisterEvent(31, "墓龛", function()
    if IsAtLeast(MapVar(30), 1) then return end
    local randomStep = PickRandomOption(31, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 300)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 400)
    end
    AddValue(MapVar(30), 1)
end, "墓龛")

RegisterEvent(32, "墓龛", function()
    if IsAtLeast(MapVar(31), 1) then return end
    local randomStep = PickRandomOption(32, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 500)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 900)
    end
    AddValue(MapVar(31), 1)
end, "墓龛")

RegisterEvent(33, "墓龛", function()
    if IsAtLeast(MapVar(32), 1) then return end
    local randomStep = PickRandomOption(33, 2, {2, 5, 8, 11})
    if randomStep == 2 then
        evt.StatusText("你搜索陪葬壁龛，找到了一些金币。")
        AddValue(Gold, 400)
    elseif randomStep == 5 then
        evt.StatusText("骨头似乎充了电！！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 10)
    elseif randomStep == 8 then
        evt.StatusText("这些骨头真的很老……真的很老。")
        AddValue(Age, 5)
    elseif randomStep == 11 then
        evt.StatusText("你从这些古老的骨头中获得知识。")
        AddValue(Experience, 400)
    end
    AddValue(MapVar(32), 1)
end, "墓龛")

RegisterEvent(34, "死去已久的冒险者。", function()
    if IsAtLeast(MapVar(33), 1) then return end
    evt.StatusText("你搜索尸体，找到了一些金币。")
    AddValue(Gold, 300)
    AddValue(MapVar(33), 1)
end, "死去已久的冒险者。")

RegisterEvent(35, "笼中的骷髅。", function()
    evt.StatusText("骷髅朝你抓来。")
    AddValue(Insane, 1)
end, "笼中的骷髅。")

RegisterEvent(37, nil, function()
    evt.StatusText("一股奇怪的力量从墙里伸出来抓住你。")
    evt.MoveToMap(12416, 3200, -2304, 0, 0, 0, 0, 0)
end)

RegisterEvent(38, "门", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.StatusText("门纹丝不动。")
    evt._PressAnyKey(38, 2)
end, "门")

RegisterEvent(39, "麻袋", function()
    if IsAtLeast(MapVar(41), 1) then return end
    evt.StatusText("你在袋子里找到了一些还不错的食物。")
    AddValue(Food, 5)
    AddValue(MapVar(41), 1)
end, "麻袋")

RegisterEvent(40, "麻袋", function()
    if IsAtLeast(MapVar(42), 1) then return end
    evt.StatusText("你在袋子里找到了一些还不错的食物。")
    AddValue(Food, 5)
    AddValue(MapVar(42), 1)
end, "麻袋")

RegisterEvent(41, "麻袋", function()
    if IsAtLeast(MapVar(43), 1) then return end
    evt.StatusText("你在袋子里找到了一些还不错的食物。")
    AddValue(Food, 5)
    AddValue(MapVar(43), 1)
end, "麻袋")

RegisterEvent(42, "门", function()
    evt.StatusText("门纹丝不动。")
end, "门")

RegisterEvent(43, "门", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("砖上潦草地写着：2=1  3=2  1=3")
    evt._PressAnyKey(43, 2)
end, "门")

