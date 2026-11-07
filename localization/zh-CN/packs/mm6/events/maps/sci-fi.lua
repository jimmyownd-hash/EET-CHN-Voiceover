-- Control Center
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapEvents = {47, 71},
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [29] = {0},
    [30] = {1},
    [31] = {2},
    [32] = {3},
    [33] = {4},
    [34] = {5},
    [35] = {6},
    [36] = {7},
    [37] = {8},
    [65] = {9},
    [66] = {10},
    [67] = {11},
    [68] = {12},
    [69] = {13},
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
    [22] = { kind = "open_door", source = "title" },
    [23] = { kind = "open_door", source = "title" },
    [24] = { kind = "open_door", source = "title" },
    [25] = { kind = "open_door", source = "title" },
    [26] = { kind = "open_door", source = "title" },
    [27] = { kind = "open_door", source = "title" },
    [28] = { kind = "open_door", source = "title" },
    [29] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [30] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [31] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [32] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [33] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [34] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [35] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [36] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [37] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [47] = { kind = "secret_event", source = "heuristic", hidden = true },
    [53] = { kind = "generic_event", source = "opcode" },
    [54] = { kind = "generic_event", source = "opcode" },
    [55] = { kind = "generic_event", source = "opcode" },
    [56] = { kind = "generic_event", source = "opcode" },
    [57] = { kind = "generic_event", source = "opcode" },
    [58] = { kind = "generic_event", source = "opcode" },
    [59] = { kind = "generic_event", source = "opcode" },
    [60] = { kind = "generic_event", source = "opcode" },
    [61] = { kind = "generic_event", source = "opcode" },
    [62] = { kind = "secret_event", source = "heuristic", hidden = true },
    [63] = { kind = "secret_event", source = "heuristic", hidden = true },
    [64] = { kind = "secret_event", source = "heuristic", hidden = true },
    [65] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [66] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [67] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [68] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [69] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [70] = { kind = "passage", source = "opcode", targetMap = "oracle.blv", targetName = "恩洛斯神谕" },
    },
    textureNames = {"trekscon"},
    spriteNames = {},
    castSpellIds = {15},
    timers = {
    { eventId = 71, sourceEventId = 71, triggerStep = 0, origin = "legacy", triggerKind = "timer", scheduleKind = "interval", intervalHalfMinutes = 3 },
    },
})

RegisterEvent(1, "门", function()
    evt.StatusText("门纹丝不动。")
end, "门")

RegisterEvent(2, "门", function()
    evt.SetDoorState(2, DoorAction.Trigger)
    evt.SetDoorState(3, DoorAction.Trigger)
    evt.SetDoorState(15, DoorAction.Open)
    evt.SetDoorState(16, DoorAction.Open)
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
    evt.SetDoorState(9, DoorAction.Open)
end, "门")

RegisterEvent(8, "门", function()
    evt.SetDoorState(8, DoorAction.Close)
    evt.SetDoorState(7, DoorAction.Open)
    evt.SetDoorState(9, DoorAction.Open)
end, "门")

RegisterEvent(9, "门", function()
    evt.SetDoorState(9, DoorAction.Close)
    evt.SetDoorState(8, DoorAction.Open)
    evt.SetDoorState(7, DoorAction.Open)
end, "门")

