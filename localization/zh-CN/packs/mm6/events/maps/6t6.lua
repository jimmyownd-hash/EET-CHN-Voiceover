-- Supreme Temple of Baa
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {34},
    onLoad = {33},
    onLeave = {},
    openedChestIds = {
    [17] = {1},
    [18] = {2},
    [19] = {3},
    [20] = {4},
    [21] = {5},
    [22] = {6},
    [23] = {7},
    [24] = {8},
    },
    contextActions = {
    [1] = { kind = "open_door", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "opcode" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "open_door", source = "title" },
    [9] = { kind = "open_door", source = "opcode" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "opcode" },
    [12] = { kind = "use_switch", source = "title" },
    [13] = { kind = "use_switch", source = "title" },
    [14] = { kind = "use_switch", source = "title" },
    [15] = { kind = "use_switch", source = "title" },
    [16] = { kind = "open_door", source = "opcode" },
    [17] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [18] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [19] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [20] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [21] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [22] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [23] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [24] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [30] = { kind = "open_door", source = "opcode" },
    [31] = { kind = "passage", source = "opcode", targetMap = "sewer.blv", targetName = "自由港下水道" },
    [32] = { kind = "generic_event", source = "opcode" },
    [34] = { kind = "secret_event", source = "heuristic", hidden = true },
    [35] = { kind = "leave_dungeon", source = "opcode", targetMap = "outa3.odm", targetName = "隐士岛" },
    [37] = { kind = "secret_event", source = "heuristic", hidden = true },
    [40] = { kind = "shrine", source = "title" },
    [41] = { kind = "shrine", source = "title" },
    [42] = { kind = "shrine", source = "title" },
    [43] = { kind = "shrine", source = "title" },
    [44] = { kind = "shrine", source = "title" },
    [45] = { kind = "shrine", source = "title" },
    [46] = { kind = "shrine", source = "title" },
    },
    textureNames = {},
    spriteNames = {"crysdisc"},
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

RegisterEvent(3, "门", function()
    evt.SetDoorState(3, DoorAction.Close)
end, "门")

