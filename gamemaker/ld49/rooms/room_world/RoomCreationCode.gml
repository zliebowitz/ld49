
for (var i = 0; i < array_length(global.bugs_state); i++)
{
	var enemy = instance_find(object_enemy_base,i);
	with(enemy)
	{
		
		x = global.bugs_x[i];
		y = global.bugs_y[i];
		
		if( global.bugs_state[i] == "bugged")
		{
			event_user(1);
		}
		
	}
	
}