RegisterEvent(10, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(11, "门", function()
    evt.SetDoorState(10, DoorAction.Close)
    evt.SetDoorState(11, DoorAction.Close)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(12, DoorAction.Close)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(13, DoorAction.Close)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(14, DoorAction.Close)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(15, DoorAction.Trigger)
    evt.SetDoorState(16, DoorAction.Trigger)
    evt.SetDoorState(2, DoorAction.Open)
    evt.SetDoorState(3, DoorAction.Open)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(16, DoorAction.Close)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(17, DoorAction.Close)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(18, DoorAction.Close)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(19, DoorAction.Close)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(20, DoorAction.Close)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(21, DoorAction.Close)
end, "门")

RegisterEvent(22, "门", function()
    evt.SetDoorState(22, DoorAction.Close)
end, "门")

RegisterEvent(23, "门", function()
    evt.SetDoorState(23, DoorAction.Close)
end, "门")

RegisterEvent(24, "门", function()
    evt.SetDoorState(24, DoorAction.Trigger)
    evt.SetDoorState(25, DoorAction.Trigger)
end, "门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(25, DoorAction.Close)
end, "门")

RegisterEvent(26, "门", function()
    evt.SetDoorState(26, DoorAction.Trigger)
    evt.SetDoorState(1, DoorAction.Trigger)
end, "门")

RegisterEvent(27, "门", function()
    evt.SetDoorState(27, DoorAction.Trigger)
    evt.SetDoorState(28, DoorAction.Trigger)
end, "门")

RegisterEvent(28, "门", function()
    evt.SetDoorState(28, DoorAction.Close)
    evt.SetDoorState(27, DoorAction.Close)
end, "门")

RegisterEvent(29, "储物容器", function()
    evt.OpenChest(0)
end, "储物容器")

RegisterEvent(30, "储物容器", function()
    evt.OpenChest(1)
end, "储物容器")

RegisterEvent(31, "储物容器", function()
    evt.OpenChest(2)
end, "储物容器")

RegisterEvent(32, "储物容器", function()
    evt.OpenChest(3)
end, "储物容器")

RegisterEvent(33, "储物容器", function()
    evt.OpenChest(4)
end, "储物容器")

RegisterEvent(34, "储物容器", function()
    evt.OpenChest(5)
    evt.ForPlayer(Players.All)
    SetAward(Award(103)) -- Super-Goober
end, "储物容器")

RegisterEvent(35, "储物容器", function()
    evt.OpenChest(6)
end, "储物容器")

RegisterEvent(36, "储物容器", function()
    evt.OpenChest(7)
end, "储物容器")

RegisterEvent(37, "储物容器", function()
    evt.OpenChest(8)
end, "储物容器")

RegisterEvent(38, nil, function()
    evt.SetLight(45, 1)
    evt.SetLight(46, 1)
    evt.SetLight(47, 1)
    evt.SetLight(48, 1)
    evt.SetLight(49, 1)
end)

RegisterEvent(39, nil, function()
    evt.SetLight(31, 1)
    evt.SetLight(32, 1)
    evt.SetLight(33, 1)
    evt.SetLight(34, 1)
    evt.SetLight(35, 1)
    evt.SetLight(36, 1)
    evt.SetLight(37, 1)
    evt.SetLight(38, 1)
    evt.SetLight(39, 1)
    evt.SetLight(40, 1)
    evt.SetLight(41, 1)
    evt.SetLight(42, 1)
    evt.SetLight(43, 1)
    evt.SetLight(44, 1)
    evt.SetLight(391, 1)
end)

RegisterEvent(40, nil, function()
    evt.SetLight(50, 1)
    evt.SetLight(51, 1)
    evt.SetLight(52, 1)
    evt.SetLight(53, 1)
    evt.SetLight(54, 1)
    evt.SetLight(55, 1)
    evt.SetLight(56, 1)
    evt.SetLight(57, 1)
    evt.SetLight(58, 1)
    evt.SetLight(59, 1)
end)

RegisterEvent(41, nil, function()
    evt.SetLight(60, 1)
    evt.SetLight(61, 1)
    evt.SetLight(62, 1)
    evt.SetLight(63, 1)
    evt.SetLight(64, 1)
    evt.SetLight(65, 1)
    evt.SetLight(66, 1)
    evt.SetLight(67, 1)
end)

RegisterEvent(42, nil, function()
    evt.SetLight(68, 1)
    evt.SetLight(69, 1)
    evt.SetLight(70, 1)
    evt.SetLight(71, 1)
    evt.SetLight(72, 1)
    evt.SetLight(73, 1)
    evt.SetLight(74, 1)
    evt.SetLight(75, 1)
end)

RegisterEvent(43, nil, function()
    evt.SetLight(77, 1)
    evt.SetLight(78, 1)
    evt.SetLight(79, 1)
end)

RegisterEvent(44, nil, function()
    evt.SetLight(389, 1)
    evt.SetLight(390, 1)
end)

RegisterEvent(45, nil, function()
    evt.SetLight(45, 0)
    evt.SetLight(46, 0)
    evt.SetLight(47, 0)
    evt.SetLight(48, 0)
    evt.SetLight(49, 0)
end)

RegisterEvent(46, nil, function()
    evt.SetLight(45, 0)
    evt.SetLight(46, 0)
    evt.SetLight(47, 0)
    evt.SetLight(48, 0)
    evt.SetLight(49, 0)
    evt.SetLight(31, 0)
    evt.SetLight(32, 0)
    evt.SetLight(33, 0)
    evt.SetLight(34, 0)
    evt.SetLight(35, 0)
    evt.SetLight(36, 0)
    evt.SetLight(37, 0)
    evt.SetLight(38, 0)
    evt.SetLight(39, 0)
    evt.SetLight(40, 0)
    evt.SetLight(41, 0)
    evt.SetLight(42, 0)
    evt.SetLight(43, 0)
    evt.SetLight(44, 0)
    evt.SetLight(391, 0)
end)

RegisterEvent(47, nil, function()
    evt.SetLight(31, 0)
    evt.SetLight(32, 0)
    evt.SetLight(33, 0)
    evt.SetLight(34, 0)
    evt.SetLight(35, 0)
    evt.SetLight(36, 0)
    evt.SetLight(37, 0)
    evt.SetLight(38, 0)
    evt.SetLight(39, 0)
    evt.SetLight(40, 0)
    evt.SetLight(41, 0)
    evt.SetLight(42, 0)
    evt.SetLight(43, 0)
    evt.SetLight(44, 0)
    evt.SetLight(391, 0)
    evt.SetLight(50, 0)
    evt.SetLight(51, 0)
    evt.SetLight(52, 0)
    evt.SetLight(53, 0)
    evt.SetLight(54, 0)
    evt.SetLight(55, 0)
    evt.SetLight(56, 0)
    evt.SetLight(57, 0)
    evt.SetLight(58, 0)
    evt.SetLight(59, 0)
    evt.CastSpell(15, 100, 3, -10880, -4224, 660, -10880, -4224, 400) -- Sparks
end)

RegisterEvent(48, nil, function()
    evt.SetLight(50, 0)
    evt.SetLight(51, 0)
    evt.SetLight(52, 0)
    evt.SetLight(53, 0)
    evt.SetLight(54, 0)
    evt.SetLight(55, 0)
    evt.SetLight(56, 0)
    evt.SetLight(57, 0)
    evt.SetLight(58, 0)
    evt.SetLight(59, 0)
    evt.SetLight(60, 0)
    evt.SetLight(61, 0)
    evt.SetLight(62, 0)
    evt.SetLight(63, 0)
    evt.SetLight(64, 0)
    evt.SetLight(65, 0)
    evt.SetLight(66, 0)
    evt.SetLight(67, 0)
end)

RegisterEvent(49, nil, function()
    evt.SetLight(60, 0)
    evt.SetLight(61, 0)
    evt.SetLight(62, 0)
    evt.SetLight(63, 0)
    evt.SetLight(64, 0)
    evt.SetLight(65, 0)
    evt.SetLight(66, 0)
    evt.SetLight(67, 0)
    evt.SetLight(68, 0)
    evt.SetLight(69, 0)
    evt.SetLight(70, 0)
    evt.SetLight(71, 0)
    evt.SetLight(72, 0)
    evt.SetLight(73, 0)
    evt.SetLight(74, 0)
    evt.SetLight(75, 0)
end)

RegisterEvent(50, nil, function()
    evt.SetLight(68, 0)
    evt.SetLight(69, 0)
    evt.SetLight(70, 0)
    evt.SetLight(71, 0)
    evt.SetLight(72, 0)
    evt.SetLight(73, 0)
    evt.SetLight(74, 0)
    evt.SetLight(75, 0)
    evt.SetLight(77, 0)
    evt.SetLight(78, 0)
    evt.SetLight(79, 0)
end)

RegisterEvent(51, nil, function()
    evt.SetLight(77, 0)
    evt.SetLight(78, 0)
    evt.SetLight(79, 0)
    evt.SetLight(389, 0)
    evt.SetLight(390, 0)
end)

RegisterEvent(52, nil, function()
    evt.SetLight(389, 0)
    evt.SetLight(390, 0)
end)

RegisterEvent(53, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2884, "trekscon")
    evt.SetMessage("您好，欢迎参观瓦尔恩行星控制设施自助导览。我们热忱欢迎每一位访客。每到一个关键区域，请务必查看我们的显示屏以获取更多信息。祝您参观愉快！")
    evt._PressAnyKey(53, 3)
end, "电脑终端")

