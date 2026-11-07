-- MMMerge supplement: Castle Gloaming throne-room faction gate.

ReplaceMapEvent(5, "进入王座大厅", function()
    MM7.EnterCastleGloamingThroneRoom()
end, "进入王座大厅")

RegisterMapOnLoadEvent(65073, "MMMerge CrossContinents Antagarich completion", function()
    MM7.MarkCrossContinentAntagarichIfComplete()
end)
