-- Tomb of VARN
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [41] = {1, 6},
    [42] = {2},
    [43] = {3},
    [44] = {4},
    [45] = {5},
    [49] = {6},
    },
    contextActions = {
    [1] = { kind = "well", source = "title" },
    [2] = { kind = "open_door", source = "title" },
    [3] = { kind = "open_door", source = "title" },
    [4] = { kind = "open_door", source = "title" },
    [5] = { kind = "open_door", source = "title" },
    [6] = { kind = "open_door", source = "title" },
    [7] = { kind = "open_door", source = "title" },
    [8] = { kind = "use_switch", source = "title" },
    [9] = { kind = "use_switch", source = "title" },
    [10] = { kind = "open_door", source = "title" },
    [11] = { kind = "open_door", source = "opcode" },
    [15] = { kind = "open_door", source = "opcode" },
    [16] = { kind = "open_door", source = "title" },
    [17] = { kind = "leave_dungeon", source = "opcode", targetMap = "outb3.odm", targetName = "龙沙" },
    [18] = { kind = "leave_dungeon", source = "opcode", targetMap = "outb3.odm", targetName = "龙沙" },
    [20] = { kind = "open_door", source = "opcode" },
    [21] = { kind = "generic_event", source = "opcode" },
    [22] = { kind = "generic_event", source = "opcode" },
    [23] = { kind = "generic_event", source = "opcode" },
    [24] = { kind = "generic_event", source = "opcode" },
    [25] = { kind = "generic_event", source = "opcode" },
    [29] = { kind = "use_switch", source = "title" },
    [30] = { kind = "open_door", source = "title" },
    [31] = { kind = "open_door", source = "title" },
    [32] = { kind = "use_switch", source = "title" },
    [33] = { kind = "teleport", source = "heuristic" },
    [35] = { kind = "open_door", source = "opcode" },
    [41] = { kind = "open_chest", source = "opcode", chestIds = {1, 6} },
    [42] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [43] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [44] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [45] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [46] = { kind = "generic_event", source = "opcode" },
    [47] = { kind = "generic_event", source = "opcode" },
    [48] = { kind = "generic_event", source = "opcode" },
    [49] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [52] = { kind = "generic_event", source = "opcode" },
    [53] = { kind = "generic_event", source = "opcode" },
    [54] = { kind = "generic_event", source = "opcode" },
    [55] = { kind = "generic_event", source = "opcode" },
    [72] = { kind = "generic_event", source = "opcode" },
    [73] = { kind = "generic_event", source = "opcode" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    { eventId = 12, sourceEventId = 12, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 3 },
    { eventId = 14, sourceEventId = 14, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 4 },
    { eventId = 56, sourceEventId = 56, triggerStep = 0, origin = "legacy", triggerKind = "long", scheduleKind = "weekly" },
    },
})

RegisterEvent(1, "VARN之井", function(continueStep)
    if continueStep == 10 then
        evt.StatusText("错误。")
        evt.FaceExpression(44)
        SubtractValue(CurrentHealth, 5)
        return
    end
    if continueStep == 14 then
        SetValue(MapVar(17), 1)
        RemoveItem(2157) -- Captain's Code
        ClearQBit(QBit(1255)) -- Quest item bits for seer
        evt.SetDoorState(1, DoorAction.Close)
        evt.StatusText("水分开了。")
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(2), 0)
    if not HasItem(2157) then return end -- Captain's Code
    if not IsAtLeast(MapVar(29), 1) then
        evt.StatusText("访问被拒绝。必须先输入所有密码。")
        SubtractValue(CurrentHealth, 25)
        evt.FaceExpression(35)
        return
    end
    evt.SetMessage("船长的密码是什么？")
    evt.AskQuestion(1, 10, 44, 14, 43, 43, "答案？", {"kriK", "kriK"})
    return nil
end, "VARN之井")

RegisterEvent(2, "画像门", function()
    evt.SetDoorState(2, DoorAction.Close)
end, "画像门")

