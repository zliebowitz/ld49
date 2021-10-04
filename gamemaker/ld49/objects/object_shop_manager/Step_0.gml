if(global.shop_beaten)
{
	sprite_index = sprite_gus_dies;	
	image_speed = 0;
	
	if (glitched_gus_frame < 90)
		image_index = 0;
	else if (glitched_gus_frame < 120)
		image_index = 1;
	else if (glitched_gus_frame < 130)
		image_index = 2;
	else if (glitched_gus_frame < 135)
		image_index = 3;
	else if (glitched_gus_frame < 140)
		image_index = 4;
	else if (glitched_gus_frame < 142)
		image_index = 5;
	else if (glitched_gus_frame < 144)
		image_index = 6;
	else if (glitched_gus_frame < 145)
		image_index = 7;
	else if (glitched_gus_frame < 146)
		image_index = 8;
	else if (glitched_gus_frame < 240)
		image_index = 9;
	else if (glitched_gus_frame < 254)
		// Progress 1 frame every 2 frames.
		image_speed = 1/2;
	else if (glitched_gus_frame < 300)
		image_index = 16;
	else
		image_index = irandom(7) + 17;
	
	
	glitched_gus_frame ++;
}
else if (object_game_controls.action_1_pressed 
	&& distance_to_object(object_player) < 5
	&& !instance_exists(object_textbox)
	&& !dialog_running)
{
	var textbox = instance_create_depth(0, 0, 20, object_textbox);
	switch(dialog_count)
	{
		case 0:
			ds_queue_enqueue(textbox.textQueue, "Hello, walking through that door\nis the smartest thing\nyou've done today!");
			ds_queue_enqueue(textbox.textQueue, "You can't buy happiness,\nbut you can buy these items!\nIt's kind of the same thing!");
			break;
		case 1:
			ds_queue_enqueue(textbox.textQueue, "Don't wait 'til tomorrow!\nThe items you see today\nsomeone already saw yesterday...\nAnd will be back today!");
			break;
		default:
			ds_queue_enqueue(textbox.textQueue, "What are you waiting for?");
			ds_queue_enqueue(textbox.textQueue, "Take advantage of our\noverflow of stacks sale!\nToday only!");
			break;
	}
		dialog_count += 1;
		dialog_running = true;

}
else if(!instance_exists(object_textbox) 
	&& dialog_running
	&& alarm[0] == -1)
{
	alarm[0] = 30;
	
}