if DieTimer > 0
{
	DieTimer -= 0.02	
}
else
{
	instance_destroy()	
}
draw_self()