RegisterEvent(3, "后门", function()
    if not HasItem(2195) then -- Back Door Key
        evt.StatusText("门是锁着的")
        return
    end
    if not IsAtLeast(ActualMight, 35) then
        evt.StatusText("门纹丝不动。")
        return
    end
    RemoveItem(2195) -- Back Door Key
    evt.SetDoorState(3, DoorAction.Close)
end, "后门")

RegisterEvent(4, "画像门", function()
    evt.SetDoorState(4, DoorAction.Close)
end, "画像门")

RegisterEvent(5, "门", function()
    evt.SetDoorState(5, DoorAction.Close)
end, "门")

RegisterEvent(6, "画像门", function()
    evt.SetDoorState(6, DoorAction.Close)
end, "画像门")

RegisterEvent(7, "画像门", function()
    evt.SetDoorState(7, DoorAction.Close)
end, "画像门")

RegisterEvent(8, "开关", function()
    evt.SetDoorState(8, DoorAction.Trigger)
    evt.StatusText("陷阱！")
    evt.DamagePlayer(Players.Current, const.Damage.Fire, 200)
end, "开关")

RegisterEvent(9, "开关", function()
    evt.SetDoorState(9, DoorAction.Trigger)
    evt.StatusText("陷阱！")
    evt.DamagePlayer(Players.Current, const.Damage.Magic, 200)
end, "开关")

RegisterEvent(10, "画像门", function()
    evt.SetDoorState(10, DoorAction.Close)
end, "画像门")

RegisterEvent(11, "水神庙", function()
    if not HasItem(2193) then -- Water Temple Key
        evt.StatusText("门是锁着的")
        return
    end
    RemoveItem(2193) -- Water Temple Key
    evt.SetDoorState(11, DoorAction.Close)
end, "水之圣殿")

RegisterEvent(12, nil, function()
    if not IsAtLeast(MapVar(2), 1) then return end
    evt.ForPlayer(6)
    if not HasItem(2086) then -- Crystal Skull
        local randomStep = PickRandomOption(12, 6, {6, 9, 12, 15, 18, 21})
        if randomStep == 6 then
            evt.DamagePlayer(Players.All, const.Damage.Water, 5)
            evt.StatusText("辐射伤害！")
            return
        elseif randomStep == 9 then
            evt.DamagePlayer(Players.All, const.Damage.Fire, 5)
            evt.StatusText("辐射伤害！")
            return
        elseif randomStep == 12 then
            evt.DamagePlayer(Players.All, const.Damage.Air, 5)
            evt.StatusText("辐射伤害！")
            return
        elseif randomStep == 15 then
            evt.DamagePlayer(Players.All, const.Damage.Magic, 5)
            evt.StatusText("辐射伤害！")
            return
        elseif randomStep == 18 then
            evt.DamagePlayer(Players.All, const.Damage.Physical, 5)
            evt.StatusText("辐射伤害！")
            return
        elseif randomStep == 21 then
            evt.DamagePlayer(Players.All, const.Damage.Body, 5)
            evt.StatusText("辐射伤害！")
            return
        end
        return
    end
    evt.StatusText("水晶骷髅吸收了辐射伤害。")
end)

RegisterEvent(13, "净化池", function()
    SetValue(MapVar(2), 0)
end, "净化池")

RegisterEvent(14, nil, function()
    if not IsAtLeast(MapVar(4), 1) then
        SetValue(MapVar(4), 1)
        if IsAtLeast(MapVar(5), 1) then
            evt.StatusText("主电源故障。应急电源已开启。")
        end
        evt.SetLight(35, 0)
        evt.SetLight(43, 0)
        evt.SetLight(34, 0)
        evt.SetLight(36, 0)
        evt.SetLight(37, 0)
        evt.SetLight(33, 0)
        evt.SetLight(42, 1)
        evt.SetLight(41, 1)
        evt.SetLight(38, 1)
        evt.SetLight(40, 1)
        evt.SetLight(39, 1)
        return
    end
    SetValue(MapVar(4), 0)
    if IsAtLeast(MapVar(5), 1) then
        AddValue(MapVar(5), 1)
        evt.StatusText("主电源已恢复。")
    end
    evt.SetLight(35, 1)
    evt.SetLight(43, 1)
    evt.SetLight(34, 1)
    evt.SetLight(36, 1)
    evt.SetLight(37, 1)
    evt.SetLight(33, 1)
    evt.SetLight(42, 0)
    evt.SetLight(41, 0)
    evt.SetLight(38, 0)
    evt.SetLight(40, 0)
    evt.SetLight(39, 0)
    if IsAtLeast(MapVar(5), 3) then
        SetValue(MapVar(5), 0)
    end
end)

