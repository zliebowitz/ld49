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

	if (!place_meeting(x + direction_x*move_speed, y, object_fence))
	{
		x += (direction_x*move_speed);
	}
	if (!place_meeting(x, y + direction_x*move_speed, object_fence))
	{
		y += (direction_y*move_speed);
	}


	if(abs(target_x) >= abs(target_y))
	{
		if(direction_x)
		{
			image_index =0;	
		}
		else
		{
			image_index =2;	
		}
	}
	else
	{
		if(direction_y)
		{
			image_index =3;	
		}
		else
		{
			image_index =1;	
		}
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
else if (state == "knockback")
{
	
	target_x = object_player.x-x;
	target_y = object_player.y-y;

	var direction_x = sign(target_x)*-1;
	var direction_y = sign(target_y)*-1;

	x += (direction_x*move_speed*5);
	y += (direction_y*move_speed*5);
}

