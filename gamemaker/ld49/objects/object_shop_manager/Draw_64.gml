/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_alpha(1);
var text = "Amount Due:\n$" + string(global.bill) + ".00"
draw_text(192, 5, text);

show_debug_message("x = " + string(bbox_left-100));
show_debug_message("y = " + string(bbox_top-2));