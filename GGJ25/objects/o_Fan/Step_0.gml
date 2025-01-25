//create particles
if Off = false
{
	if irandom_range(0,1) = true
	{
		if image_angle = 0 or image_angle = 180
		{
			with instance_create_layer(x + random_range(-5,5),y + random_range(-10,10),"Particles",o_Particle)
			{
				speed = 5
				image_angle = other.image_angle
				direction = image_angle
				WallSens = true
			}	
		}
		if image_angle = 90 or image_angle = 270
		{
			with instance_create_layer(x + random_range(-10,10),y + random_range(-5,5),"Particles",o_Particle)
			{
				speed = 5	
				image_angle = other.image_angle
				direction = image_angle
				WallSens = true
			}	
		}
	}
}

if LinkedButtonID != noone
{
	if LinkedButtonID.image_index = 1
	{
		//turn off this fan
		Off = true
		if image_speed > 0
		{
			image_speed -= 0.005
		}
	}
}

