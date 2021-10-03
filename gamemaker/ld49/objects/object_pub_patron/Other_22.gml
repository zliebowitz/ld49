/// @description end of text queue
// You can write your code in this editor
power_bar = instance_create_depth(x, y, depth, object_power_bar);
power_bar.power_increment = .15;
power_bar.allow_cheat = true;
var sound = sound_music_drinking_game;
alarm[0] = audio_sound_length(sound) * room_speed;
audio_pause_all();
track = audio_play_sound(sound, 0, false);