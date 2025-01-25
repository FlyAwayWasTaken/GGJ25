//stage is complete! do cool animation and go to next stage
if !audio_is_playing(mus_ReachGoal)
{
	if o_Cam.FadeOut = 0
	{
		audio_play_sound(mus_ReachGoal,1,false)
		o_Cam.StageClear = true
		o_Cam.FadeOut = 0.02
		show_debug_message(o_Goal.TargetRoomGoal)
		o_Cam.TargetRoom = o_Goal.TargetRoomGoal
	}
}