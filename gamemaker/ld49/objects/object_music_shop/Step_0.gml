
if(endstep)
{
	return;	
}	

if(global.shop_beaten)
{
	endstep = true;
	script_play_music(sound_music_glitch, 0);
	
}
