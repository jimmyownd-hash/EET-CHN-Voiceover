-- Castle Darkmoor
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {2, 3, 19, 20, 21, 22, 23, 24, 25, 27, 46},
    onLoad = {58},
    onLeave = {},
    openedChestIds = {
    [10] = {0},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "secret_event", source = "heuristic", hidden = true },
    [3] = { kind = "secret_event", source = "heuristic", hidden = true },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "title" },
    [10] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [19] = { kind = "secret_event", source = "heuristic", hidden = true },
    [20] = { kind = "open_door", source = "title" },
    [21] = { kind = "secret_event", source = "heuristic", hidden = true },
    [22] = { kind = "secret_event", source = "heuristic", hidden = true },
    [23] = { kind = "secret_event", source = "heuristic", hidden = true },
    [24] = { kind = "secret_event", source = "heuristic", hidden = true },
    [25] = { kind = "secret_event", source = "heuristic", hidden = true },
    [26] = { kind = "secret_event", source = "heuristic", hidden = true },
    [27] = { kind = "secret_event", source = "heuristic", hidden = true },
    [28] = { kind = "teleport", source = "heuristic" },
    [29] = { kind = "teleport", source = "heuristic" },
    [30] = { kind = "teleport", source = "heuristic" },
    [31] = { kind = "teleport", source = "heuristic" },
    [32] = { kind = "teleport", source = "heuristic" },
    [33] = { kind = "teleport", source = "heuristic" },
    [34] = { kind = "generic_event", source = "opcode" },
    [35] = { kind = "secret_event", source = "heuristic", hidden = true },
    [36] = { kind = "secret_event", source = "heuristic", hidden = true },
    [37] = { kind = "teleport", source = "heuristic" },
    [38] = { kind = "teleport", source = "heuristic" },
    [39] = { kind = "teleport", source = "heuristic" },
    [40] = { kind = "teleport", source = "heuristic" },
    [41] = { kind = "teleport", source = "heuristic" },
    [42] = { kind = "teleport", source = "heuristic" },
    [43] = { kind = "teleport", source = "heuristic" },
    [44] = { kind = "teleport", source = "heuristic" },
    [45] = { kind = "read", source = "title" },
    [46] = { kind = "secret_event", source = "heuristic", hidden = true },
    [47] = { kind = "secret_event", source = "heuristic", hidden = true },
    [48] = { kind = "secret_event", source = "heuristic", hidden = true },
    [49] = { kind = "secret_event", source = "heuristic", hidden = true },
    [50] = { kind = "secret_event", source = "heuristic", hidden = true },
    [51] = { kind = "secret_event", source = "heuristic", hidden = true },
    [52] = { kind = "secret_event", source = "heuristic", hidden = true },
    [53] = { kind = "read", source = "title" },
    [54] = { kind = "use_lever", source = "title" },
    [55] = { kind = "read", source = "title" },
    [56] = { kind = "read", source = "title" },
    [59] = { kind = "generic_event", source = "opcode" },
    [60] = { kind = "leave_dungeon", source = "opcode", targetMap = "outc3.odm", targetName = "诅咒沼泽" },
    [61] = { kind = "generic_event", source = "opcode" },
    [62] = { kind = "generic_event", source = "opcode" },
    [63] = { kind = "generic_event", source = "opcode" },
    [64] = { kind = "generic_event", source = "opcode" },
    },
    textureNames = {"deskside", "lavatyl", "orwtrtyl"},
    spriteNames = {"crysdisc"},
    castSpellIds = {6, 26, 32, 90},
    timers = {
    },
})

RegisterEvent(1, "门", function()
    evt.SetDoorState(1, DoorAction.Close)
end, "门")

RegisterEvent(2, nil, function()
    evt.CastSpell(90, 10, 1, 13819, -866, -180, 0, 0, 0) -- Toxic Cloud
end)

RegisterEvent(3, nil, function()
    evt.CastSpell(32, 8, 1, 11136, 3712, -80, 0, 0, 0) -- Ice Blast
end)

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
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
end, "门")

