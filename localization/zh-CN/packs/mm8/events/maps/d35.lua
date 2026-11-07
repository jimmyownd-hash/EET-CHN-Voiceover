-- Escaton's Palace
-- generated from legacy EVT/STR

SetMapMetadata({
    levitateTrapFaceMask = 0x08000000,
    onLoad = {1, 2, 3, 4, 5},
    onLeave = {6, 7, 8, 9, 10},
    openedChestIds = {
    [81] = {0},
    [82] = {1},
    [83] = {2},
    [84] = {3},
    [85] = {4},
    [86] = {5},
    [87] = {6},
    [88] = {7},
    [89] = {8},
    [90] = {9},
    [91] = {10},
    [92] = {11},
    [93] = {12},
    [94] = {13},
    [95] = {14},
    [96] = {15},
    [97] = {16},
    [98] = {17},
    [99] = {18},
    [100] = {19},
    },
    contextActions = {
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
    [50] = { kind = "use_lever", source = "title" },
    [51] = { kind = "use_lever", source = "title" },
    [52] = { kind = "use_lever", source = "title" },
    [53] = { kind = "use_lever", source = "title" },
    [54] = { kind = "use_lever", source = "title" },
    [55] = { kind = "press_button", source = "title" },
    [56] = { kind = "use_lever", source = "title" },
    [57] = { kind = "use_lever", source = "title" },
    [58] = { kind = "press_button", source = "title" },
    [59] = { kind = "use_lever", source = "title" },
    [60] = { kind = "press_button", source = "title" },
    [61] = { kind = "use_lever", source = "title" },
    [62] = { kind = "use_lever", source = "title" },
    [63] = { kind = "press_button", source = "title" },
    [64] = { kind = "open_door", source = "title" },
    [65] = { kind = "open_door", source = "title" },
    [66] = { kind = "open_door", source = "title" },
    [67] = { kind = "open_door", source = "title" },
    [68] = { kind = "open_door", source = "title" },
    [69] = { kind = "open_door", source = "title" },
    [70] = { kind = "open_door", source = "title" },
    [71] = { kind = "open_door", source = "title" },
    [72] = { kind = "open_door", source = "title" },
    [73] = { kind = "open_door", source = "title" },
    [74] = { kind = "open_door", source = "title" },
    [75] = { kind = "open_door", source = "title" },
    [76] = { kind = "open_door", source = "title" },
    [77] = { kind = "open_door", source = "title" },
    [81] = { kind = "open_chest", source = "opcode", chestIds = {0} },
    [82] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [83] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [84] = { kind = "open_chest", source = "opcode", chestIds = {3} },
    [85] = { kind = "open_chest", source = "opcode", chestIds = {4} },
    [86] = { kind = "open_chest", source = "opcode", chestIds = {5} },
    [87] = { kind = "open_chest", source = "opcode", chestIds = {6} },
    [88] = { kind = "open_chest", source = "opcode", chestIds = {7} },
    [89] = { kind = "open_chest", source = "opcode", chestIds = {8} },
    [90] = { kind = "open_chest", source = "opcode", chestIds = {9} },
    [91] = { kind = "open_chest", source = "opcode", chestIds = {10} },
    [92] = { kind = "open_chest", source = "opcode", chestIds = {11} },
    [93] = { kind = "open_chest", source = "opcode", chestIds = {12} },
    [94] = { kind = "open_chest", source = "opcode", chestIds = {13} },
    [95] = { kind = "open_chest", source = "opcode", chestIds = {14} },
    [96] = { kind = "open_chest", source = "opcode", chestIds = {15} },
    [97] = { kind = "open_chest", source = "opcode", chestIds = {16} },
    [98] = { kind = "open_chest", source = "opcode", chestIds = {17} },
    [99] = { kind = "open_chest", source = "opcode", chestIds = {18} },
    [100] = { kind = "open_chest", source = "opcode", chestIds = {19} },
    [201] = { kind = "enter_house", source = "opcode", houseId = 775, targetName = "埃斯卡顿的王座室" },
    [451] = { kind = "generic_event", source = "opcode" },
    [501] = { kind = "leave_dungeon", source = "opcode", targetMap = "pbp.odm", targetName = "位面之间" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterNoOpEvent(1, "监狱", "监狱")

RegisterNoOpEvent(2, "监狱", "监狱")

RegisterNoOpEvent(3, "监狱", "监狱")

RegisterNoOpEvent(4, "监狱", "监狱")

RegisterNoOpEvent(5, "监狱", "监狱")

RegisterNoOpEvent(6, "监狱", "监狱")

RegisterNoOpEvent(7, "监狱", "监狱")

RegisterNoOpEvent(8, "监狱", "监狱")

RegisterNoOpEvent(9, "监狱", "监狱")

RegisterNoOpEvent(10, "监狱", "监狱")

RegisterEvent(11, "门", function()
    evt.SetDoorState(1, DoorAction.Open)
end, "门")

RegisterEvent(12, "门", function()
    evt.SetDoorState(2, DoorAction.Open)
end, "门")

RegisterEvent(13, "门", function()
    evt.SetDoorState(3, DoorAction.Open)
end, "门")

RegisterEvent(14, "门", function()
    evt.SetDoorState(4, DoorAction.Open)
end, "门")

RegisterEvent(15, "门", function()
    evt.SetDoorState(5, DoorAction.Open)
end, "门")

RegisterEvent(16, "门", function()
    evt.SetDoorState(6, DoorAction.Open)
end, "门")

RegisterEvent(17, "门", function()
    evt.SetDoorState(7, DoorAction.Open)
end, "门")

RegisterEvent(18, "门", function()
    evt.SetDoorState(8, DoorAction.Open)
end, "门")

RegisterEvent(19, "门", function()
    evt.SetDoorState(9, DoorAction.Open)
end, "门")

RegisterEvent(20, "门", function()
    evt.SetDoorState(10, DoorAction.Open)
end, "门")

RegisterEvent(21, "门", function()
    evt.SetDoorState(11, DoorAction.Open)
end, "门")

RegisterEvent(22, "门", function()
    evt.SetDoorState(12, DoorAction.Open)
end, "门")

RegisterEvent(23, "门", function()
    evt.SetDoorState(13, DoorAction.Open)
end, "门")

RegisterEvent(24, "门", function()
    evt.SetDoorState(14, DoorAction.Open)
end, "门")

RegisterEvent(25, "门", function()
    evt.SetDoorState(15, DoorAction.Open)
end, "门")

RegisterEvent(26, "门", function()
    evt.SetDoorState(16, DoorAction.Open)
end, "门")

RegisterEvent(27, "门", function()
    evt.SetDoorState(17, DoorAction.Open)
end, "门")

RegisterEvent(28, "门", function()
    evt.SetDoorState(18, DoorAction.Open)
end, "门")

RegisterEvent(29, "门", function()
    evt.SetDoorState(19, DoorAction.Open)
end, "门")

RegisterEvent(30, "门", function()
    evt.SetDoorState(20, DoorAction.Open)
end, "门")

RegisterEvent(31, "门", function()
    evt.SetDoorState(21, DoorAction.Open)
end, "门")

RegisterEvent(32, "门", function()
    evt.SetDoorState(22, DoorAction.Open)
end, "门")

RegisterEvent(33, "门", function()
    evt.SetDoorState(23, DoorAction.Open)
end, "门")

RegisterEvent(34, "门", function()
    evt.SetDoorState(24, DoorAction.Open)
end, "门")

RegisterEvent(35, "门", function()
    evt.SetDoorState(25, DoorAction.Open)
end, "门")

RegisterEvent(36, "门", function()
    evt.SetDoorState(26, DoorAction.Open)
end, "门")

RegisterEvent(37, "门", function()
    evt.SetDoorState(27, DoorAction.Open)
end, "门")

RegisterEvent(38, "门", function()
    evt.SetDoorState(28, DoorAction.Open)
end, "门")

RegisterEvent(50, "拉杆", function()
    evt.SetDoorState(29, DoorAction.Open)
    evt.SetDoorState(30, DoorAction.Open)
end, "拉杆")

RegisterEvent(51, "拉杆", function()
    evt.SetDoorState(31, DoorAction.Open)
    evt.SetDoorState(32, DoorAction.Open)
end, "拉杆")

RegisterEvent(52, "拉杆", function()
    evt.SetDoorState(33, DoorAction.Open)
    evt.SetDoorState(34, DoorAction.Open)
end, "拉杆")

RegisterEvent(53, "拉杆", function()
    evt.SetDoorState(35, DoorAction.Open)
    evt.SetDoorState(36, DoorAction.Open)
end, "拉杆")

RegisterEvent(54, "拉杆", function()
    evt.SetDoorState(37, DoorAction.Open)
    evt.SetDoorState(38, DoorAction.Open)
end, "拉杆")

RegisterEvent(55, "按钮", function()
    evt.SetDoorState(39, DoorAction.Open)
    evt.SetDoorState(40, DoorAction.Open)
end, "按钮")

RegisterEvent(56, "拉杆", function()
    evt.SetDoorState(41, DoorAction.Open)
    evt.SetDoorState(42, DoorAction.Open)
end, "拉杆")

RegisterEvent(57, "拉杆", function()
    evt.SetDoorState(43, DoorAction.Open)
    evt.SetDoorState(44, DoorAction.Open)
end, "拉杆")

RegisterEvent(58, "按钮", function()
    evt.SetDoorState(45, DoorAction.Open)
    evt.SetDoorState(46, DoorAction.Open)
end, "按钮")

RegisterEvent(59, "拉杆", function()
    evt.SetDoorState(47, DoorAction.Open)
    evt.SetDoorState(48, DoorAction.Open)
end, "拉杆")

RegisterEvent(60, "按钮", function()
    evt.SetDoorState(49, DoorAction.Open)
    evt.SetDoorState(50, DoorAction.Open)
end, "按钮")

RegisterEvent(61, "拉杆", function()
    evt.SetDoorState(51, DoorAction.Open)
    evt.SetDoorState(52, DoorAction.Open)
end, "拉杆")

RegisterEvent(62, "拉杆", function()
    evt.SetDoorState(53, DoorAction.Open)
    evt.SetDoorState(54, DoorAction.Open)
end, "拉杆")

RegisterEvent(63, "按钮", function()
    evt.SetDoorState(55, DoorAction.Open)
    evt.SetDoorState(56, DoorAction.Open)
end, "按钮")

RegisterEvent(64, "门", function()
    evt.SetDoorState(57, DoorAction.Open)
    evt.SetDoorState(58, DoorAction.Open)
end, "门")

RegisterEvent(65, "门", function()
    evt.SetDoorState(59, DoorAction.Open)
    evt.SetDoorState(60, DoorAction.Open)
end, "门")

RegisterEvent(66, "门", function()
    evt.SetDoorState(61, DoorAction.Open)
    evt.SetDoorState(62, DoorAction.Open)
end, "门")

RegisterEvent(67, "门", function()
    evt.SetDoorState(63, DoorAction.Open)
    evt.SetDoorState(64, DoorAction.Open)
end, "门")

RegisterEvent(68, "门", function()
    evt.SetDoorState(65, DoorAction.Open)
    evt.SetDoorState(66, DoorAction.Open)
end, "门")

RegisterEvent(69, "门", function()
    evt.SetDoorState(67, DoorAction.Open)
    evt.SetDoorState(68, DoorAction.Open)
end, "门")

RegisterEvent(70, "门", function()
    evt.SetDoorState(69, DoorAction.Open)
    evt.SetDoorState(70, DoorAction.Open)
end, "门")

RegisterEvent(71, "门", function()
    evt.SetDoorState(71, DoorAction.Open)
    evt.SetDoorState(72, DoorAction.Open)
end, "门")

RegisterEvent(72, "门", function()
    evt.SetDoorState(73, DoorAction.Open)
    evt.SetDoorState(74, DoorAction.Open)
end, "门")

RegisterEvent(73, "门", function()
    evt.SetDoorState(75, DoorAction.Open)
    evt.SetDoorState(76, DoorAction.Open)
end, "门")

RegisterEvent(74, "门", function()
    evt.SetDoorState(77, DoorAction.Open)
    evt.SetDoorState(78, DoorAction.Open)
end, "门")

RegisterEvent(75, "门", function()
    evt.SetDoorState(79, DoorAction.Open)
    evt.SetDoorState(80, DoorAction.Open)
end, "门")

RegisterEvent(76, "门", function()
    evt.SetDoorState(81, DoorAction.Open)
    evt.SetDoorState(82, DoorAction.Open)
end, "门")

RegisterEvent(77, "门", function()
    evt.SetDoorState(83, DoorAction.Open)
    evt.SetDoorState(84, DoorAction.Open)
end, "门")

RegisterEvent(81, "箱子", function()
    evt.OpenChest(0)
end, "箱子")

RegisterEvent(82, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(83, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(84, "箱子", function()
    evt.OpenChest(3)
end, "箱子")

RegisterEvent(85, "箱子", function()
    evt.OpenChest(4)
end, "箱子")

RegisterEvent(86, "箱子", function()
    evt.OpenChest(5)
end, "箱子")

RegisterEvent(87, "箱子", function()
    evt.OpenChest(6)
end, "箱子")

RegisterEvent(88, "箱子", function()
    evt.OpenChest(7)
end, "箱子")

RegisterEvent(89, "箱子", function()
    evt.OpenChest(8)
end, "箱子")

RegisterEvent(90, "箱子", function()
    evt.OpenChest(9)
end, "箱子")

RegisterEvent(91, "箱子", function()
    evt.OpenChest(10)
end, "箱子")

RegisterEvent(92, "箱子", function()
    evt.OpenChest(11)
end, "箱子")

RegisterEvent(93, "箱子", function()
    evt.OpenChest(12)
end, "箱子")

RegisterEvent(94, "箱子", function()
    evt.OpenChest(13)
end, "箱子")

RegisterEvent(95, "箱子", function()
    evt.OpenChest(14)
end, "箱子")

RegisterEvent(96, "箱子", function()
    evt.OpenChest(15)
end, "箱子")

RegisterEvent(97, "箱子", function()
    evt.OpenChest(16)
end, "箱子")

RegisterEvent(98, "箱子", function()
    evt.OpenChest(17)
end, "箱子")

RegisterEvent(99, "箱子", function()
    evt.OpenChest(18)
end, "箱子")

RegisterEvent(100, "箱子", function()
    evt.OpenChest(19)
end, "箱子")

RegisterEvent(201, "埃斯卡顿王座厅", function()
    evt.EnterHouse(775) -- Escaton's 王座大厅
end, "埃斯卡顿王座厅")

RegisterEvent(451, "喝一口", function()
    evt.StatusText("精神焕发")
end, "喝一口")

RegisterEvent(501, "离开埃斯卡顿的宫殿", function()
    evt.MoveToMap(1482, -1643, 209, 512, 0, 0, 0, 1, "pbp.odm") -- Plane Between Planes
end, "离开埃斯卡顿的宫殿")

