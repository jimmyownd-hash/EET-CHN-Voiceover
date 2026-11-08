-- 新索匹格 MMerge behavior fixups.

RegisterEvent(65520, "新索匹格 guard hostility fixup", function()
    evt.SetMonGroupBit(55, MonsterBits.Hostile, 0)
end)

AppendMapOnLoadEvent(65520)
RemoveMapEvent(100)

RegisterMapOnLoadEvent(65521, "新索匹格 starting letter fixup", function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1106))
        or IsQBitSet(QBit(1205))
        or HasAward(Award(100)) then
        return
    end

    if not IsQBitSet(QBit(1104)) then
        SetQBit(QBit(1104)) -- Lisa
    end

    if not IsQBitSet(QBit(1105)) then
        SetQBit(QBit(1105)) -- Show Sulman's letter to Andover Potbello in 新索匹格.
    end

    if HasItem(2125) or HasEverOwnedItem(2125) then -- The Letter
        return
    end

    GivePlayerItem(Players.Member0, 2125) -- The Letter
end)
