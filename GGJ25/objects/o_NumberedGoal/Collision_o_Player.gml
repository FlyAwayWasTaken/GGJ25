if DestroySelf = false
{
	//play sound!
	audio_play_sound(mus_ReachGoal,1,false)
	DestroySelf = true	
	instance_activate_object(GoalToUnlockID)
	GoalToUnlockID.image_xscale = 0.1
	GoalToUnlockID.image_yscale = 0.1
}