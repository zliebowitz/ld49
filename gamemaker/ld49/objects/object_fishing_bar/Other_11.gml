/// @description glitched

if(!global.fish_beaten)
{
	global.fish_beaten = true;
	event_user(0);
	
	with(object_talkingman)
	{
		event_user(0);	
	}
}