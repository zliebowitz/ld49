

draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(bar_x, bar_y,bar_x + bar_width, bar_y + bar_height,0);
draw_set_color(c_red);
draw_rectangle(bar_x -1, bar_y -1 ,bar_x + (.01*power_percent*bar_width)-1, bar_y + bar_height-1,0);

if(show_target)
{
	var target_x = bar_x + (.01*target_percent*bar_width)-1
	draw_set_color(c_orange);
	draw_line(target_x, bar_y-4, target_x, bar_y + bar_height+2, )
}

draw_set_alpha(1);
draw_set_color(c_black);

