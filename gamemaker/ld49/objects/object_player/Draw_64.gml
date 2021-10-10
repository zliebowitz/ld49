
var init_color = draw_get_color();
var init_halign = draw_get_halign();


var text = "$000.00";

draw_set_halign(fa_left);
draw_set_color(c_black);
var w = display_get_gui_width();
var x1 = w - string_width(text) - 15;
var x2 = w  - 5;
var y1 = 5;
var y2 = y1 + string_height(text)+2;
draw_rectangle(x1,y1,x2,y2,0);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(x1+5, y1+1, text);

draw_set_color(init_color);
draw_set_halign(init_halign);