/// @description Insert description here
// You can write your code in this editor


if(endstep)
{
	return;	
}

if(global.pub_beaten)
{
	endstep = true;
	script_play_music(sound_music_glitch, 0);
	
}
