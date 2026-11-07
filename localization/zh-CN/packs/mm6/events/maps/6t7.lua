-- Superior Temple of Baa
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 76},
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [27] = {1},
    [28] = {5},
    [29] = {6},
    [38] = {2},
    [39] = {3},
    [40] = {7, 8},
    [45] = {4},
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
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "open_door", source = "title" },
    [18] = { kind = "open_door", source = "title" },
    [19] = { kind = "open_door", source = "title" },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "open_door", source = "title" },
    [27] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [28] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [29] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [36] = { kind = "generic_event", source = "opcode" },
    [38] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [39] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [40] = { kind = "open_chest", source = "opcode", chestIds = {7, 8} },
    [45] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [60] = { kind = "leave_dungeon", source = "opcode", targetMap = "outb1.odm", targetName = "克里格尖塔" },
    [61] = { kind = "secret_event", source = "heuristic", hidden = true },
    [62] = { kind = "secret_event", source = "heuristic", hidden = true },
    [63] = { kind = "secret_event", source = "heuristic", hidden = true },
    [64] = { kind = "secret_event", source = "heuristic", hidden = true },
    [65] = { kind = "secret_event", source = "heuristic", hidden = true },
    [66] = { kind = "secret_event", source = "heuristic", hidden = true },
    [67] = { kind = "secret_event", source = "heuristic", hidden = true },
    [68] = { kind = "secret_event", source = "heuristic", hidden = true },
    [69] = { kind = "secret_event", source = "heuristic", hidden = true },
    [70] = { kind = "secret_event", source = "heuristic", hidden = true },
    [71] = { kind = "generic_event", source = "opcode" },
    [72] = { kind = "generic_event", source = "opcode" },
    [73] = { kind = "generic_event", source = "opcode" },
    [74] = { kind = "generic_event", source = "opcode" },
    [75] = { kind = "generic_event", source = "opcode" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {6, 15},
    timers = {
    },
})

RegisterEvent(1, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 8) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(2, DoorAction.Close)
end, "门")

RegisterEvent(3, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(13, DoorAction.Close)
end, "门")

RegisterEvent(14, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(15, DoorAction.Close)
end, "门")

