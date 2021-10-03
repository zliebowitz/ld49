/// @description Insert description here
// You can write your code in this editor
if (instance_exists(object_power_bar))
{
	sprite_index = sprite_beethany_drink;
}
else
{
	sprite_index = sprite_beethany;
}

if (!global.pub_beaten || frame < 2)
{
	draw_self();
}