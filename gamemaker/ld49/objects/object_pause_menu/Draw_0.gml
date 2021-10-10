if (paused)
{
	var init_color = draw_get_color();
	var init_halign = draw_get_halign();
	draw_set_color(c_red);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width, room_height,0);
	
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(1);
	var paused_text = "Paused\nVol: " + string(global.master_volume) + "%";
	draw_text(room_width/2, room_height/2, paused_text);
	
	draw_set_color(init_color);
	draw_set_halign(init_halign);
	
	with(menu_pause_resume){draw_self()}
	with(menu_pause_volume_up){draw_self()}
	with(menu_pause_volume_down){draw_self()}
	with(menu_pause_title){draw_self()}
	with(menu_selector){draw_self()}
	
	
	
}
