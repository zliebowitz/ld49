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
		event_perform_object(val, ev_user12, 0);
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



