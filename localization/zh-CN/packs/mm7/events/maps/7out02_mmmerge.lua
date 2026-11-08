-- MMMerge supplement: Harmondale outdoor castle, judge, invasion, and scavenger repairs.

AppendMapEvent(37, function()
    MM7.RemoveJudgeFollowers()
end)

ReplaceMapEvent(301, "进入和谐谷城堡", function()
    MM7.EnterCastleHarmondaleOutdoor()
end, "进入和谐谷城堡")

RegisterMapOnLoadEvent(65002, "MMMerge Harmondale judge and invasion state", function()
    MM7.UpdateCrossContinentsState()
    MM7.UpdateHarmondaleInvasion()
    MM7.UpdateJudgeGreyDeath()
end)

RegisterMapTimerEvent(65003, 180, function()
    MM7.GiveScavengerAdvertisementIfNear(-13115, 12497, true)
end, "MMMerge Harmondale scavenger advertisement")
