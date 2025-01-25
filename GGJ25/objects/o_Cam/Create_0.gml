cam = view_camera[0]
FadeIn = 1
FadeOut = 0
StageClear = false
TargetRoom = r_TestRoom
AudioBlend = 1
AirOn = false

if !audio_is_playing(mus_AirOn)
{
	audio_play_sound(mus_AirOn,1,true,1)
	audio_play_sound(mus_AirOff,1,true,1)
}