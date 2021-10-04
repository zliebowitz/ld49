
if(endstep)
{
	return;	
}	

if(global.battle_beaten)
{
	endstep = true;
	script_play_music(sound_music_glitch, 0);
	
}
else
{

	for (var i = 0; i < instance_number(object_enemy_red); ++i)
	{
		var enemy = instance_find(object_enemy_red,i);
		if(enemy.state != "bugged" && enemy.object_index != object_enemy_face)
		{
			return;
		}
	}
	
	global.battle_beaten = true;
	
}