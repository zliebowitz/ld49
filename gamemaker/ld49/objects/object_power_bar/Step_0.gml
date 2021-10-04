if(!run_bar)
{
	return;	
}

steps = steps +1;

if(slave_to_player == 1)
{
	bar_x = object_player.x - (bar_width/2.0) 
	bar_y = object_player.y-object_player.sprite_height - player_y_offset;
}


if(bar_animate)
{
	switch(bar_state)
	{
		case bar_states.grow:
			if(power_percent < 100)
			{
				power_percent = power_percent + power_increment;
			}
			else
			{
				bar_state = bar_states.shrink;
			}
			break;
		case bar_states.shrink:
		if(power_percent > 0)
			{
				power_percent = power_percent - power_increment;
			}
			else
			{
				bar_state = bar_states.grow;
			}
			break;
	}
}

if(bar_type == bar_types.versus)
{
	if(steps % versus_frames_between_tap == 0)
	{
		power_percent = power_percent-versus_increment;
		if(power_percent<0)
		{
			power_percent = 0;
		}
	}
}

//Testing it out.
if (object_game_controls.action_1_pressed && (allow_cheat || !action1_pressed))
{
	action1_pressed = true
	event_user(0);
}
else if(!object_game_controls.action_1_pressed)
{
	action1_pressed = false;
}



