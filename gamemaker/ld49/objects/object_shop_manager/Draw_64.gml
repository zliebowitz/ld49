/// @description Insert description here
// You can write your code in this editor
var init_color = draw_get_color();
var init_halign = draw_get_halign();

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);
var text = "Amount Due:\n$" + string(global.bill) + ".00"
draw_text(192, 5, text);

draw_set_color(init_color);
draw_set_halign(init_halign);