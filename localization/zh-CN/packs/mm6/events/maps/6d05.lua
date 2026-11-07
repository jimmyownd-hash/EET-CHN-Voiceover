-- Snergle's Caverns
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {35},
    onLeave = {},
    openedChestIds = {
    [8] = {0},
    },
    contextActions = {
    [3] = { kind = "use_switch", source = "title" },
    [4] = { kind = "teleport", source = "heuristic" },
    [6] = { kind = "use_lever", source = "title" },
    [7] = { kind = "open_door", source = "opcode" },
    [8] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "generic_event", source = "opcode" },
    [11] = { kind = "generic_event", source = "opcode" },
    [12] = { kind = "generic_event", source = "opcode" },
    [13] = { kind = "generic_event", source = "opcode" },
    [14] = { kind = "generic_event", source = "opcode" },
    [21] = { kind = "boost", source = "title" },
    [22] = { kind = "boost", source = "title" },
    [23] = { kind = "boost", source = "title" },
    [25] = { kind = "generic_event", source = "opcode" },
    [26] = { kind = "generic_event", source = "opcode" },
    [28] = { kind = "generic_event", source = "opcode" },
    [29] = { kind = "generic_event", source = "opcode" },
    [30] = { kind = "generic_event", source = "opcode" },
    [31] = { kind = "open_door", source = "title" },
    [32] = { kind = "generic_event", source = "opcode" },
    [33] = { kind = "generic_event", source = "opcode" },
    [50] = { kind = "leave_dungeon", source = "opcode", targetMap = "outd3.odm", targetName = "铁拳城堡" },
    [51] = { kind = "secret_event", source = "heuristic", hidden = true },
    },
    textureNames = {"t3ll6"},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterEvent(3, "开关", function()
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(2, DoorAction.Trigger)
end, "开关")

RegisterEvent(4, "发光的恐龙骨", function()
    evt.MoveToMap(1576, -1921, 1, 44, 0, 0, 0, 0)
end, "发光的恐龙骨")

RegisterEvent(6, "拉杆", function()
    evt.SetDoorState(6, DoorAction.Trigger)
    evt.SetDoorState(5, DoorAction.Trigger)
end, "拉杆")

RegisterEvent(7, nil, function()
    evt.SetDoorState(7, DoorAction.Trigger)
end)

