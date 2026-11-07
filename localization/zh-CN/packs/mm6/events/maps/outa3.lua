-- Hermit's Isle
-- generated from legacy EVT/STR

SetMapMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    [75] = {1},
    [76] = {2},
    },
    contextActions = {
    [1] = { kind = "obelisk", source = "title" },
    [75] = { kind = "open_chest", source = "opcode", chestIds = {1} },
    [76] = { kind = "open_chest", source = "opcode", chestIds = {2} },
    [90] = { kind = "enter_house", source = "opcode", houseId = 433, targetName = "巴阿至高神庙" },
    [100] = { kind = "fountain", source = "title" },
    [210] = { kind = "obelisk", source = "title" },
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {},
    timers = {
    },
})

RegisterNoOpEvent(1, "Obelisk", "Obelisk")

RegisterEvent(75, "箱子", function()
    evt.OpenChest(1)
end, "箱子")

RegisterEvent(76, "箱子", function()
    evt.OpenChest(2)
end, "箱子")

RegisterEvent(90, nil, function()
    evt.MoveToMap(-2048, 3453, 2049, 1536, 0, 0, 433, 1, "6t6.blv") -- Supreme Temple of Baa
end)

RegisterEvent(100, "饮用喷泉", function()
    SetValue(Age, 0)
    evt.StatusText("焕发活力！")
    SetAutonote(439) -- Unnatural aging cured at fountain to the east of Hermit's Isle.
end, "饮用喷泉")

RegisterEvent(210, "方尖碑", function(continueStep)
    if continueStep == 2 then
        SetQBit(QBit(1386)) -- NPC
        SetAutonote(444) -- Obelisk Message # 3: _etecpe__ersoede
    end
    if continueStep ~= nil then return end
    evt.SetMessage("方尖碑的表面触感温热如血。当你移开手时，一行信息浮现眼前：                                                                                                                                                           _etecpe__ersoede")
    evt._PressAnyKey(210, 2)
end, "方尖碑")

