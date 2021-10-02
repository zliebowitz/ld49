/// @description Insert description here
// You can write your code in this editor



if (keyboard_check_pressed(object_game_controls.action_1_key))
	advanceText = true;

if (advanceText)
{
	if (ds_queue_empty(global.textQueue))
		instance_destroy();
	
	currentMessage = ds_queue_dequeue(global.textQueue);
	advanceText = false;
}



