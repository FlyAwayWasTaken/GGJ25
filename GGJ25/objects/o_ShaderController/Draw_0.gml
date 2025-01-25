draw_sprite(s_SinkBackground,0,x,y)

surf = surface_create(360,202)
//set draw target to newly created surface
surface_set_target(surf)
//fill this surface with the color black
draw_sprite(s_SinkBackgroundDark,0,x,y)

with o_Player
{
	draw_self()
}


gpu_set_blendmode(bm_subtract)


with o_Player
{
	if image_index = 0
	{
		draw_sprite(s_TestCircleLight,0,x,y)	
	}
}
with o_Block
{
	draw_self()	
}

//draw surface then delete it
gpu_set_blendmode(bm_normal)
surface_reset_target()
draw_surface(surf,0,0)
surface_free(surf)