RegisterEvent(10, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(19, nil, function()
    evt.CastSpell(6, 10, 1, 10417, 4800, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 10, 1, 10706, 2258, 150, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 10, 1, 10706, 1628, 150, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 10, 1, 9978, 1914, 150, 0, 0, 0) -- Fireball
end)

RegisterEvent(20, "门", function()
    evt.CastSpell(90, 1, 1, 14925, 2518, -689, 0, 0, 0) -- Toxic Cloud
end, "门")

RegisterEvent(21, nil, function()
    evt.CastSpell(26, 1, 1, 15217, 576, 528, 0, 0, 0) -- Ice Bolt
    evt.CastSpell(26, 1, 1, 15112, 171, 529, 0, 0, 0) -- Ice Bolt
    evt.CastSpell(26, 1, 1, 15123, 405, 529, 0, 0, 0) -- Ice Bolt
end)

RegisterEvent(22, nil, function()
    evt.CastSpell(26, 1, 1, 15217, 576, 528, 0, 0, 0) -- Ice Bolt
    evt.CastSpell(26, 1, 1, 15112, 171, 529, 0, 0, 0) -- Ice Bolt
    evt.CastSpell(26, 1, 1, 15123, 405, 529, 0, 0, 0) -- Ice Bolt
end)

RegisterEvent(23, nil, function()
    evt.CastSpell(6, 1, 1, 14718, 2456, 541, 0, 0, 0) -- Fireball
end)

RegisterEvent(24, nil, function()
    evt.CastSpell(6, 1, 1, 18915, 2035, 541, 0, 0, 0) -- Fireball
end)

RegisterEvent(25, nil, function()
    evt.CastSpell(6, 1, 1, 18111, 10127, 386, 18111, 4782, 386) -- Fireball
    evt.CastSpell(6, 1, 1, 18131, 10127, 386, 18131, 4782, 386) -- Fireball
    evt.CastSpell(6, 1, 1, 18151, 10127, 386, 18151, 4782, 386) -- Fireball
    evt.CastSpell(6, 1, 1, 18171, 10127, 386, 18171, 4782, 386) -- Fireball
    evt.CastSpell(6, 1, 1, 18191, 10127, 386, 18191, 4782, 386) -- Fireball
    evt.CastSpell(6, 1, 1, 18201, 10127, 386, 18201, 4782, 386) -- Fireball
end)

RegisterEvent(26, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -7522, 14848, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-7522, 14848, -240), actor group 0, no unique actor name
end)

RegisterEvent(27, nil, function()
    evt.CastSpell(6, 1, 1, -2904, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -2432, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -1960, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -1606, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -1134, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -426, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -72, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 400, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 1108, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 1462, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 1934, 16512, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 2642, 16512, 100, 0, 0, 0) -- Fireball
end)

