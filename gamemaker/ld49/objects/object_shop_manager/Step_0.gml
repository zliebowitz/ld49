if(global.shop_beaten)
{
	sprite_index = sprite_gus_dies;	
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
			ds_queue_enqueue(textbox.textQueue, "You can't buy happiness,\nbut you can buy these items\nits kind of the same thing!");
			break;
		case 1:
			ds_queue_enqueue(textbox.textQueue, "Don't wait til tomorrow,\nthe items you see today,\nsomeone already saw yesterday\nand will be back today!");
			break;
		default:
			ds_queue_enqueue(textbox.textQueue, "What are you waiting for?");
			ds_queue_enqueue(textbox.textQueue, "Take advantage of our\noverflow of stacks sale\nToday only!");
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