RegisterEvent(15, nil, function()
    evt.SetDoorState(15, DoorAction.Close)
end)

RegisterEvent(16, "画像门", function()
    if not IsAtLeast(ActualMight, 25) then
        evt.StatusText("门纹丝不动。")
        return
    end
    evt.SetDoorState(16, DoorAction.Close)
end, "画像门")

RegisterEvent(17, "出口", function()
    evt.MoveToMap(-6647, 13018, 1761, 1536, 0, 0, 0, 0, "outb3.odm") -- Dragonsand
end, "出口")

RegisterEvent(18, "出口", function()
    evt.MoveToMap(-6611, 11408, 480, 1536, 0, 0, 0, 0, "outb3.odm") -- Dragonsand
end, "出口")

RegisterEvent(19, "画像", nil, "画像")

RegisterEvent(20, nil, function()
    evt.SetDoorState(16, DoorAction.Open)
end)

RegisterEvent(21, "净化池", function(continueStep)
    if continueStep == 5 then
        evt.StatusText("错误。")
        evt.FaceExpression(48)
        SubtractValue(CurrentHealth, 5)
        return
    end
    if continueStep == 9 then
        if IsAtLeast(MapVar(13), 1) and IsAtLeast(MapVar(14), 1) and IsAtLeast(MapVar(15), 1) and IsAtLeast(MapVar(16), 1) then
            SetValue(MapVar(29), 1)
        else
        end
        SetValue(MapVar(12), 1)
        evt.ForPlayer(Players.All)
        RemoveItem(2158) -- First Mate's Code
        ClearQBit(QBit(1253)) -- Quest item bits for seer
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(2), 0)
    if not HasItem(2158) then return end -- First Mate's Code
    evt.SetMessage("大副的密码是什么？")
    evt.AskQuestion(21, 5, 44, 9, 33, 33, "答案？", {"kcopS", "kcopS"})
    return nil
end, "净化池")

RegisterEvent(22, "净化池", function(continueStep)
    if continueStep == 5 then
        evt.StatusText("错误。")
        evt.FaceExpression(33)
        SubtractValue(CurrentHealth, 5)
        return
    end
    if continueStep == 9 then
        if IsAtLeast(MapVar(12), 1) and IsAtLeast(MapVar(14), 1) and IsAtLeast(MapVar(15), 1) and IsAtLeast(MapVar(16), 1) then
            SetValue(MapVar(29), 1)
        else
        end
        SetValue(MapVar(13), 1)
        evt.ForPlayer(Players.All)
        RemoveItem(2159) -- Navigator's Code
        ClearQBit(QBit(1256)) -- Quest item bits for seer
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(2), 0)
    if not HasItem(2159) then return end -- Navigator's Code
    evt.SetMessage("领航员的密码是什么？")
    evt.AskQuestion(22, 5, 44, 9, 35, 35, "答案？", {"uluS", "uluS"})
    return nil
end, "净化池")

RegisterEvent(23, "净化池", function(continueStep)
    if continueStep == 5 then
        evt.StatusText("错误。")
        evt.FaceExpression(50)
        SubtractValue(CurrentHealth, 5)
        return
    end
    if continueStep == 9 then
        if IsAtLeast(MapVar(13), 1) and IsAtLeast(MapVar(12), 1) and IsAtLeast(MapVar(15), 1) and IsAtLeast(MapVar(16), 1) then
            SetValue(MapVar(29), 1)
        else
        end
        SetValue(MapVar(14), 1)
        evt.ForPlayer(Players.All)
        RemoveItem(2160) -- Communication Officer's Code
        ClearQBit(QBit(1258)) -- Quest item bits for seer
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(2), 0)
    if not HasItem(2160) then return end -- Communication Officer's Code
    evt.SetMessage("通讯官的密码是什么？")
    evt.AskQuestion(23, 5, 44, 9, 37, 37, "答案？", {"aruhU", "aruhU"})
    return nil
