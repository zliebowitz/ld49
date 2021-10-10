/// @description Insert description here
// You can write your code in this editor


var init_color = draw_get_color();
var init_halign = draw_get_halign();
var init_valign = draw_get_valign();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text_string);
draw_set_color(init_color);
draw_set_halign(init_halign);
draw_set_valign(init_valign);