RegisterEvent(54, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2888, "trekscon")
    evt.SetMessage("这里是主设备仓储与维修设施。此时您可能已经注意到几个漂浮的机器人。它们既负责维护本设施的关键系统，也负责卫生清洁。若某个单元受损，会被送到这里维修。")
    evt._PressAnyKey(54, 3)
end, "电脑终端")

RegisterEvent(55, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2915, "trekscon")
    evt.SetMessage("\"您左手边的房间是主会议厅。来自世界各地的贵宾曾在这里受邀赴宴。据说，谢里丹国王在二十一岁生日宴上差点被一块莫格瑞德噎死，幸被一名侍女所救，后来他娶了她，立她为王后。啊，爱情。\"")
    evt._PressAnyKey(55, 3)
end, "电脑终端")

RegisterEvent(56, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2890, "trekscon")
    evt.SetMessage("\"总工程师威尔逊的个人日志。我把自己锁在了六号储藏室里，目前无法脱身。机器人已经发疯，开始见人就杀。尽管有危险泄漏的警告，我还是设法进入了四层的主控终端并发出了求救信号，但我们已有数周没有与任何殖民地联系，我不认为会有救援。我还成功封锁了本设施，使机器人无法逃出。我希望在我的加密密码被破解之前，殖民者能够组织起某种防御。告诉艾玛，我爱她。威尔逊，完毕。\"")
    evt._PressAnyKey(56, 3)
