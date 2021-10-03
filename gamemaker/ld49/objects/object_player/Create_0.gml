/// @description Insert description here
// You can write your code in this editor
if (variable_global_exists("warp"))
{
	delete global.warp;
	x = global.target_x;
	y = global.target_y;
}


state = "idle";
init_image_speed = image_speed;

knockback_direction_x = 0;
knockback_direction_y = 0;