// Creates a textbox if: action 1 is pressed while touching the npc, and no textbox currently exists.
if ((object_game_controls.action_1_pressed && !action1_pressed) && distance_to_object(object_player) < 5
	&& !instance_exists(object_textbox)
	&& !dialog_running)
{
	ds_queue_enqueue(global.textQueue, "Well howdy there, partner!")
	ds_queue_enqueue(global.textQueue, "Y'all reck'n this foundangled textbox be \nworking?")
	ds_queue_enqueue(global.textQueue, "|||||||||||||||||||| ||||||||||||||||||||")
	ds_queue_enqueue(global.textQueue, "00000000000000000000 00000000000000000000")
	ds_queue_enqueue(global.textQueue, "Yaaaaas. It doesssss.")
	instance_create_depth(0, 0, 20, object_textbox)
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

if (object_game_controls.action_2_pressed)
	fishing_glitched = true;

if (fishing_glitched && x < 600)
{
	x += 1.37;
	y -= .13;
	sprite_index = sprite_wallace_sad;
	instance_create_depth(x, y, -50, object_wallace_sad);
}