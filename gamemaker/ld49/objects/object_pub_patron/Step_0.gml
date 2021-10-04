/// @description Insert description here
// You can write your code in this editor

// Creates a textbox if: action 1 is pressed while touching the npc, and no textbox currently exists.
frame += 1;
frame %= 4; 
if (object_game_controls.action_1_pressed 
	&& distance_to_object(object_player) < 5
	&& !instance_exists(object_textbox) 
	&& alarm[0] == -1 && !global.pub_beaten
	&& !dialog_running)
{
	var challenges = global.pub_challenges++;
	if (challenges == 0)
	{
		ds_queue_enqueue(global.textQueue, "Hey there HIC stranger!");
		ds_queue_enqueue(global.textQueue, "How long HIC have you been here HIC?");
		ds_queue_enqueue(global.textQueue, "I've been here HIC for quite awhile\nmyself...");
		ds_queue_enqueue(global.textQueue, "You're probably HIC wondering why a\nfellah like myself would be spending\nso much time here, huh?");
		ds_queue_enqueue(global.textQueue, "Welp, HIC you guessed it...");
		ds_queue_enqueue(global.textQueue, "I've been here for the past six hours\ndrinking Shirley Temples HIC!");
		ds_queue_enqueue(global.textQueue, "But enough HIC chit chat.\nDo you have time to HIC play a game?");
		ds_queue_enqueue(global.textQueue, "It just may be HIC time for...");
		ds_queue_enqueue(global.textQueue, "A DRINKING GAME!");
	}
	else if (challenges < 3)
	{
		ds_queue_enqueue(global.textQueue, "Came back HIC, for more?");
	}
	else
	{
		ds_queue_enqueue(global.textQueue, "Can't HIC HIC HIC HIC HIC\nhold HIC HIC HIC your drink?");
	}
	ds_queue_enqueue(global.textQueue, "Now let's fight. Mash your action\nbutton to drink and win.");
	ds_queue_enqueue(global.textQueue, id);
	instance_create_depth(0, 0, 20, object_textbox);
	dialog_running = true;
}
else if(!instance_exists(object_textbox) 
	&& dialog_running
	&& alarm[0] == -1)
{
	alarm[15] = 30;
}