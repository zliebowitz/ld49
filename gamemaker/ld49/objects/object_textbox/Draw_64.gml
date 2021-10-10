/// @description Insert description here
// You can write your code in this editor
draw_self();

var init_color = draw_get_color();
var init_halign = draw_get_halign();
draw_set_halign(fa_left);
draw_set_colour(c_black)
draw_text(41, 159, currentMessage); //using display coordinates.
draw_set_color(init_color);
draw_set_halign(init_halign);