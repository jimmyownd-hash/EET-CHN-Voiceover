-- MMMerge map supplement: Frozen Highlands local outdoor state.

RegisterMapOnLoadEvent(65025, "MMMerge outc1 town portal and guards", function()
    SetQBit(QBit(315)) -- White Cap town portal destination discovered.
    evt.SetMonGroupBit(39, MonsterBits.Hostile, false)
    MM6.ApplyFrozenHighlandsWinterState()
    MM6.ApplyDragonTowerState(1185, 114, 42)
end)

table.insert(evt.meta.map.textureNames, "t1swbu")

ReplaceMapEvent(31, "白帽运输公司", function()
    evt.EnterHouse(476)
end, "白帽运输公司")

ReplaceMapEvent(32, "白帽运输公司", function()
    evt.EnterHouse(476)
end, "白帽运输公司")

MM6.RegisterDragonTowerTimer(209, -6606, 15546, 2550, 1185)

ReplaceMapEvent(210, "龙之塔", function()
    MM6.TryDisableDragonTower(1185, 114, 42)
end)