end, "净化池")

RegisterEvent(24, "净化池", function(continueStep)
    if continueStep == 5 then
        evt.StatusText("错误。")
        evt.FaceExpression(46)
        SubtractValue(CurrentHealth, 5)
        return
    end
    if continueStep == 9 then
        if IsAtLeast(MapVar(13), 1) and IsAtLeast(MapVar(14), 1) and IsAtLeast(MapVar(12), 1) and IsAtLeast(MapVar(16), 1) then
            SetValue(MapVar(29), 1)
        else
        end
        SetValue(MapVar(15), 1)
        evt.ForPlayer(Players.All)
        RemoveItem(2161) -- Engineer's Code
        ClearQBit(QBit(1257)) -- Quest item bits for seer
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(2), 0)
    if not HasItem(2161) then return end -- Engineer's Code
    evt.SetMessage("工程师的密码是什么？")
    evt.AskQuestion(24, 5, 44, 9, 39, 39, "答案？", {"yttocS", "yttocS"})
    return nil
end, "净化池")

RegisterEvent(25, "净化池", function(continueStep)
    if continueStep == 5 then
        evt.StatusText("错误。")
        evt.FaceExpression(13)
        SubtractValue(CurrentHealth, 5)
        return
    end
    if continueStep == 9 then
        if IsAtLeast(MapVar(13), 1) and IsAtLeast(MapVar(14), 1) and IsAtLeast(MapVar(15), 1) and IsAtLeast(MapVar(12), 1) then
            SetValue(MapVar(29), 1)
        else
        end
        SetValue(MapVar(16), 1)
        evt.ForPlayer(Players.All)
        RemoveItem(2162) -- Doctor's Code
        ClearQBit(QBit(1254)) -- Quest item bits for seer
    end
    if continueStep ~= nil then return end
    SetValue(MapVar(2), 0)
    if not HasItem(2162) then return end -- Doctor's Code
    evt.SetMessage("医生的密码是什么？")
    evt.AskQuestion(25, 5, 44, 9, 41, 41, "答案？", {"yoccM", "yoccM"})
    return nil
end, "净化池")

RegisterEvent(26, "书籍", function()
    if IsAtLeast(MapVar(27), 1) then return end
    SetQBit(QBit(1258)) -- Quest item bits for seer
    AddValue(InventoryItem(2160), 2160) -- Communication Officer's Code
    SetValue(MapVar(27), 1)
end, "书")

RegisterEvent(27, "书籍", function()
    if IsAtLeast(MapVar(28), 1) then return end
    SetQBit(QBit(1257)) -- Quest item bits for seer
    AddValue(InventoryItem(2161), 2161) -- Engineer's Code
    SetValue(MapVar(28), 1)
end, "书")

RegisterEvent(28, nil, function()
    SetValue(MapVar(5), 1)
end)

RegisterEvent(29, "开关", function()
    evt.SetDoorState(38, DoorAction.Close)
    evt.SetDoorState(37, DoorAction.Close)
end, "开关")

RegisterEvent(30, "画像门", function()
    if not IsAtLeast(ActualMight, 20) then
        evt.StatusText("门纹丝不动。")
        return
    end
    evt.SetDoorState(35, DoorAction.Close)
    evt.SetDoorState(36, DoorAction.Close)
end, "画像门")

RegisterEvent(31, "火焰门", function()
    if not HasItem(2194) then -- Flame Door Key
        evt.StatusText("门是锁着的")
        return
    end
    if not IsAtLeast(ActualMight, 25) then
        evt.StatusText("门纹丝不动。")
        return
    end
    RemoveItem(2194) -- Flame Door Key
    evt.SetDoorState(32, DoorAction.Close)
    evt.SetDoorState(31, DoorAction.Close)
end, "火焰门")

