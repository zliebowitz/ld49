if (object_game_controls.action_1_pressed && !action1_pressed)
{
	action1_pressed = true
	advanceText = true;
}
else if(!object_game_controls.action_1_pressed)
{
	action1_pressed = false;
}


if (advanceText)
{
	if (ds_queue_empty(global.textQueue))
	{
		instance_destroy();
		return;
	}
	
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