RegisterEvent(28, nil, function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.MoveToMap(22768, 7504, 1170, 0, 0, 0, 0, 0)
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(29, nil, function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.MoveToMap(10384, 2224, 0, 0, 0, 0, 0, 0)
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(30, nil, function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.MoveToMap(22768, 7504, 1170, 0, 0, 0, 0, 0)
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(31, nil, function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.MoveToMap(8608, 128, 630, 0, 0, 0, 0, 0)
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(32, nil, function()
    if not IsAtLeast(MapVar(2), 1) then
        evt.MoveToMap(22768, 7504, 1170, 0, 0, 0, 0, 0)
        return
    end
    evt.SetDoorState(10, DoorAction.Close)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(33, nil, function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.MoveToMap(2560, 3856, -636, 0, 0, 0, 0, 0)
        return
    end
    if not IsAtLeast(MapVar(3), 2) then
        AddValue(MapVar(3), 1)
        evt.SetFacetBit(-4522, FacetBits.Untouchable, 1)
        evt.SetFacetBit(-4575, FacetBits.Untouchable, 1)
        evt.StatusText("道路已经畅通")
        return
    end
    evt.MoveToMap(2560, 3856, -636, 0, 0, 0, 0, 0)
end)

RegisterEvent(34, "讲台", function()
    if not IsQBitSet(QBit(1033)) then -- 9, CD2, given when you destroy Lich book
        evt.StatusText("巫妖之书已被摧毁")
        SetQBit(QBit(1033)) -- 9, CD2, given when you destroy Lich book
        evt.SetTexture(-4560, "deskside")
        return
    end
    evt.StatusText("书已被摧毁")
end, "讲台")

RegisterEvent(35, nil, function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.SummonObject(2081, 317, 14144, 191, 1000, 1, false) -- explosion
        evt.SummonObject(1, 317, 14144, 320, 10, 1, false) -- longsword
        return
    end
    if IsAtLeast(MapVar(3), 2) then return end
    AddValue(MapVar(3), 1)
    evt.SetFacetBit(-4522, FacetBits.Untouchable, 1)
    evt.SetFacetBit(-4575, FacetBits.Untouchable, 1)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(36, nil, function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.SummonObject(2081, 551, 14144, 191, 1000, 1, false) -- explosion
        evt.SummonObject(1, 551, 14144, 320, 10, 1, false) -- longsword
        return
    end
    if IsAtLeast(MapVar(3), 2) then return end
    AddValue(MapVar(3), 1)
    evt.SetFacetBit(-4522, FacetBits.Untouchable, 1)
    evt.SetFacetBit(-4575, FacetBits.Untouchable, 1)
    evt.StatusText("道路已经畅通")
end)

RegisterEvent(37, nil, function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.MoveToMap(16080, 9072, -180, 0, 0, 0, 0, 0)
        return
    end
    if not IsAtLeast(MapVar(3), 2) then
        AddValue(MapVar(3), 1)
        evt.SetFacetBit(-4522, FacetBits.Untouchable, 1)
        evt.SetFacetBit(-4575, FacetBits.Untouchable, 1)
        evt.StatusText("道路已经畅通")
        return
    end
    evt.MoveToMap(16080, 9072, -180, 0, 0, 0, 0, 0)
end)

RegisterEvent(38, nil, function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.MoveToMap(-10240, 12144, -240, 0, 0, 0, 0, 0)
        return
    end
    evt.MoveToMap(22080, -2192, 1, 0, 0, 0, 0, 0)
end)

RegisterEvent(39, nil, function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.MoveToMap(-7328, 10496, 600, 0, 0, 0, 0, 0)
        return
    end
    evt.MoveToMap(22080, -2192, 1, 0, 0, 0, 0, 0)
end)

RegisterEvent(40, nil, function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.MoveToMap(-6112, 10912, 600, 0, 0, 0, 0, 0)
        return
    end
    evt.MoveToMap(22080, -2192, 1, 0, 0, 0, 0, 0)
end)

RegisterEvent(41, nil, function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.MoveToMap(-10240, 12144, -240, 0, 0, 0, 0, 0)
        return
    end
    evt.MoveToMap(22080, -2192, 1, 0, 0, 0, 0, 0)
end)

RegisterEvent(42, nil, function()
    if not IsAtLeast(MapVar(4), 1) then
        evt.MoveToMap(-10240, 12144, -240, 0, 0, 0, 0, 0)
        return
    end
    evt.MoveToMap(22080, -2192, 1, 0, 0, 0, 0, 0)
end)

RegisterEvent(43, nil, function()
    evt.MoveToMap(13744, 640, -180, 0, 0, 0, 0, 0)
end)

RegisterEvent(44, nil, function()
    evt.MoveToMap(2528, 3568, -635, 0, 0, 0, 0, 0)
end)

RegisterEvent(45, "标牌", function(continueStep)
    if continueStep == 4 then
        evt.SetTexture(-4298, "lavatyl")
        evt.SetTexture(-4299, "lavatyl")
        evt.SetTexture(-4300, "lavatyl")
        evt.SetTexture(-4301, "lavatyl")
        evt.SetTexture(-4302, "lavatyl")
        evt.SetFacetBit(-4298, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4299, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4300, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4301, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4302, FacetBits.Fluid, 1)
        return
    end
    if continueStep ~= nil then return end
    if not IsAtLeast(MapVar(4), 1) then
        SetValue(MapVar(4), 1)
        evt.SetMessage("亡者之火将永远燃烧")
        evt._PressAnyKey(45, 4)
        return
    end
    SetValue(MapVar(4), 0)
    evt.SetTexture(-4298, "orwtrtyl")
    evt.SetTexture(-4299, "orwtrtyl")
    evt.SetTexture(-4300, "orwtrtyl")
    evt.SetTexture(-4301, "orwtrtyl")
    evt.SetTexture(-4302, "orwtrtyl")
end, "标牌")

RegisterEvent(46, nil, function()
    evt.CastSpell(6, 1, 1, -2904, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -2432, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -1960, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -1606, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -1134, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -426, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, -72, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 400, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 1108, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 1462, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 1934, 11904, 100, 0, 0, 0) -- Fireball
    evt.CastSpell(6, 1, 1, 2642, 11904, 100, 0, 0, 0) -- Fireball
end)

RegisterEvent(47, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -6144, 14720, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-6144, 14720, -240), actor group 0, no unique actor name
end)

RegisterEvent(48, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -5120, 14208, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-5120, 14208, -240), actor group 0, no unique actor name
end)

RegisterEvent(49, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -5760, 12800, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-5760, 12800, -240), actor group 0, no unique actor name
end)

RegisterEvent(50, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -7552, 12800, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-7552, 12800, -240), actor group 0, no unique actor name
end)

RegisterEvent(51, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -7808, 13056, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-7808, 13056, -240), actor group 0, no unique actor name
end)

RegisterEvent(52, nil, function()
    if IsQBitSet(QBit(1033)) then return end -- 9, CD2, given when you destroy Lich book
    evt.SummonMonsters(1, 2, 3, -5376, 11904, -240, 0, 0) -- encounter slot 1 "BLich" tier B, count 3, pos=(-5376, 11904, -240), actor group 0, no unique actor name
end)

RegisterEvent(53, "标牌", function(continueStep)
    if continueStep == 2 then
        evt.SetDoorState(13, DoorAction.Trigger)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("深红的余烬将指引道路")
    evt._PressAnyKey(53, 2)
end, "标牌")

RegisterEvent(54, "拉杆", function()
    if not IsAtLeast(MapVar(2), 1) then
        SetValue(MapVar(2), 1)
        evt.SetDoorState(14, DoorAction.Trigger)
        evt.SetTexture(-4219, "lavatyl")
        evt.SetTexture(-4220, "lavatyl")
        evt.SetTexture(-4221, "lavatyl")
        evt.SetTexture(-4222, "lavatyl")
        evt.SetTexture(-4223, "lavatyl")
        evt.SetFacetBit(-4219, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4220, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4221, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4222, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4223, FacetBits.Fluid, 1)
        return
    end
    evt.SetDoorState(14, DoorAction.Trigger)
    SetValue(MapVar(2), 0)
    evt.SetTexture(-4219, "orwtrtyl")
    evt.SetTexture(-4220, "orwtrtyl")
    evt.SetTexture(-4221, "orwtrtyl")
    evt.SetTexture(-4222, "orwtrtyl")
    evt.SetTexture(-4223, "orwtrtyl")
end, "拉杆")

RegisterEvent(55, "标牌", function(continueStep)
    if continueStep == 2 then
        evt.SetDoorState(11, DoorAction.Trigger)
    end
    if continueStep ~= nil then return end
    evt.SetMessage("深红的余烬将指引道路")
    evt._PressAnyKey(55, 2)
end, "标牌")

RegisterEvent(56, "标牌", function()
    if not IsAtLeast(MapVar(3), 1) then
        evt.SetDoorState(12, DoorAction.Trigger)
        SetValue(MapVar(3), 1)
        evt.SetTexture(-4265, "lavatyl")
        evt.SetTexture(-4266, "lavatyl")
        evt.SetTexture(-4267, "lavatyl")
        evt.SetTexture(-4268, "lavatyl")
        evt.SetTexture(-4269, "lavatyl")
        evt.SetFacetBit(-4265, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4266, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4267, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4268, FacetBits.Fluid, 1)
        evt.SetFacetBit(-4269, FacetBits.Fluid, 1)
        return
    end
    evt.SetDoorState(14, DoorAction.Trigger)
    SetValue(MapVar(3), 0)
    evt.SetTexture(-4265, "orwtrtyl")
    evt.SetTexture(-4266, "orwtrtyl")
    evt.SetTexture(-4267, "orwtrtyl")
    evt.SetTexture(-4269, "orwtrtyl")
    evt.SetTexture(-4269, "orwtrtyl")
end, "标牌")

RegisterEvent(57, "水晶", function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1126)) then -- Oracle
        return
    elseif HasItem(2172) then -- Memory Crystal Delta
        return
    else
        evt.SetSprite(329, 1, "crysdisc")
        evt.ForPlayer(6)
        AddValue(InventoryItem(2172), 2172) -- Memory Crystal Delta
        SetQBit(QBit(1217)) -- Quest item bits for seer
        return
    end
