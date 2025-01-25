if MoveTowardsPoint1 = false
{
	move_towards_point(Pos2X,Pos2Y,MoveSpeed)	
	if (x > Pos2X - 2 and x < Pos2X + 2) and (y > Pos2Y - 2 and y < Pos2Y + 2)
	{
		MoveTowardsPoint1 = true	
	}
}
else
{
	move_towards_point(Pos1X,Pos1Y,MoveSpeed)	
	if (x > Pos1X - 2 and x < Pos1X + 2) and (y > Pos1Y - 2 and y < Pos1Y + 2)
	{
		MoveTowardsPoint1 = false	
	}	
}


image_angle += 1.5
draw_self()