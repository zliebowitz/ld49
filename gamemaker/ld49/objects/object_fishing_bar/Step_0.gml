/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(previous_bar_state == bar_states.shrink 
&& bar_state == bar_states.grow)
{
	cycles_to_glitch -= 1;
}

if(cycles_to_glitch <= 0)
{
	event_user(1);
}

previous_bar_state = bar_state;