cam = view_camera[0]
FadeIn = 1
FadeOut = 0
StageClear = false
TargetRoom = r_TestRoom
AudioBlend = 1
AirOn = false
MainMenu = false

if room = r_MainMenu
{
	MainMenu = true 	
}
else
{
	MainMenu = false	
}

if MainMenu = true
{
	if !audio_is_playing(mus_Title)
	{
		audio_play_sound(mus_Title,1,true,1)
	}

	if !audio_is_playing(mus_AirOn)
	{
		audio_play_sound(mus_AirOn,1,true,1)
		audio_play_sound(mus_AirOff,1,true,1)
	}
}
else
{
	if !audio_is_playing(mus_AirOn)
	{
		audio_play_sound(mus_AirOn,1,true,1)
		audio_play_sound(mus_AirOff,1,true,1)
	}	
}