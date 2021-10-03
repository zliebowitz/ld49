/// @description Insert description here
// You can write your code in this editor



if (keyboard_check_pressed(object_game_controls.action_1_key))
	advanceText = true;

if (advanceText)
{
	if (ds_queue_empty(global.textQueue))
		instance_destroy();
	
	var val = ds_queue_dequeue(global.textQueue);
	while (!is_string(val))
	{
		// allow performan an action at end of dialogue.
		with(val){event_user(12)}
		if (ds_queue_empty(global.textQueue))
		{
			instance_destroy();
			return;
		}
		val = ds_queue_dequeue(global.textQueue);
	}
	currentMessage = val;
	advanceText = false;
}



