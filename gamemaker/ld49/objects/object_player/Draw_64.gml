
var text = "$" + string(global.money) + ".00";

draw_set_color(c_black);
var x1 = room_width - string_width(text) - 15;
var x2 = room_width  - 5;
var y1 = 5;
var y2 = y1 + string_height(text)+2;
draw_rectangle(x1,y1,x2,y2,0);
draw_set_color(c_white);
draw_set_alpha(1);



draw_text(x1+5, y1+1, text);

draw_set_color(c_black);