RegisterEvent(4, "门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "门")

RegisterEvent(5, nil, function()
    evt.SetDoorState(5, DoorAction.Close)
end)

RegisterEvent(6, "门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "门")

RegisterEvent(7, "门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
end, "门")

RegisterEvent(9, nil, function()
    evt.SetDoorState(9, DoorAction.Close)
end)

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "门")

RegisterEvent(11, nil, function()
    evt.SetDoorState(11, DoorAction.Close)
end)

RegisterEvent(12, "开关", function()
    evt.SetDoorState(16, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(15, DoorAction.Trigger)
end, "开关")

RegisterEvent(13, "开关", function()
    evt.SetDoorState(17, DoorAction.Trigger)
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(14, DoorAction.Trigger)
end, "开关")

RegisterEvent(14, "开关", function()
    evt.SetDoorState(18, DoorAction.Trigger)
    evt.SetDoorState(13, DoorAction.Trigger)
    evt.SetDoorState(15, DoorAction.Trigger)
end, "开关")

RegisterEvent(15, "开关", function()
    evt.SetDoorState(19, DoorAction.Trigger)
    evt.SetDoorState(12, DoorAction.Trigger)
    evt.SetDoorState(14, DoorAction.Trigger)
end, "开关")

RegisterEvent(16, nil, function()
    evt.SetDoorState(20, DoorAction.Close)
end)

RegisterEvent(17, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(18, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(19, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(20, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(21, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(22, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(23, "箱子", function()
    evt.OpenChest(7)
    evt.SetDoorState(5, DoorAction.Close)
end, "箱子")

RegisterEvent(24, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(30, nil, function()
    evt.SetDoorState(21, DoorAction.Open)
end)

RegisterEvent(31, "圆柱", function()
    SetQBit(QBit(1200)) -- NPC
    evt.MoveToMap(-9110, -5381, 17, 1536, 0, 0, 0, 0, "sewer.blv") -- Free Haven Sewer
end, "圆柱")

RegisterEvent(32, "先知记忆水晶", function()
    if IsQBitSet(QBit(1077)) then return end -- 53 T6, Given when characters take the Oracle Crystal from the altar.
    SetQBit(QBit(1077)) -- 53 T6, Given when characters take the Oracle Crystal from the altar.
    evt.SetMessage("出口")
    evt.SetSprite(132, 1, "crysdisc")
    AddValue(InventoryItem(2170), 2170) -- Memory Crystal Alpha
    SetQBit(QBit(1215)) -- Quest item bits for seer
end, "神谕记忆水晶")

RegisterEvent(33, nil, function()
    if IsQBitSet(QBit(1077)) then -- 53 T6, Given when characters take the Oracle Crystal from the altar.
        evt.SetSprite(132, 1, "crysdisc")
    end
end)

RegisterEvent(34, nil, function()
    evt.DamagePlayer(Players.All, const.Damage.Magic, 1000)
end)

RegisterEvent(35, "出口", function()
    evt.MoveToMap(-19914, -18118, 65, 1536, 0, 0, 0, 0, "outa3.odm") -- Hermit's Isle
end, "出口")

RegisterEvent(36, nil, function()
    if IsAtLeast(MapVar(2), 1) then return end
    SetValue(MapVar(2), 1)
    AddValue(InventoryItem(1656), 1656) -- Death Mace
end)

RegisterEvent(37, nil, function()
    if IsAtLeast(MapVar(3), 1) then return end
    evt.SummonMonsters(3, 1, 1, -416, 416, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier A, count 1, pos=(-416, 416, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 1, 1, -576, 0, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier A, count 1, pos=(-576, 0, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 2, 1, -416, -416, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier B, count 1, pos=(-416, -416, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 2, 1, 0, -576, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier B, count 1, pos=(0, -576, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 3, 1, 416, -416, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier C, count 1, pos=(416, -416, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 3, 1, 576, 0, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier C, count 1, pos=(576, 0, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 1, 1, 416, 416, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier A, count 1, pos=(416, 416, -1016), actor group 0, no unique actor name
    evt.SummonMonsters(3, 1, 1, 0, 576, -1016, 0, 0) -- encounter slot 3 "ElemFire" tier A, count 1, pos=(0, 576, -1016), actor group 0, no unique actor name
    SetValue(MapVar(3), 1)
end)

RegisterEvent(40, "火焰祭坛", function()
    if not IsQBitSet(QBit(1339)) then -- NPC
        SetQBit(QBit(1339)) -- NPC
        evt.DamagePlayer(Players.All, const.Damage.Magic, 75)
        evt.StatusText("火焰试炼")
        return
    end
    evt.StatusText("火焰试炼")
end, "火焰祭坛")

RegisterEvent(41, "寒冷祭坛", function()
    if not IsQBitSet(QBit(1340)) then -- NPC
        SetQBit(QBit(1340)) -- NPC
        evt.DamagePlayer(Players.All, const.Damage.Air, 75)
        evt.StatusText("寒冰试炼")
        return
    end
    evt.StatusText("寒冰试炼")
end, "寒冷祭坛")

RegisterEvent(42, "痛苦祭坛", function()
    if not IsQBitSet(QBit(1341)) then -- NPC
        SetQBit(QBit(1341)) -- NPC
        evt.DamagePlayer(Players.All, const.Damage.Magic, 75)
        evt.StatusText("痛苦祭坛")
        return
    end
    evt.StatusText("痛苦祭坛")
end, "痛苦祭坛")

RegisterEvent(43, "火焰神龛", function()
    if IsQBitSet(QBit(1342)) then return end -- NPC
    if IsQBitSet(QBit(1339)) then -- NPC
        if IsQBitSet(QBit(1340)) then -- NPC
            if IsQBitSet(QBit(1341)) then -- NPC
                evt.StatusText("火系抗性+10（永久）。")
                AddValue(FireResistance, 10)
                SetQBit(QBit(1342)) -- NPC
                return
            end
        end
    end
    evt.StatusText("你不配！")
end, "火焰神龛")

RegisterEvent(44, "空气圣坛", function()
    if IsQBitSet(QBit(1343)) then return end -- NPC
    if IsQBitSet(QBit(1339)) then -- NPC
        if IsQBitSet(QBit(1340)) then -- NPC
            if IsQBitSet(QBit(1341)) then -- NPC
                evt.StatusText("电系抗性+10（永久）。")
                AddValue(AirResistance, 10)
                SetQBit(QBit(1343)) -- NPC
                return
            end
        end
    end
    evt.StatusText("你不配！")
end, "大气圣坛")

RegisterEvent(45, "流水圣坛", function()
    if IsQBitSet(QBit(1344)) then return end -- NPC
    if IsQBitSet(QBit(1339)) then -- NPC
        if IsQBitSet(QBit(1340)) then -- NPC
            if IsQBitSet(QBit(1341)) then -- NPC
                evt.StatusText("冰系抗性+10（永久）。")
                AddValue(WaterResistance, 10)
                SetQBit(QBit(1344)) -- NPC
                return
            end
        end
    end
    evt.StatusText("你不配！")
end, "水之圣坛")

RegisterEvent(46, "大地圣坛", function()
    if IsQBitSet(QBit(1345)) then return end -- NPC
    if IsQBitSet(QBit(1339)) then -- NPC
        if IsQBitSet(QBit(1340)) then -- NPC
            if IsQBitSet(QBit(1341)) then -- NPC
                evt.StatusText("魔法抗性+10（永久）。")
                AddValue(FireResistance, 10)
                SetQBit(QBit(1345)) -- NPC
                return
            end
        end
    end
    evt.StatusText("你不配！")
end, "大地圣坛")

