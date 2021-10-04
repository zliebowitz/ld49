

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
	if(random(1))
	{
		target_x = random(room_width)-x;
		target_y = 0;
	}
	else
	{
		target_x =0;
		target_y = random(room_height)-y;
	}
	
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
else if (state == "knockback")
{
	
	if(script_player_direction_left() || script_player_direction_right())
	{
		target_x = object_player.x-x;
		target_y = 0;
	}
	else
	{
		target_x = 0;
		target_y = object_player.y-y;
	}

	var direction_x = sign(target_x)*-1;
	var direction_y = sign(target_y)*-1;

	x += (direction_x*move_speed*5);
	y += (direction_y*move_speed*5);
}
else if( state == "bugged" )
{
	
	ignore_player = 1;
}


if(state != "bugged")
{

	if (place_meeting(x, y, object_fence) && !has_glitched)
	{
		if(state == "knockback")
		{
			event_user(1);//glitched
		}
		else
		{
			if(!colided)
			{
				alarm[0] = -1;
				colided = true;
				state = "idle"	
				x = xprevious;
				y = yprevious;
			}
		}
	}
	else if(!place_meeting(x, y, object_fence) && colided)
	{
		colided= false;
	}
}