-- MMMerge map supplement: Kriegspire local outdoor state.

SetMapContextAction(90, {
    kind = "enter_house",
    source = "override",
    targetMap = "6t7.blv",
    targetName = "羊鸣高等神殿",
})

ReplaceMapEvent(8, "国王大道", function()
    evt.EnterHouse(477)
end, "国王大道")

ReplaceMapEvent(9, "国王大道", function()
    evt.EnterHouse(477)
end, "国王大道")
