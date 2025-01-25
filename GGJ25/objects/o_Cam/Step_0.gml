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


audio_sound_gain(mus_AirOn,1 - AudioBlend,0)
audio_sound_gain(mus_AirOff,AudioBlend,0)