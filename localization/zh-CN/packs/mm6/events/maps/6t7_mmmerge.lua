-- MMMerge map supplement: Superior Temple of Baa door perception check.

local function requireCurrentPlayerPerceptionDoor(eventId, level)
    ReplaceMapEvent(eventId, "门", function()
        evt.ForPlayer(Players.Current)

        if evt.CheckSkill(const.Skills.Perception, const.SkillCheck.Novice, level) then
            evt.SetDoorState(eventId, DoorAction.Close)
            return
        end

        evt.DamagePlayer(Players.Current, const.Damage.Fire, 50)
    end, "门")
end

requireCurrentPlayerPerceptionDoor(1, 8)

for eventId = 2, 18 do
    requireCurrentPlayerPerceptionDoor(eventId, 4)
end

requireCurrentPlayerPerceptionDoor(20, 4)
requireCurrentPlayerPerceptionDoor(21, 4)
