if AirOn = true
{
	if AudioBlend > 0
	{
		AudioBlend -= 0.02	
	}
}
else
{
	if AudioBlend < 1
	{
		AudioBlend += 0.02	
	}
}

if instance_exists(o_Player)
{
	with o_Player
	{
		if XMomentum > 0.4 or XMomentum < -0.4 or YMomentum > 0.4 or YMomentum < -0.4
		{
			other.AirOn = true
		}
		else
		{
			other.AirOn = false
		}
	}
}

if MainMenu = true
{
	audio_sound_gain(mus_Title,1,0)
	audio_sound_gain(mus_AirOn,0,0)
	audio_sound_gain(mus_AirOff,0,0)	
}
else
{
	audio_sound_gain(mus_Title,0,0)
	audio_sound_gain(mus_AirOn,1 - AudioBlend,0)
	audio_sound_gain(mus_AirOff,AudioBlend,0)
}