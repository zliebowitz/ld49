/// @description Insert description here
// You can write your code in this editor
if(!global.warp)
{
	global.warp = true;
	global.target_x = target_x;
	global.target_y = target_y;
	object_fade_out.room_id = target_room;
	
	if(room == room_world)
	{
		for (var i = 0; i < instance_number(object_enemy_base); ++i;)
		{
			var enemy = instance_find(object_enemy_base,i);
			global.bugs_state[i] = enemy.state;
			global.bugs_x[i] = enemy.x;
			global.bugs_y[i] = enemy.y;
			
		}
	}
	
}