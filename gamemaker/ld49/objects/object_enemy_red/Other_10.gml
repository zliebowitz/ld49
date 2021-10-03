/// @description Hit begin knockback
// Inherit the parent event
event_inherited();

if(place_meeting(x,y, object_player))
{
	state = "knockback"
	alarm[0]=10;
	
}