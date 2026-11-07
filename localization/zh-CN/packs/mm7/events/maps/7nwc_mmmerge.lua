-- MMMerge supplement: Strange Temple returns to the location where Temple in a Bottle was used.

ReplaceMapEvent(501, "离开奇异神庙", function()
    if evt.MoveToSavedLocation("TempleInABottleReturn", true) then
        return
    end

    evt.MoveToMap(-177331, 12547, 465, 0, 0, 0, 0, 8, "out02.odm")
end, "离开奇异神庙")
SetMapContextAction(501, {kind = "leave_dungeon", source = "authored", targetName = "离开奇异神庙"})
