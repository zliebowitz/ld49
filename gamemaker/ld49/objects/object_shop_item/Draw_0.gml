draw_self();


draw_set_color(c_black);
draw_set_alpha(1);
var text = "$" + string(price) + ".00"
draw_text(bbox_left,bbox_top-2, text);

