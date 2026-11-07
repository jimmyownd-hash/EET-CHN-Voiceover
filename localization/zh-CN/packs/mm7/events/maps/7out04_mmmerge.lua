-- MMMerge supplement: Tularean Forest Dimension Door and artifact battle repairs.

RegisterEvent(504, "次元之门", function()
    MM7.OpenDimensionDoor()
end, "次元之门")

RemoveMapEvent(401)
RegisterMapOnLoadEvent(401, "MMMerge Tularean artifact messenger", function()
    MM7.UpdateTulareanArtifactBattle()
end)

ReplaceMapEvent(503, "进入克朗克的实验室", function()
    MM7.EnterClankersLaboratory()
end, "进入克朗克的实验室")
