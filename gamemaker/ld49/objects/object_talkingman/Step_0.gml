// Creates a textbox if: action 1 is pressed while touching the npc, and no textbox currently exists.
if ((object_game_controls.action_1_pressed && !action1_pressed) && distance_to_object(object_player) < 5
	&& !instance_exists(object_textbox)
	&& !dialog_running
	&& !instance_exists(object_fishing_bar))
{
	var textbox = instance_create_depth(0, 0, 20, object_textbox);
	ds_queue_enqueue(textbox.textQueue, "Well howdy there, partner!")
	ds_queue_enqueue(textbox.textQueue, "Y'all reck'n this foundangled textbox be \nworking?")
	ds_queue_enqueue(textbox.textQueue, "|||||||||||||||||||| ||||||||||||||||||||")
	ds_queue_enqueue(textbox.textQueue, "00000000000000000000 00000000000000000000")
	ds_queue_enqueue(textbox.textQueue, "Yaaaaas. It doesssss.")
	ds_queue_enqueue(textbox.textQueue, id);
	dialog_running = true;
}
else if(!object_game_controls.action_1_pressed)
{
	action1_pressed = false;
}

if(!instance_exists(object_textbox) 
	&& dialog_running
	&& alarm[0] == -1)
{
	alarm[0] = 30;
	
}

if (object_game_controls.action_2_pressed && !fishing_glitched)
{
	//event_user(0);
}

if (fishing_glitched && x < 600)
{
	x += 1.37;
	y -= .13;
	sprite_index = sprite_wallace_sad;
	instance_create_depth(x, y, -50, object_wallace_sad);
}