RegisterEvent(8, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(9, "门", function()
    if not IsQBitSet(QBit(1051)) then -- 27 D05, Given when axe is returned (so door can't be opened)
        if not HasItem(2108) then -- Key to Snergle's Chambers
            evt.StatusText("门是锁着的")
            return
        end
        evt.SetDoorState(9, DoorAction.Close)
        RemoveItem(2108) -- Key to Snergle's Chambers
        evt.SummonMonsters(1, 2, 3, 387, 8721, 257, 0, 0) -- encounter slot 1 "BDwarf" tier B, count 3, pos=(387, 8721, 257), actor group 0, no unique actor name
        evt.SummonMonsters(1, 3, 3, 420, 8538, 257, 0, 0) -- encounter slot 1 "BDwarf" tier C, count 3, pos=(420, 8538, 257), actor group 0, no unique actor name
        evt.SummonMonsters(1, 2, 3, 44, 8517, 247, 0, 0) -- encounter slot 1 "BDwarf" tier B, count 3, pos=(44, 8517, 247), actor group 0, no unique actor name
        evt.SummonMonsters(1, 3, 3, -208, 8507, 257, 0, 0) -- encounter slot 1 "BDwarf" tier C, count 3, pos=(-208, 8507, 257), actor group 0, no unique actor name
        evt.SummonMonsters(1, 2, 3, -455, 8588, 247, 0, 0) -- encounter slot 1 "BDwarf" tier B, count 3, pos=(-455, 8588, 247), actor group 0, no unique actor name
        evt.SummonMonsters(1, 3, 3, -556, 8573, 257, 0, 0) -- encounter slot 1 "BDwarf" tier C, count 3, pos=(-556, 8573, 257), actor group 0, no unique actor name
        return
    end
    evt.StatusText("门是锁着的")
end, "门")

RegisterEvent(10, "金矿脉", function()
    if IsAtLeast(MapVar(13), 1) then return end
    local randomStep = PickRandomOption(10, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-204, "t3ll6")
        SetValue(MapVar(13), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 1000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-204, "t3ll6")
        SetValue(MapVar(13), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 800)
        evt.SetTexture(-204, "t3ll6")
        SetValue(MapVar(13), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 600)
        evt.SetTexture(-204, "t3ll6")
        SetValue(MapVar(13), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 400)
        evt.SetTexture(-204, "t3ll6")
        SetValue(MapVar(13), 1)
        return
    end
end, "金矿脉")

RegisterEvent(11, "金矿脉", function()
    if IsAtLeast(MapVar(14), 1) then return end
    local randomStep = PickRandomOption(11, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-207, "t3ll6")
        SetValue(MapVar(14), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 1000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-207, "t3ll6")
        SetValue(MapVar(14), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 800)
        evt.SetTexture(-207, "t3ll6")
        SetValue(MapVar(14), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 600)
        evt.SetTexture(-207, "t3ll6")
        SetValue(MapVar(14), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 400)
        evt.SetTexture(-207, "t3ll6")
        SetValue(MapVar(14), 1)
        return
    end
end, "金矿脉")

RegisterEvent(12, "金矿脉", function()
    if IsAtLeast(MapVar(15), 1) then return end
    local randomStep = PickRandomOption(12, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-12, "t3ll6")
        SetValue(MapVar(15), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 1000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-12, "t3ll6")
        SetValue(MapVar(15), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 800)
        evt.SetTexture(-12, "t3ll6")
        SetValue(MapVar(15), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 600)
        evt.SetTexture(-12, "t3ll6")
        SetValue(MapVar(15), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 400)
        evt.SetTexture(-12, "t3ll6")
        SetValue(MapVar(15), 1)
        return
    end
end, "金矿脉")

RegisterEvent(13, "金矿脉", function()
    if IsAtLeast(MapVar(16), 1) then return end
    local randomStep = PickRandomOption(13, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-624, "t3ll6")
        SetValue(MapVar(16), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 1000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-624, "t3ll6")
        SetValue(MapVar(16), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 800)
        evt.SetTexture(-624, "t3ll6")
        SetValue(MapVar(16), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 600)
        evt.SetTexture(-624, "t3ll6")
        SetValue(MapVar(16), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 400)
        evt.SetTexture(-624, "t3ll6")
        SetValue(MapVar(16), 1)
        return
    end
end, "金矿脉")

RegisterEvent(14, "金矿脉", function()
    if IsAtLeast(MapVar(17), 1) then return end
    local randomStep = PickRandomOption(14, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-612, "t3ll6")
        SetValue(MapVar(17), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 1000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-612, "t3ll6")
        SetValue(MapVar(17), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 800)
        evt.SetTexture(-612, "t3ll6")
        SetValue(MapVar(17), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 600)
        evt.SetTexture(-612, "t3ll6")
        SetValue(MapVar(17), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 400)
        evt.SetTexture(-612, "t3ll6")
        SetValue(MapVar(17), 1)
        return
    end
end, "金矿脉")

RegisterEvent(21, "装满黑色液体的木桶", function()
    AddValue(Paralyzed, 3)
end, "装满黑色液体的木桶")

RegisterEvent(22, "装满黑色液体的木桶", function()
    AddValue(Paralyzed, 3)
end, "装满黑色液体的木桶")

RegisterEvent(23, "装满黑色液体的木桶", function()
    AddValue(PoisonedRed, 3)
end, "装满黑色液体的木桶")

RegisterEvent(25, "发光的恐龙骨", function()
    if not IsAtLeast(MapVar(9), 1) then
        if not IsAtLeast(BaseMight, 40) then
            AddValue(MapVar(9), 1)
            AddValue(BaseMight, 5)
            evt.StatusText("骨头感觉很奇怪（力量+5 永久）")
            evt.FaceExpression(52)
            return
        end
    end
    evt.StatusText("没有效果")
end, "发光的恐龙骨")

RegisterEvent(26, "金矿脉", function()
    if IsAtLeast(MapVar(21), 1) then return end
    local randomStep = PickRandomOption(26, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-143, "t3ll6")
        SetValue(MapVar(21), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 1000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-143, "t3ll6")
        SetValue(MapVar(21), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 800)
        evt.SetTexture(-143, "t3ll6")
        SetValue(MapVar(21), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 600)
        evt.SetTexture(-143, "t3ll6")
        SetValue(MapVar(21), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 400)
        evt.SetTexture(-143, "t3ll6")
        SetValue(MapVar(21), 1)
        return
    end
end, "金矿脉")

RegisterEvent(28, "宝石", function()
    if IsAtLeast(MapVar(18), 1) then return end
    local randomStep = PickRandomOption(28, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-124, "t3ll6")
        SetValue(MapVar(18), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 2000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-124, "t3ll6")
        SetValue(MapVar(18), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 1200)
        evt.SetTexture(-124, "t3ll6")
        SetValue(MapVar(18), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 800)
        evt.SetTexture(-124, "t3ll6")
        SetValue(MapVar(18), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 600)
        evt.SetTexture(-124, "t3ll6")
        SetValue(MapVar(18), 1)
        return
    end
end, "宝石")

RegisterEvent(29, "宝石", function()
    if IsAtLeast(MapVar(19), 1) then return end
    local randomStep = PickRandomOption(29, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-132, "t3ll6")
        SetValue(MapVar(19), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 2000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-132, "t3ll6")
        SetValue(MapVar(19), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 1200)
        evt.SetTexture(-132, "t3ll6")
        SetValue(MapVar(19), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 800)
        evt.SetTexture(-132, "t3ll6")
        SetValue(MapVar(19), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 600)
        evt.SetTexture(-132, "t3ll6")
        SetValue(MapVar(19), 1)
        return
    end
end, "宝石")

RegisterEvent(30, "宝石", function()
    if IsAtLeast(MapVar(20), 1) then return end
    local randomStep = PickRandomOption(30, 2, {15, 20, 15, 11, 7, 3})
    if randomStep == 15 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        evt.StatusText("塌方了！")
        evt.SetTexture(-135, "t3ll6")
        SetValue(MapVar(20), 1)
        return
    elseif randomStep == 20 then
        evt.DamagePlayer(Players.All, const.Damage.Physical, 20)
        AddValue(Gold, 2000)
        evt.StatusText("塌方了！")
        evt.SetTexture(-135, "t3ll6")
        SetValue(MapVar(20), 1)
        return
    elseif randomStep == 11 then
        AddValue(Gold, 1200)
        evt.SetTexture(-135, "t3ll6")
        SetValue(MapVar(20), 1)
        return
    elseif randomStep == 7 then
        AddValue(Gold, 800)
        evt.SetTexture(-135, "t3ll6")
        SetValue(MapVar(20), 1)
        return
    elseif randomStep == 3 then
        AddValue(Gold, 600)
        evt.SetTexture(-135, "t3ll6")
        SetValue(MapVar(20), 1)
        return
    end
end, "宝石")

RegisterEvent(31, "门纹丝不动", function()
    evt.StatusText("门纹丝不动")
end, "门纹丝不动")

RegisterEvent(32, "骨头", function()
    if not IsAtLeast(MapVar(11), 1) then
        AddValue(MapVar(11), 1)
        AddValue(EarthResistance, 5)
        evt.StatusText("骨头感觉很奇怪（毒系抗性+5 永久）")
        return
    end
    evt.StatusText("没有效果")
end, "骨头")

RegisterEvent(33, "骨头", function()
    if not IsAtLeast(MapVar(12), 1) then
        AddValue(MapVar(12), 1)
        AddValue(FireResistance, 5)
        evt.StatusText("骨头感觉很奇怪（魔法抗性+5 永久）")
        return
    end
    evt.StatusText("没有效果")
end, "骨头")

RegisterEvent(35, nil, function()
    if IsAtLeast(MapVar(13), 1) then
        evt.SetTexture(-204, "t3ll6")
    end
    if IsAtLeast(MapVar(14), 1) then
        evt.SetTexture(-207, "t3ll6")
    end
    if IsAtLeast(MapVar(15), 1) then
        if IsAtLeast(MapVar(16), 1) then
            evt.SetTexture(-624, "t3ll6")
        end
        if IsAtLeast(MapVar(17), 1) then
            evt.SetTexture(-612, "t3ll6")
        end
        if IsAtLeast(MapVar(21), 1) then
            evt.SetTexture(-143, "t3ll6")
        end
        if IsAtLeast(MapVar(18), 1) then
            evt.SetTexture(-124, "t3ll6")
        end
        if IsAtLeast(MapVar(19), 1) then
            evt.SetTexture(-132, "t3ll6")
        end
        if IsAtLeast(MapVar(20), 1) then
            evt.SetTexture(-135, "t3ll6")
        end
        return
    elseif IsAtLeast(MapVar(16), 1) then
        evt.SetTexture(-624, "t3ll6")
        if IsAtLeast(MapVar(17), 1) then
            evt.SetTexture(-612, "t3ll6")
        end
        if IsAtLeast(MapVar(21), 1) then
            evt.SetTexture(-143, "t3ll6")
        end
        if IsAtLeast(MapVar(18), 1) then
            evt.SetTexture(-124, "t3ll6")
        end
        if IsAtLeast(MapVar(19), 1) then
            evt.SetTexture(-132, "t3ll6")
        end
        if IsAtLeast(MapVar(20), 1) then
            evt.SetTexture(-135, "t3ll6")
        end
        return
    elseif IsAtLeast(MapVar(17), 1) then
        evt.SetTexture(-612, "t3ll6")
        if IsAtLeast(MapVar(21), 1) then
            evt.SetTexture(-143, "t3ll6")
        end
        if IsAtLeast(MapVar(18), 1) then
            evt.SetTexture(-124, "t3ll6")
        end
        if IsAtLeast(MapVar(19), 1) then
            evt.SetTexture(-132, "t3ll6")
        end
        if IsAtLeast(MapVar(20), 1) then
            evt.SetTexture(-135, "t3ll6")
        end
        return
    elseif IsAtLeast(MapVar(21), 1) then
        evt.SetTexture(-143, "t3ll6")
        if IsAtLeast(MapVar(18), 1) then
            evt.SetTexture(-124, "t3ll6")
        end
        if IsAtLeast(MapVar(19), 1) then
            evt.SetTexture(-132, "t3ll6")
        end
        if IsAtLeast(MapVar(20), 1) then
            evt.SetTexture(-135, "t3ll6")
        end
        return
    elseif IsAtLeast(MapVar(18), 1) then
        evt.SetTexture(-124, "t3ll6")
        if IsAtLeast(MapVar(19), 1) then
            evt.SetTexture(-132, "t3ll6")
        end
        if IsAtLeast(MapVar(20), 1) then
            evt.SetTexture(-135, "t3ll6")
        end
        return
    elseif IsAtLeast(MapVar(19), 1) then
        evt.SetTexture(-132, "t3ll6")
        if IsAtLeast(MapVar(20), 1) then
            evt.SetTexture(-135, "t3ll6")
        end
        return
    elseif IsAtLeast(MapVar(20), 1) then
        evt.SetTexture(-135, "t3ll6")
    else
        return
    end
end)

RegisterEvent(50, "出口", function()
    evt.MoveToMap(-19604, 20019, 161, 1024, 0, 0, 0, 0, "outd3.odm") -- Castle Ironfist
end, "出口")

RegisterEvent(51, nil, function()
    if IsAtLeast(MapVar(26), 1) then return end
    SetValue(MapVar(26), 1)
    local randomStep = PickRandomOption(51, 3, {3, 5, 7})
    if randomStep == 3 then
        evt.GiveItem(5, ItemType.Ring_)
        return
    elseif randomStep == 5 then
        evt.GiveItem(5, ItemType.Weapon_)
        return
    elseif randomStep == 7 then
        evt.GiveItem(5, ItemType.Armor_)
        return
    end
end)

