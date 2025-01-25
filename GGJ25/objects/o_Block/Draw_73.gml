if DoneWallChecks = false
{
	//check for other walls 
	//check up
	var WallID = instance_place(x,y - 16,o_Block)
	if WallID != noone
	{
		WallAbove = true
	}
	//check down
	WallID = instance_place(x,y + 16,o_Block)
	if WallID != noone
	{
		WallDown = true
	}
	//check left
	WallID = instance_place(x - 16,y,o_Block)
	if WallID != noone
	{
		WallLeft = true
	}
	//check right
	WallID = instance_place(x + 16,y,o_Block)
	if WallID != noone
	{
		WallRight = true
	}

	DoneWallChecks = true
}

//draw outline //0.7 is used to stop interpolation from moving the pixel, it will always round up so the pixel will always been in the right place
//check up
if WallAbove = false
{
	draw_line(x - 0.7, y - 0.7,x + 15.7,y - 0.7)
}
//check down
if WallDown = false
{
	draw_line(x - 0.7, y + 15.7,x + 16.2,y + 15.7)
}
//check left
if WallLeft = false
{
	draw_line(x - 0.7,y - 0.7,x - 0.7,y + 15.7)	
}
//check right
if WallRight = false
{
	draw_line(x + 15.7,y - 0.7,x + 15.7,y + 15.7)	
}