end, "水晶")

RegisterEvent(58, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1126)) or HasItem(2172) then -- Oracle
        evt.SetSprite(329, 1, "crysdisc")
    end
    if IsAtLeast(MapVar(4), 1) then
        evt.SetTexture(-4298, "lavatyl")
        evt.SetTexture(-4299, "lavatyl")
        evt.SetTexture(-4300, "lavatyl")
        evt.SetTexture(-4301, "lavatyl")
        evt.SetTexture(-4302, "lavatyl")
    end
    if IsAtLeast(MapVar(2), 1) then
        evt.SetTexture(-4219, "lavatyl")
        evt.SetTexture(-4220, "lavatyl")
        evt.SetTexture(-4221, "lavatyl")
        evt.SetTexture(-4222, "lavatyl")
        evt.SetTexture(-4223, "lavatyl")
    end
    if IsAtLeast(MapVar(3), 1) then
        evt.SetTexture(-4265, "lavatyl")
        evt.SetTexture(-4266, "lavatyl")
        evt.SetTexture(-4267, "lavatyl")
        evt.SetTexture(-4268, "lavatyl")
        evt.SetTexture(-4269, "lavatyl")
    end
    if IsQBitSet(QBit(1033)) then -- 9, CD2, given when you destroy Lich book
        evt.SetTexture(-4560, "deskside")
    end
    if IsAtLeast(MapVar(3), 1) then
        evt.SetFacetBit(-4522, FacetBits.Untouchable, 1)
        evt.SetFacetBit(-4575, FacetBits.Untouchable, 1)
    end
