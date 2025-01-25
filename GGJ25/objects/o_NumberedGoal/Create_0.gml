if GoalToUnlockID != noone
{
	instance_deactivate_object(GoalToUnlockID)
}

DestroySelf = false
if StartTurnedOff = true
{
	instance_deactivate_object(id)	
}

sprite_index = GoalSprite