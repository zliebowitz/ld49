/// @description Insert description here
// You can write your code in this editor

// Creates a textbox if: action 1 is pressed while touching the npc, and no textbox currently exists.
frame += 1;
frame %= 4; 
if (keyboard_check_pressed(object_game_controls.action_1_key) && distance_to_object(object_player) < 5
	&& !instance_exists(object_textbox) && alarm[0] == -1 && !global.pub_beaten)
{
	var challenges = global.pub_challenges++;
	if (challenges == 0)
	{
		ds_queue_enqueue(global.textQueue, "Hey there, HICCUP stranger!");
		ds_queue_enqueue(global.textQueue, "I'm not HICCUP quite HICCUP sure\nwhat you're doing,");
		ds_queue_enqueue(global.textQueue, "but time for a HICCUP drinking game!");
	}
	else if (challenges < 3)
	{
		ds_queue_enqueue(global.textQueue, "Came back HICCUP, for more?");
	}
	else
	{
		ds_queue_enqueue(global.textQueue, "Can't HICCUP HICCUP HICCUP\nhold HICCUP HICCUP HICCUP your drink?");
	}
	ds_queue_enqueue(global.textQueue, "Now let's fight. Mash your action\nbutton to drink and win.");
	ds_queue_enqueue(global.textQueue, id);
	instance_create_depth(0, 0, 20, object_textbox);
}