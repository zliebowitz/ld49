/// @description Inse9999 description here
// You can write your code in this editor

if(state = "done")
{
	return;	
}


if (object_game_controls.action_1_pressed 
	&& distance_to_object(object_player) < 5
	&& !action_1pressed)
{
	object_shop_manager.bill += price;
	if (object_shop_manager.bill > 999)
	{
		object_shop_manager.bill = -1;
		state = "done";
		global.shop_beaten = true;
		
	}
	action_1pressed = true;
	alarm[0] = 10;
}
else if(!object_game_controls.action_1_pressed 
	&& action_1pressed)
{
	alarm[0] = -1;
	action_1pressed = false;
}