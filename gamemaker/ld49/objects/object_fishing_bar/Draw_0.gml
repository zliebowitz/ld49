/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(global.fish_beaten != true 
	&& alarm[0] != -1)
{
		draw_set_color(c_purple);
		var text = "MISSED!"
		draw_text(bar_x,bar_y+5, text );
}
