-- MAW content of this map (devdocs/maw/MAPS_CONTENT.md): loaded after the world's events, for MAW games only.

-- The stat shrine prays in any month, while The Seer's Pilgrimage has not been paid out (MAPS_CONTENT.md §3.1).
ReplaceMapEvent(261, "个性圣坛", function()
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1233)) then -- NPC
            SetQBit(QBit(1233)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(BasePersonality, 10)
            evt.StatusText("个性+10（永久）。")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(BasePersonality, 3)
        evt.StatusText("个性+3（永久）。")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "个性圣坛")
