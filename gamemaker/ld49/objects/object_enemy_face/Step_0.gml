/// @description Insert description here
// You can write your code in this editor
if(state == "idle")
{
	if(enemy_ai_type == enemy_ai_types.seek)
	{
		state = "move";
	}
	else if(enemy_ai_type == enemy_ai_types.wander)
	{
		state = "init_wander";	
	}
}
else if(state == "init_wander")
{
	target_x = random(room_width)-x;
	target_y = random(room_height)-y;
	
	state = "wander"
	alarm[0] = wander_frames;
}
else if(state == "wander")
{
	var direction_x = sign(target_x);
	var direction_y = sign(target_y);

	x += (direction_x*move_speed);
	y += (direction_y*move_speed);


	if(direction_x)
	{
		image_xscale = 1;	
	}
	else
	{
		image_xscale = -1;	
	}

}
else if(state == "move")
{
	if(random(1))
	{
		target_x = object_player.x-x;
		target_y = 0;
	}
	else
	{
		target_x =0;
		target_y = object_player.y-y;
	}
	
	state ="wander";
	alarm[0]=20;

}

