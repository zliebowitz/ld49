/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(global.fish_beaten != true 
	&& alarm[0] != -1)
{
		var init_color = draw_get_color();
		var init_halign = draw_get_halign();
		draw_set_halign(fa_left);
		draw_set_color(c_purple);
		var text = "MISSED!"
		draw_text(bar_x,bar_y+5, text );
		draw_set_color(init_color);
		draw_set_halign(init_halign);
}
