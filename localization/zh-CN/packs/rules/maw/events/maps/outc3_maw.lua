-- MAW content of this map (devdocs/maw/MAPS_CONTENT.md): loaded after the world's events, for MAW games only.

-- The stat shrine prays in any month, while The Seer's Pilgrimage has not been paid out (MAPS_CONTENT.md §3.1).
ReplaceMapEvent(261, "速度圣坛", function()
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1236)) then -- NPC
            SetQBit(QBit(1236)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(BaseSpeed, 10)
            evt.StatusText("速度+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(BaseSpeed, 3)
        evt.StatusText("速度+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "速度圣坛")
