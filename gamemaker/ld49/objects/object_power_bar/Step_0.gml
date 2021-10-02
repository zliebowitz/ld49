
if(slave_to_player == 1)
{
	bar_x = object_player.x - (bar_width/2.0) 
	bar_y = object_player.bbox_top - player_y_offset;
}

if(bar_animate)
{
	switch(bar_state)
	{
		case bar_states.grow:
			if(power_percent < 100)
			{
				power_percent = power_percent + 1;
			}
			else
			{
				bar_state = bar_states.shrink;
			}
			break;
		case bar_states.shrink:
		if(power_percent > 0)
			{
				power_percent = power_percent - 1;
			}
			else
			{
				bar_state = bar_states.grow;
			}
			break;
	}
	
}
