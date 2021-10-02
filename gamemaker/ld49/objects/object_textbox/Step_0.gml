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
		instance_destroy();
	
	currentMessage = ds_queue_dequeue(global.textQueue);
	advanceText = false;
}



