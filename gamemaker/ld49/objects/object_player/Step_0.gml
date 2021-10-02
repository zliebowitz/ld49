/// @description Insert description here
// You can write your code in this editor

hspeed = 0;
vspeed = 0;

if (object_game_controls.up_pressed)
{
	sprite_index =sprite_avatar_walking_up;
	image_xscale = abs(image_xscale);
	vspeed = -1;
}
else if (object_game_controls.left_pressed)
{
	sprite_index = sprite_avatar_walking_right;
	image_xscale = -1 *abs(image_xscale);
	hspeed = -1;
}
else if (object_game_controls.right_pressed)
{
	sprite_index = sprite_avatar_walking_right;
	image_xscale = abs(image_xscale);
	hspeed = 1;
}
else if (object_game_controls.down_pressed)
{
	sprite_index = sprite_avatar_walking_down;
	image_xscale = abs(image_xscale);
	vspeed = 1;
}

if (object_game_controls.up_pressed && object_game_controls.down_pressed)
{
	if random(1) > 0.5
		sprite_index = sprite_avatar_walking_up;
	else
		sprite_index = sprite_avatar_walking_down;
	vspeed = round(random(8))-4
}

// Intentionally buggy controls (up&down / left&right pushed at the same time)
if (object_game_controls.right_pressed && object_game_controls.left_pressed)
{
	if random(1) > 0.5
	{
		sprite_index = sprite_avatar_walking_right;
		image_xscale = abs(image_xscale);
	}
	else
	{
		sprite_index = sprite_avatar_walking_right;
		image_xscale = -1 *abs(image_xscale);
	}
	hspeed = round(random(8))-4
}