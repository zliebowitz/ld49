draw_self();


draw_set_color(c_black);
draw_set_alpha(1);
var text = "Amount Due:\n$" + string(global.bill) + ".00"
draw_text(bbox_left-100,bbox_top-2, text);