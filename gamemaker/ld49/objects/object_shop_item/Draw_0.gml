draw_self();

var init_color = draw_get_color();
var init_halign = draw_get_halign();
var init_valign = draw_get_valign();

draw_set_color(c_blue);
draw_set_alpha(1);

var text = "$" + string(price)
draw_text(bbox_left-6,bbox_bottom+1, text );

draw_set_color(init_color);
draw_set_halign(init_halign);
draw_set_valign(init_valign);

