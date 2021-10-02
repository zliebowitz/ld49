/// @description Insert description here
// You can write your code in this editor

hspeed = 0;
vspeed = 0;

if (keyboard_check(vk_up))
{
	sprite_index =sprite_avatar_walking_forward;
	image_xscale = abs(image_xscale);
	image_yscale = -1 * abs(image_yscale);
	vspeed = -1;
}
else if (keyboard_check(vk_left))
{
	sprite_index = sprite_avatar_walking_right;
	image_xscale = -1 *abs(image_xscale);
	image_yscale = abs(image_yscale);
	hspeed = -1;
}
else if (keyboard_check(vk_right))
{
	sprite_index = sprite_avatar_walking_right;
	image_xscale = abs(image_xscale);
	image_yscale = abs(image_yscale);
	hspeed = 1;
}
else if (keyboard_check(vk_down))
{
	sprite_index = sprite_avatar_walking_forward;
	image_xscale = abs(image_xscale);
	image_yscale = abs(image_yscale);
	vspeed = 1;
}