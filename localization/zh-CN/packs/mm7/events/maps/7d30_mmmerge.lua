-- MMMerge supplement: Castle Lambent throne-room faction gate.

ReplaceMapEvent(416, "进入王座大厅", function()
    MM7.EnterCastleLambentThroneRoom()
end, "进入王座大厅")

RegisterMapOnLoadEvent(65072, "MMMerge CrossContinents Antagarich completion", function()
    MM7.MarkCrossContinentAntagarichIfComplete()
end)
