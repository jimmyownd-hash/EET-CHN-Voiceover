-- MAW content of this map (devdocs/maw/MAPS_CONTENT.md): loaded after the world's events, for MAW games only.

-- The stat shrine prays in any month, while The Seer's Pilgrimage has not been paid out (MAPS_CONTENT.md §3.1).
ReplaceMapEvent(261, "雷电圣坛", function()
    if not IsQBitSet(QBit(1230)) then -- NPC
        SetQBit(QBit(1230)) -- NPC
        if not IsQBitSet(QBit(1239)) then -- NPC
            SetQBit(QBit(1239)) -- NPC
            evt.ForPlayer(Players.All)
            AddValue(AirResistance, 10)
            evt.StatusText("+10 电击抗性（永久）")
            return
        end
        evt.ForPlayer(Players.All)
        AddValue(AirResistance, 3)
        evt.StatusText("+3 电击抗性（永久）")
        return
    end
    evt.StatusText("你在神龛前祈祷。")
end, "雷电圣坛")
