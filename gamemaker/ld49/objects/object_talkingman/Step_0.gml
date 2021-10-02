// Creates a textbox if: action 1 is pressed while touching the npc, and no textbox currently exists.
if ((object_game_controls.action_1_pressed && !action1_pressed) && place_meeting(x, y, object_player)
	&& !instance_exists(object_textbox))
{
	ds_queue_enqueue(global.textQueue, "Well howdy there, partner!")
	ds_queue_enqueue(global.textQueue, "Y'all reck'n this foundangled textbox be \nworking?")
	ds_queue_enqueue(global.textQueue, "|||||||||||||||||||| ||||||||||||||||||||")
	ds_queue_enqueue(global.textQueue, "00000000000000000000 00000000000000000000")
	ds_queue_enqueue(global.textQueue, "Yaaaaas. It doesssss.")
	instance_create_depth(0, 0, 20, object_textbox)
}
else if(!object_game_controls.action_1_pressed)
{
	action1_pressed = false;
}