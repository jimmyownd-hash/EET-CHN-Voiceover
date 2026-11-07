-- MMMerge map supplement: Free Haven local outdoor state.

RegisterMapOnLoadEvent(65026, "MMMerge outc2 town portal", function()
    SetQBit(QBit(311)) -- Free Haven town portal destination discovered.
    MM6.ApplyDragonTowerState(1183, 25, 55)
end)

table.insert(evt.meta.map.textureNames, "t1swbu")

ReplaceMapEvent(14, "自由港东旅行社", function()
    evt.EnterHouse(472)
end, "自由港东旅行社")

ReplaceMapEvent(15, "自由港东旅行社", function()
    evt.EnterHouse(472)
end, "自由港东旅行社")

ReplaceMapEvent(16, "自由港西旅行社", function()
    evt.EnterHouse(473)
end, "自由港西旅行社")

ReplaceMapEvent(17, "自由港西旅行社", function()
    evt.EnterHouse(473)
end, "自由港西旅行社")

ReplaceMapEvent(19, "自由天堂神庙", function()
    MM6.RepairStoneTemple()
end, "自由港神庙")

ReplaceMapEvent(49, "高级议会", function()
    MM6.RevealSilvertongue()
end, "高级议会")

ReplaceMapEvent(50, "高级议会", function()
    MM6.RevealSilvertongue()
end, "高级议会")

ReplaceMapEvent(140, "冒险者旅馆", function()
    evt.EnterHouse(1607)
end, "冒险者旅馆")

MM6.RegisterDragonTowerTimer(209, 3823, 10974, 2700, 1183)

ReplaceMapEvent(210, "龙之塔", function()
    MM6.TryDisableDragonTower(1183, 25, 55)
end)