end)

RegisterEvent(59, "力场", function()
    evt.StatusText("你的去路被挡住了。")
end, "力场")

RegisterEvent(60, nil, function()
    evt.MoveToMap(-17281, 17465, 2081, 0, 0, 0, 0, 0, "outc3.odm") -- Mire of the Damned
end)

RegisterEvent(61, "石棺", function(continueStep)
    if continueStep == 3 then
        return
    end
    if continueStep == 4 then
        SetValue(MapVar(11), 1)
        evt.GiveItem(6, 35)
        SubtractValue(655595, 10)
    end
    if continueStep ~= nil then return end
    if IsAtLeast(MapVar(11), 1) then return end
    evt.SetMessage("要盗取死者之物吗？")
    evt.AskQuestion(61, 3, 21, 4, 22, 23, "要偷窃（是/否）？", {"Yes", "Y"})
    return nil
end, "石棺")

RegisterEvent(62, "石棺", function(continueStep)
    if continueStep == 3 then
        return
    end
    if continueStep == 4 then
        SetValue(MapVar(12), 1)
        evt.GiveItem(6, 39)
        SubtractValue(655595, 10)
    end
    if continueStep ~= nil then return end
    if IsAtLeast(MapVar(12), 1) then return end
    evt.SetMessage("要盗取死者之物吗？")
    evt.AskQuestion(62, 3, 21, 4, 22, 23, "要偷窃（是/否）？", {"Yes", "Y"})
    return nil
end, "石棺")

RegisterEvent(63, "石棺", function(continueStep)
    if continueStep == 3 then
        return
    end
    if continueStep == 4 then
        SetValue(MapVar(13), 1)
        evt.GiveItem(6, 36)
        SubtractValue(655595, 10)
    end
    if continueStep ~= nil then return end
    if IsAtLeast(MapVar(13), 1) then return end
    evt.SetMessage("要盗取死者之物吗？")
    evt.AskQuestion(63, 3, 21, 4, 22, 23, "要偷窃（是/否）？", {"Yes", "Y"})
    return nil
end, "石棺")

RegisterEvent(64, nil, function()
    if IsAtLeast(MapVar(14), 1) then return end
    evt.ForPlayer(Players.Current)
    SetValue(MapVar(14), 1)
    AddValue(SkillPoints, 20)
    evt.StatusText("真聪明！技能点+20")
end)

