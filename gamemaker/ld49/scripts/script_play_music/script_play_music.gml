// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_play_music(sound_id, loop_begin_time)
{
	if (!audio_is_playing(sound_id))
	{
		audio_stop_all();
		object_music_player.sound = audio_play_sound(sound_id, 10, true);
		object_music_player.played = false;
		object_music_player.loop_begin_time = loop_begin_time;
		object_music_player.alarm[0] = object_music_player.loop_begin_time * room_speed;
	}
}