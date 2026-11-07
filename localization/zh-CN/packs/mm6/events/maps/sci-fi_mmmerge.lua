-- MMMerge map supplement: Control Center blaster training terminal.

ReplaceMapEvent(61, "计算机终端", function()
    evt.SetTexture(-2912, "trekscon")
    SetQBit(QBit(1300)) -- Control Center blaster terminal was read.

    for playerIndex = 0, evt.GetPartyMemberCount() - 1 do
        evt.ForPlayer(playerIndex)

        if not IsAtLeast(BlasterSkill, 1) then
            SetValue(BlasterSkill, 1)
        end
    end

    evt.SimpleMessage(
        "\"冲击枪是一种高效、精准的远程武器。操作冲击枪时，请舒适地握住枪柄，" ..
        "将枪管对准目标，然后轻轻扣动扳机。如果武器发生故障，" ..
        "切勿直视枪管——将武器交给教官处理。" ..
        "切勿用冲击枪瞄准你不想化为灰烬的任何东西。\"")
end, "电脑终端")