RegisterEvent(32, "开关", function()
    evt.SetDoorState(33, DoorAction.Trigger)
    evt.SetDoorState(34, DoorAction.Trigger)
end, "开关")

RegisterEvent(33, nil, function()
    evt.MoveToMap(-9344, -192, 8034, 1, 0, 0, 0, 0)
    evt.SetDoorState(33, DoorAction.Open)
end)

RegisterEvent(35, "控制室入口", function()
    if IsAtLeast(MapVar(17), 1) then
        evt.SetDoorState(39, DoorAction.Close)
        evt.SetDoorState(40, DoorAction.Close)
    end
end, "控制室入口")

RegisterEvent(41, "箱子", function()
    if not IsAtLeast(MapVar(30), 1) then
        if IsQBitSet(QBit(1066)) then -- Bruce
            evt.OpenChest(6)
        elseif HasItem(2197) then -- VARN Chest Key
            RemoveItem(2197) -- VARN Chest Key
            SetValue(MapVar(30), 1)
            evt.OpenChest(1)
            SetQBit(QBit(1066)) -- Bruce
            SetQBit(QBit(1219)) -- Quest item bits for seer
        else
            evt.StatusText("箱子是锁着的")
        end
        return
    end
    evt.OpenChest(1)
    SetQBit(QBit(1066)) -- Bruce
    SetQBit(QBit(1219)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(42, "箱子", function()
    evt.OpenChest(2)
    SetQBit(QBit(1253)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(43, "箱子", function()
    if not IsAtLeast(MapVar(51), 1) then
        if not HasItem(2196) then -- Bibliotheca Chest Key
            evt.StatusText("箱子是锁着的")
            return
        end
        RemoveItem(2196) -- Bibliotheca Chest Key
        SetValue(MapVar(51), 1)
    end
    evt.OpenChest(3)
    SetQBit(QBit(1254)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(44, "箱子", function()
    evt.OpenChest(4)
    SetQBit(QBit(1255)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(45, "箱子", function()
    evt.OpenChest(5)
    SetQBit(QBit(1256)) -- Quest item bits for seer
end, "箱子")

RegisterEvent(46, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("警告！传感器阵列控制严格禁止未经授权的人员操作！使用圣视印记仅限于通讯技术员！违规者将受到轻微电击。")
    evt._PressAnyKey(46, 2)
end, "铭牌")

RegisterEvent(47, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("警告！货运升降机控制严格禁止未经授权的人员操作！使用圣甲虫印记仅限于后勤官！违规者将受到轻微电击。")
    evt._PressAnyKey(47, 2)
end, "铭牌")

RegisterEvent(48, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("中央金字塔的入口在南方。")
    evt._PressAnyKey(48, 2)
end, "铭牌")

RegisterEvent(49, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(51, nil, function()
    SetValue(MapVar(2), 1)
end)

RegisterEvent(52, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("只有持有钥匙的人才能说出密码。")
    evt._PressAnyKey(52, 2)
end, "铭牌")

RegisterEvent(53, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("瓦恩之井必须最后输入密码。")
    evt._PressAnyKey(53, 2)
end, "铭牌")

RegisterEvent(54, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("警告！电源波动！立即通知工程部！")
    evt._PressAnyKey(54, 2)
end, "铭牌")

RegisterEvent(55, "铭牌", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("如发生能量泄漏，请到专为您安全与便利而设的药池中浸泡。")
    evt._PressAnyKey(55, 2)
end, "铭牌")

RegisterEvent(56, nil, function()
    SetValue(MapVar(2), 0)
end)

RegisterEvent(57, nil, function()
    SetValue(MapVar(5), 0)
end)

RegisterEvent(60, "书柜", function()
    if IsAtLeast(MapVar(31), 1) then return end
    SetValue(MapVar(31), 1)
    AddValue(InventoryItem(1912), 1912) -- Meteor Shower
end, "书柜")

RegisterEvent(61, "书柜", function()
    if IsAtLeast(MapVar(32), 1) then return end
    SetValue(MapVar(32), 1)
    AddValue(InventoryItem(1913), 1913) -- Inferno
end, "书柜")

RegisterEvent(62, "书柜", function()
    if IsAtLeast(MapVar(33), 1) then return end
    SetValue(MapVar(33), 1)
    AddValue(InventoryItem(1914), 1914) -- Incinerate
end, "书柜")

RegisterEvent(63, "书柜", function()
    if IsAtLeast(MapVar(34), 1) then return end
    SetValue(MapVar(34), 1)
    AddValue(InventoryItem(1925), 1925) -- Implosion
end, "书柜")

RegisterEvent(64, "书柜", function()
    if IsAtLeast(MapVar(35), 1) then return end
    SetValue(MapVar(35), 1)
    AddValue(InventoryItem(1926), 1926) -- Fly
end, "书柜")

RegisterEvent(65, "书柜", function()
    if IsAtLeast(MapVar(36), 1) then return end
    SetValue(MapVar(36), 1)
    AddValue(InventoryItem(1927), 1927) -- Starburst
end, "书柜")

RegisterEvent(66, "书柜", function()
    if IsAtLeast(MapVar(37), 1) then return end
    SetValue(MapVar(37), 1)
    AddValue(InventoryItem(1938), 1938) -- Town Portal
end, "书柜")

RegisterEvent(67, "书柜", function()
    if IsAtLeast(MapVar(38), 1) then return end
    SetValue(MapVar(38), 1)
    AddValue(InventoryItem(1939), 1939) -- Ice Blast
end, "书柜")

RegisterEvent(68, "书柜", function()
    if IsAtLeast(MapVar(39), 1) then return end
    SetValue(MapVar(39), 1)
    AddValue(InventoryItem(1940), 1940) -- Lloyd's Beacon
end, "书柜")

RegisterEvent(69, "书柜", function()
    if IsAtLeast(MapVar(40), 1) then return end
    SetValue(MapVar(40), 1)
    AddValue(InventoryItem(1951), 1951) -- Telekinesis
end, "书柜")

RegisterEvent(70, "书柜", function()
    if IsAtLeast(MapVar(41), 1) then return end
    SetValue(MapVar(41), 1)
    AddValue(InventoryItem(1952), 1952) -- Death Blossom
end, "书柜")

RegisterEvent(71, "书柜", function()
    if IsAtLeast(MapVar(42), 1) then return end
    SetValue(MapVar(42), 1)
    AddValue(InventoryItem(1953), 1953) -- Mass Distortion
end, "书柜")

RegisterEvent(72, "挂毯", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("你费尽心力，终于解读出象形文字的信息：                                                                                                    穿越虚空的长途跋涉虽艰险漫长，但旅途尽头的土地甜美富饶，未被先辈或敌人染指。请放心，你们的子子孙孙将生活在一个完美世界——没有战争，没有饥荒，没有恐惧。牢记你们的神圣职责：照料方舟，护佑她漫长的航行，确保她安全抵达应许之地。好好看护守护者，将其妥善安置在远离方舟之处，以免一次不幸使两者尽失。")
    evt._PressAnyKey(72, 2)
end, "挂毯")

RegisterEvent(73, "挂毯", function(continueStep)
    if continueStep == 2 then
    end
    if continueStep ~= nil then return end
    evt.SetMessage("你费尽心力，结合恶魔图解，解读出象形文字的信息：                                                                                                    记住我们的敌人，孩子们，永远不要低估他们的威胁。虽然你们在旅途中不会见到他们，但航行结束后，必须永远警惕来自虚空的入侵。敌人虽强大无比，但在穿越之后却十分脆弱——他们数量稀少，防御薄弱。务必使用方舟上携带的能量武器击败他们，绝不要用低等武器与敌人交战，否则必死无疑。")
    evt._PressAnyKey(73, 2)
end, "挂毯")