end, "电脑终端")

RegisterEvent(57, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2896, "trekscon")
    evt.SetMessage("对于任何不便我们深表歉意，现请全体人员撤离本设施。请勿惊慌。谢谢。")
    evt._PressAnyKey(57, 3)
end, "电脑终端")

RegisterEvent(58, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2899, "trekscon")
    evt.SetMessage("进入行星反应室前，请向任一机器人索要一副护目镜。在运行高峰期，本设施产生的能量足以点亮从太空中可见的强光。请勿直视光源。")
    evt._PressAnyKey(58, 3)
end, "电脑终端")

RegisterEvent(59, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2906, "trekscon")
    evt.SetMessage("警报：四层 18 至 96 区环境控制已离线。在另行通知前，仅限机器人进入。")
    evt._PressAnyKey(59, 3)
end, "电脑终端")

RegisterEvent(60, "电脑终端", function(continueStep)
    if continueStep == 3 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2918, "trekscon")
    evt.SetMessage("\"警告，入侵警报，四层，区。所有机器人前往四层拦截入侵者。反应堆已离线。加密完整度 2.064%。警告，入侵警报，四层……\"")
    evt._PressAnyKey(60, 3)
end, "电脑终端")

RegisterEvent(61, "电脑终端", function(continueStep)
    if continueStep == 4 then
    end
    if continueStep ~= nil then return end
    evt.SetTexture(-2912, "trekscon")
    SetQBit(QBit(1300)) -- NPC
    evt.SetMessage("激光枪能提供高效精准的远程攻击。使用时，请舒适地握住枪柄，将枪口对准目标，轻轻扣动扳机。若武器走火，切勿直视枪管——交给教官处理问题。绝不要将激光枪对准任何你不想蒸发的东西。")
    evt._PressAnyKey(61, 4)
end, "电脑终端")

RegisterEvent(62, nil, function()
    evt.StatusText("短路了！")
    evt.DamagePlayer(6, const.Damage.Fire, 200)
end)

RegisterEvent(63, nil, function()
    evt.StatusText("短路了！")
    evt.DamagePlayer(6, const.Damage.Fire, 200)
end)

RegisterEvent(64, nil, function()
    evt.StatusText("短路了！")
    evt.DamagePlayer(6, const.Damage.Fire, 200)
end)

RegisterEvent(65, "储物容器", function()
    evt.OpenChest(9)
end, "储物容器")

RegisterEvent(66, "储物容器", function()
    evt.OpenChest(10)
end, "储物容器")

RegisterEvent(67, "储物容器", function()
    evt.OpenChest(11)
end, "储物容器")

RegisterEvent(68, "储物容器", function()
    evt.OpenChest(12)
end, "储物容器")

RegisterEvent(69, "储物容器", function()
    evt.OpenChest(13)
end, "储物容器")

RegisterEvent(70, "出口", function()
    evt.MoveToMap(-1433, 2204, -495, 1536, 0, 0, 0, 0, "oracle.blv") -- Oracle of Enroth
end, "出口")

RegisterEvent(71, nil, function()
    evt.CastSpell(15, 100, 3, -5632, -4736, 660, -5632, -4000, 660) -- Sparks
end)

