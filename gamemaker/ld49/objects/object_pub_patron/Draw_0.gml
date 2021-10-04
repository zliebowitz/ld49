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

if (global.pub_beaten)
{
	
	sprite_index = sprite_beethany_bug;
	if (random(1) < .25)
	{
		bug_index = floor(random(10));
		if (bug_index > 7)
			bug_index = 0;
	}
	image_index = bug_index
	
}


draw_self();