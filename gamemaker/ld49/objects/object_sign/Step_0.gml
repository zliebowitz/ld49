/// @description Insert description here
// You can write your code in this editor
// Creates a textbox if: action 1 is pressed while touching the npc, and no textbox currently exists.
if (object_game_controls.action_1_pressed && distance_to_object(object_player) < 5
	&& !instance_exists(object_textbox)
	&& !dialog_running)
{
	var textbox = instance_create_depth(0, 0, 20, object_textbox);
	ds_queue_enqueue(textbox.textQueue, text);
	
	dialog_running = true;
}
else if(!instance_exists(object_textbox) 
	&& dialog_running
	&& alarm[0] == -1)
{
	alarm[0] = 30;
	
}