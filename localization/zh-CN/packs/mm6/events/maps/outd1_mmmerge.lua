-- MMMerge map supplement: Mire of the Damned local outdoor state.

RegisterMapOnLoadEvent(65027, "MMMerge outd1 town portal", function()
    SetQBit(QBit(314)) -- Silver Cove town portal destination discovered.
    MM6.ApplyLocalMonsterRelations({
        {211, 0, 0},
        {211, 173, 2},
        {211, 181, 2},
        {173, 211, 1},
        {181, 211, 1},
    })
    MM6.ApplyDragonTowerState(1182, 117, 42)
end)

table.insert(evt.meta.map.textureNames, "t1swbu")

ReplaceMapEvent(10, "阿卜杜勒折扣旅行社", function()
    evt.EnterHouse(475)
end, "阿卜杜勒折扣旅行社")

ReplaceMapEvent(11, "阿卜杜勒折扣旅行社", function()
    evt.EnterHouse(475)
end, "阿卜杜勒折扣旅行社")

MM6.RegisterDragonTowerTimer(209, 11032, -8940, 2830, 1182)

ReplaceMapEvent(210, "龙之塔", function()
    MM6.TryDisableDragonTower(1182, 117, 42)
end)
