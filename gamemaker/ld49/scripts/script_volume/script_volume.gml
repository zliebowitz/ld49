// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function script_volume_init()
{
	global.master_volume = 70;
	audio_master_gain(global.master_volume/100);
}


function script_volume_up()
{
	global.master_volume = min(round(global.master_volume + 5), 100);
	audio_master_gain(global.master_volume/100);
}


function script_volume_down()
{
	global.master_volume = max(global.master_volume - 5, 0.0);
	audio_master_gain(global.master_volume/100);
}