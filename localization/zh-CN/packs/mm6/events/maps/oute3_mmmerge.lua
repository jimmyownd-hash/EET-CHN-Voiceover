-- MMMerge map supplement: 新索匹格 local outdoor state.

RegisterMapOnLoadEvent(65029, "MMMerge oute3 town portal", function()
    SetQBit(QBit(313)) -- 新索匹格 town portal destination discovered.
    MM6.ApplyLocalMonsterRelations({
        {185, 0, 0},
    })
    MM6.ApplyDragonTowerState(1180, 84, 42)
end)

table.insert(evt.meta.map.textureNames, "t1swbu")

ReplaceMapEvent(15, "新索匹格马车公司", function()
    evt.EnterHouse(470)
end, "新索匹格马车公司")

ReplaceMapEvent(16, "新索匹格马车公司", function()
    evt.EnterHouse(470)
end, "新索匹格马车公司")

AppendMapEvent(140, function()
    if not evt.Cmp(MapVar(50), 1) then
        MM6.OpenDimensionDoor()
    end
end)

ReplaceMapEvent(220, "Volcano", function()
    MM6.RunNewSorpigalVolcanoSequence()
end, "火山")

MM6.RegisterDragonTowerTimer(230, -6152, -9208, 2700, 1180)

ReplaceMapEvent(231, "龙之塔", function()
    MM6.TryDisableDragonTower(1180, 84, 42)
end)
