-- MMMerge map supplement: Stone City throne room and Dwarf King cleanup.

ReplaceMapEvent(416, "进入王座大厅", function()
    if IsQBitSet(QBit(647)) then -- Completed the Red Dwarf Mines rescue path for the Dwarf King.
        evt.EnterHouse(216)
        return
    end

    evt.FaceAnimation(FaceAnimation.DoorLocked)
    evt.StatusText("门锁着")
end, "进入王座大厅")

RegisterNpcExitHook(65024, "MMMerge Dwarf King cleanup", function(context)
    if context.npcId == 398 then -- Dwarf King
        ClearQBit(QBit(658)) -- Repair Castle Harmondale through the Dwarves in Stone City.
    end
end)
