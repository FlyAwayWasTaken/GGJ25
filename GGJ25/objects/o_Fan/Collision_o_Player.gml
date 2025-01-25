if Off = false
{
	if image_angle = 0 
	{
		o_Player.XMomentum += Strength
	}
	if image_angle = 90 
	{
		o_Player.YMomentum -= Strength
	}
	if image_angle = 180
	{
		o_Player.XMomentum -= Strength
	}
	if image_angle = 270
	{
		o_Player.YMomentum += Strength
	}
}