//fade in 
if FadeIn > 0
{
	FadeIn -= 0.02
	draw_set_color(c_black)
	draw_set_alpha(FadeIn)
	draw_rectangle(0,0,360,202,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
}

if FadeOut > 0.01 and FadeOut < 1.02
{
	FadeOut += 0.02	
	draw_set_color(c_black)
	draw_set_alpha(FadeOut)
	draw_rectangle(0,0,360,202,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
}

if FadeOut > 1
{
	if StageClear = false
	{
		room_restart()
	}
	else
	{
		room_goto(TargetRoom)
	}
}