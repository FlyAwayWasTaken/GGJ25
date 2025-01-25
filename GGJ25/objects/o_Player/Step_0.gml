if WallBounceTimer > 0
{
	WallBounceTimer -= 1 
}

//check terminal velocity
if XMomentum > 4
{
	XMomentum = 4	
}
if YMomentum > 4
{
	YMomentum = 4	
}

//apply momentum and drag
x += XMomentum
y += YMomentum

//check if we are touching a wall 

var WallCollideID = ds_list_create()
instance_place_list(x,y,o_Block,WallCollideID,false) 
var WallIDListSize = ds_list_size(WallCollideID)
for (var i = 0; i < WallIDListSize; i++)
{
	if i = 0
	{
		if WallBounceTimer = 0
		{
			audio_play_sound(mus_WallHit,1,false) 
			WallBounceTimer = 5
		}
	}
	if ds_list_find_value(WallCollideID,i) != noone
	{
		var CurrentID = ds_list_find_value(WallCollideID,i)
		//check where the wall is in relation to the player
		//get x and y distance from player
		var PlayerDistance = point_distance(CurrentID.x + 8,CurrentID.y + 8,x,y) //+8 to adjust for the sprite origin
		var PlayerAngle = point_direction(CurrentID.x + 8,CurrentID.y + 8,x,y)
		var XDistance = abs(lengthdir_x(PlayerDistance,PlayerAngle))
		var YDistance = abs(lengthdir_y(PlayerDistance,PlayerAngle))
		if XDistance >= YDistance 
		{
			//left or right side so invert x momentum
			XMomentum = XMomentum * -0.6
			x += XMomentum * 4
		}
		else
		{
			//above or below so invert y momentum
			YMomentum = YMomentum * -0.6
			y += YMomentum * 4
		}
	}	
}
ds_list_destroy(WallCollideID)

//apply drag
XMomentum = XMomentum * 0.99
YMomentum = YMomentum * 0.99




