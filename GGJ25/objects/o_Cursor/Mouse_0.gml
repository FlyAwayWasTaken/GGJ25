//spawn particles
with instance_create_layer(x + irandom_range(-2,2),y + irandom_range(-2,2),"Particles",o_Particle)
{
	image_angle = other.image_angle	+ irandom_range(-20,20)
	direction = image_angle
}

//apply momentum to player
if distance_to_object(o_Player) < 40
{
	var PlayerDistance = 40 - distance_to_object(o_Player)
	var PlayerDirection = point_direction(x,y,o_Player.x,o_Player.y)
	o_Player.XMomentum += lengthdir_x(PlayerDistance,PlayerDirection) / 500
	o_Player.YMomentum += lengthdir_y(PlayerDistance,PlayerDirection) / 500
}