RegisterEvent(16, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(17, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(17, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
    if not IsAtLeast(MapVar(14), 1) then
        SetValue(MapVar(10), 1)
        return
    end
    SetValue(MapVar(16), 1)
end, "门")

RegisterEvent(20, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(20, DoorAction.Close)
end, "门")

RegisterEvent(21, "门", function()
    evt.ForPlayer(Players.All)
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 4) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
        return
    end
    evt.SetDoorState(21, DoorAction.Close)
end, "门")

RegisterEvent(27, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(28, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(29, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(34, "巴阿之首·二", nil, "巴阿之首·二")

RegisterEvent(36, "讲台", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("专家级洞察术是钥匙，巴阿之门自会为你敞开。                                                                                                                                            螺旋阵上记住每个头像，向巴阿交谈，否则你将丧命。")
    evt._PressAnyKey(36, 2)
end, "讲台")

RegisterEvent(38, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(39, "箱子", function()
    if not evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, 2) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 200)
        return
    end
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(40, "箱子", function()
    if not IsAtLeast(MapVar(21), 1) then
        evt.ForPlayer(Players.All)
        if not HasItem(2187) then -- High Cleric's Key
            evt.StatusText("箱子是锁着的。")
            if IsAtLeast(MapVar(12), 1) then return end
            SetValue(MapVar(12), 1)
            evt.SummonMonsters(2, 2, 2, -2240, -3168, 0, 0, 0) -- encounter slot 2 "Druidess" tier B, count 2, pos=(-2240, -3168, 0), actor group 0, no unique actor name
            evt.SummonMonsters(2, 2, 2, -320, -3232, 0, 0, 0) -- encounter slot 2 "Druidess" tier B, count 2, pos=(-320, -3232, 0), actor group 0, no unique actor name
            return
        end
        if not HasItem(2112) then -- High Sorcerer's Key
            evt.StatusText("箱子是锁着的。")
            if IsAtLeast(MapVar(12), 1) then return end
            SetValue(MapVar(12), 1)
            evt.SummonMonsters(2, 2, 2, -2240, -3168, 0, 0, 0) -- encounter slot 2 "Druidess" tier B, count 2, pos=(-2240, -3168, 0), actor group 0, no unique actor name
            evt.SummonMonsters(2, 2, 2, -320, -3232, 0, 0, 0) -- encounter slot 2 "Druidess" tier B, count 2, pos=(-320, -3232, 0), actor group 0, no unique actor name
            return
        end
        if not IsQBitSet(QBit(1032)) then -- 8 T7, given when you find the smoking gun
            SetValue(MapVar(21), 1)
            evt.OpenChest(7)
            RemoveItem(2187) -- High Cleric's Key
            RemoveItem(2112) -- High Sorcerer's Key
            SetQBit(QBit(1032)) -- 8 T7, given when you find the smoking gun
            SetQBit(QBit(1214)) -- Quest item bits for seer
            return
        end
        evt.OpenChest(8)
        return
    end
    evt.OpenChest(7)
    RemoveItem(2187) -- High Cleric's Key
    RemoveItem(2112) -- High Sorcerer's Key
    SetQBit(QBit(1032)) -- 8 T7, given when you find the smoking gun
    SetQBit(QBit(1214)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(42, "书柜", function()
    if IsAtLeast(MapVar(6), 1) then return end
    SetValue(MapVar(6), 1)
    AddValue(InventoryItem(2006), 2006) -- Reanimate
end, "书柜")

RegisterEvent(45, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(60, nil, function()
    evt.MoveToMap(17078, -6601, 161, 1280, 0, 0, 0, 0, "outb1.odm") -- Kriegspire
end)

RegisterEvent(61, nil, function()
    evt.CastSpell(15, 3, 3, -6272, 6272, 250, -6272, 6272, 100) -- Sparks
end)

RegisterEvent(62, nil, function()
    evt.CastSpell(15, 3, 3, -6272, 6272, 250, -6272, 6272, 100) -- Sparks
    evt.CastSpell(15, 3, 3, -9984, 5792, -50, 0, 0, 0) -- Sparks
end)

RegisterEvent(63, nil, function()
    evt.CastSpell(15, 3, 3, -8768, 6176, -50, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -11552, 3904, -50, 0, 0, 0) -- Sparks
end)

RegisterEvent(64, nil, function()
    evt.CastSpell(6, 5, 3, -11552, -3648, -125, -11712, 2656, -126) -- Fireball
end)

RegisterEvent(65, nil, function()
    evt.CastSpell(15, 3, 3, -11488, -3616, -50, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -11904, -7360, -50, 0, 0, 0) -- Sparks
end)

RegisterEvent(66, nil, function()
    evt.CastSpell(15, 3, 3, -11680, -6140, -20, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -11776, -9824, -400, 0, 0, 0) -- Sparks
end)

RegisterEvent(67, nil, function()
    evt.CastSpell(15, 3, 3, -10560, -11872, -520, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -8160, -11424, -540, 0, 0, 0) -- Sparks
end)

RegisterEvent(68, nil, function()
    evt.CastSpell(15, 3, 3, -7744, -8320, -100, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -10496, -9760, 200, 0, 0, 0) -- Sparks
end)

RegisterEvent(69, nil, function()
    evt.CastSpell(15, 3, 3, -8800, -12864, 250, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -5504, -11520, 220, 0, 0, 0) -- Sparks
end)

RegisterEvent(70, nil, function()
    evt.CastSpell(15, 3, 3, -5344, -10240, 250, 0, 0, 0) -- Sparks
    evt.CastSpell(15, 3, 3, -7232, -7008, 230, 0, 0, 0) -- Sparks
end)

RegisterEvent(71, "巴阿之首·一", function()
    evt.StatusText("咩一号就位。")
    if IsAtLeast(MapVar(11), 1) then return end
    SetValue(MapVar(11), 1)
end, "巴阿头像一")

RegisterEvent(72, "巴阿之首·二", function()
    if not IsAtLeast(MapVar(11), 1) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 20)
        evt.StatusText("咩！咩！")
        return
    end
    evt.StatusText("咩二号准备就绪。")
    SetValue(MapVar(12), 1)
end, "巴阿头像二")

RegisterEvent(73, "巴阿之首·三", function()
    if not IsAtLeast(MapVar(12), 1) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 20)
        evt.StatusText("咩！咩！")
        return
    end
    evt.StatusText("咩三号待命。")
    SetValue(MapVar(13), 1)
end, "巴阿头像三")

RegisterEvent(74, "巴阿之首·四", function()
    if not IsAtLeast(MapVar(13), 1) then
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 20)
        evt.StatusText("咩！咩！")
        return
    end
    evt.StatusText("咩四号开始行动。")
    SetValue(MapVar(14), 1)
    if IsAtLeast(MapVar(10), 1) then
        SetValue(MapVar(16), 1)
    end
end, "巴阿头像四")

RegisterEvent(75, "全能的巴阿之首。", function()
    if not IsAtLeast(MapVar(16), 1) then
        evt.StatusText("你不配信奉咩！")
        evt.DamagePlayer(Players.Current, const.Damage.Fire, 100)
        return
    end
    if not IsPlayerBitSet(PlayerBit(69)) then
        evt.StatusText("\"追随巴阿！+50,000 经验值。\"")
        AddValue(Experience, 50000)
        SubtractValue(1638635, 25)
        SetPlayerBit(PlayerBit(69))
        return
    end
    evt.StatusText("去传播咩的教义吧！")
end, "万能的巴阿之首。")

RegisterEvent(76, "熔岩池", function()
    evt.DamagePlayer(Players.All, const.Damage.Magic, 30)
end, "熔岩池")

