-- Effects shown after an event's hover name once the party has learned them (the event's own autonote):
-- "Orange Barrel (+2 Intellect)" after drinking from any orange barrel.

local learnedEffects = {
    {event = 269, autonote = 17, effect = "+2 力量"}, -- Red Barrel
    {event = 270, autonote = 21, effect = "+2 精准"}, -- Yellow Barrel
    {event = 271, autonote = 19, effect = "+2 个性"}, -- Blue Barrel
    {event = 272, autonote = 18, effect = "+2 智力"}, -- Orange Barrel
    {event = 273, autonote = 20, effect = "+2 耐力"}, -- Green Barrel
    {event = 274, autonote = 22, effect = "+2 速度"}, -- Purple Barrel
    {event = 275, autonote = 23, effect = "+2 幸运"}, -- White Barrel
    {event = 277, autonote = 24, effect = "+2 火系抗性"}, -- Steaming Cauldron
    {event = 278, autonote = 25, effect = "+2 水系抗性"}, -- Frosty Cauldron
    {event = 279, autonote = 26, effect = "+2 气系抗性"}, -- Shocking Cauldron
    {event = 280, autonote = 27, effect = "+2 土系抗性"}, -- Dirty Cauldron
}

for _, learned in ipairs(learnedEffects) do
    RegisterGlobalEventLearnedEffect(learned.event, learned.autonote, learned.effect)
end
