/// @description Inse9999 description here
// You can write your code in this editor
if(global.bill == -1)
{
	state = "done";	
}

if(state = "done")
{
	return;	
}


if (object_game_controls.action_1_pressed 
	&& distance_to_object(object_player) < 8
	&& !action_1pressed)
{
	global.bill += price;
	if (global.bill > 999)
	{
		global.bill = -1;
		state = "done";
		global.shop_beaten = true;
		
	}
	action_1pressed = true;
	audio_play_sound(sound_sfx_purchase,10,false);
}
else if(!object_game_controls.action_1_pressed 
	&& action_1pressed)
{
	alarm[0] = -1;
	action_1pressed = false;
}