if DestroySelf = true
{
	if image_xscale > 0
	{
		image_xscale -= 0.05
		image_yscale -= 0.05		
	}
	else
	{
		instance_destroy()	
	}
}
else
{
	if image_xscale < 1
	{
		image_xscale += 0.05
		image_yscale += 0.05
	}
}

draw_self()