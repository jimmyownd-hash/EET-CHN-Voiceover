-- MAW content of this map (devdocs/maw/MAPS_CONTENT.md): loaded after the world's events, for MAW games only.

-- The stat shrine prays in any month, while The Seer's Pilgrimage has not been paid out (MAPS_CONTENT.md §3.1).
ReplaceMapEvent(261, "准确圣坛", function()
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1235)) then -- NPC
            SetQBit(QBit(1235)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(BaseAccuracy, 10)
            evt.StatusText("准确+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(BaseAccuracy, 3)
        evt.StatusText("准确+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "准确圣坛")
