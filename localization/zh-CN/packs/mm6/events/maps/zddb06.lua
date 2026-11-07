-- pending
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {1},
    onLeave = {},
    openedChestIds = {
    },
    contextActions = {
    [3] = { kind = "boost", source = "title" },
    [4] = { kind = "boost", source = "title" },
    [5] = { kind = "generic_event", source = "opcode" },
    [6] = { kind = "use_switch", source = "title" },
    [7] = { kind = "generic_event", source = "opcode" },
    [8] = { kind = "generic_event", source = "opcode" },
    [9] = { kind = "generic_event", source = "opcode" },
    [10] = { kind = "generic_event", source = "opcode" },
    [11] = { kind = "secret_event", source = "heuristic", hidden = true },
    [12] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {"d3ll6"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 2, sourceEventId = 2, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 40 },
    },
})

RegisterEvent(1, nil, function()
    evt.StatusText("看起来地震袭击了这座矿井。")
end)

RegisterEvent(2, nil, function()
    evt.StatusText("矿井在你周围摇晃移动。")
    evt.FaceExpression(14)
end)

RegisterEvent(3, "装满水的木桶。", function()
    if not IsAtLeast(MapVar(2), 6) then
        evt.StatusText("虽然水很脏，但仍然让人提神。")
        AddValue(CurrentHealth, 2)
        AddValue(MapVar(2), 1)
        return
    end
    evt.StatusText("脏水在你嘴里留下难闻的味道。")
end, "装满水的桶。")

RegisterEvent(4, "装满水的木桶。", function()
    if not IsAtLeast(MapVar(3), 6) then
        evt.StatusText("虽然水很脏，但仍然让人提神。")
        AddValue(CurrentHealth, 2)
        AddValue(MapVar(3), 1)
        return
    end
    evt.StatusText("脏水在你嘴里留下难闻的味道。")
end, "装满水的桶。")

RegisterEvent(5, "看来地震袭击了这座矿坑。", function()
    evt.StatusText("门似乎卡住了。")
end, "看来地震袭击了这座矿坑。")

RegisterEvent(6, "开关", function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.StatusText("当你拉动拉杆时，岩石从上方落下。")
        evt.SetDoorState(2, DoorAction.Close)
        evt.SetDoorState(1, DoorAction.Close)
        if not IsAtLeast(SpeedBonus, 25) then
            evt.DamagePlayer(Players.All, const.Damage.Physical, 15)
            SetValue(MapVar(4), 1)
            return
        end
        evt.StatusText("你动作够快，躲开了大石头。")
        evt.FaceExpression(33)
        return
    end
    evt.StatusText("开关被锁住了。")
end, "开关")

RegisterEvent(7, "矿井", function()
    if not IsAtLeast(MapVar(5), 4) then
        local randomStep = PickRandomOption(7, 2, {2, 5})
        if randomStep == 2 then
            evt.StatusText("你毫不费力地开采了金矿。")
            AddValue(Gold, 350)
        elseif randomStep == 5 then
            evt.StatusText("上方一些松散的碎石落在你身上。")
            evt.DamagePlayer(Players.All, const.Damage.Physical, 18)
        end
        AddValue(MapVar(5), 1)
        return
    end
    evt.SetTexture(-166, "d3ll6")
    evt.StatusText("矿脉枯竭了。")
end, "矿场")

RegisterEvent(8, "矿井", function()
    if not IsAtLeast(MapVar(6), 4) then
        local randomStep = PickRandomOption(8, 2, {2, 5})
        if randomStep == 2 then
            evt.StatusText("你毫不费力地开采了金矿。")
            AddValue(Gold, 350)
        elseif randomStep == 5 then
            evt.StatusText("上方一些松散的碎石落在你身上。")
            evt.DamagePlayer(Players.All, const.Damage.Physical, 18)
        end
        AddValue(MapVar(6), 1)
        return
    end
    evt.SetTexture(-54, "d3ll6")
    evt.StatusText("矿脉枯竭了。")
end, "矿场")

RegisterEvent(9, "矿井", function()
    if not IsAtLeast(MapVar(7), 4) then
        local randomStep = PickRandomOption(9, 2, {2, 5})
        if randomStep == 2 then
            evt.StatusText("你毫不费力地开采了金矿。")
            AddValue(Gold, 350)
        elseif randomStep == 5 then
            evt.StatusText("上方一些松散的碎石落在你身上。")
            evt.DamagePlayer(Players.All, const.Damage.Physical, 18)
        end
        AddValue(MapVar(7), 1)
        return
    end
    evt.SetTexture(-164, "d3ll6")
    evt.StatusText("矿脉枯竭了。")
end, "矿场")

RegisterEvent(10, "巨石。", function()
    evt.StatusText("这次塌方堵住了进入矿井的去路。")
end, "巨石。")

RegisterEvent(11, nil, function()
    if IsAtLeast(MapVar(8), 1) then return end
    evt.StatusText("小石块和碎石从上方落下。")
    evt.FaceExpression(31)
    AddValue(MapVar(8), 1)
    if not IsAtLeast(SpeedBonus, 25) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 8)
        return
    end
    evt.StatusText("你动作够快，躲开了大石头。")
    evt.FaceExpression(33)
end)

RegisterEvent(12, nil, function()
    if IsAtLeast(MapVar(9), 1) then return end
    evt.StatusText("小石块和碎石从上方落下。")
    evt.FaceExpression(31)
    AddValue(MapVar(9), 1)
    if not IsAtLeast(SpeedBonus, 25) then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 8)
        return
    end
    evt.StatusText("你动作够快，躲开了大石头。")
    evt.FaceExpression(33)
end)

