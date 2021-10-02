if (object_menu_controls.pause_pressed && !pause_pressed)
{
	paused = !paused;
	
	if (paused)
	{
		instance_deactivate_all(true);
		instance_activate_object(object_menu_controls);

		var view_width = camera_get_view_width(view_camera[0]);
		var view_height = camera_get_view_height(view_camera[0]);
	
		menu_pause_resume = instance_create_depth(0,0,0,object_menu_resume);
		menu_pause_resume.visible = false;
		menu_pause_resume.x = view_width / 4;
		menu_pause_resume.y = (view_height / 8) * 2;

		menu_pause_title = instance_create_depth(0,0,0, object_menu_title_screen );
		menu_pause_title.visible = false;
		menu_pause_title.x = view_width / 4;
		menu_pause_title.y = (view_height / 8) * 4;
		
		menu_selector = instance_create_depth(0,0,0, object_menu_selector );
		menu_selector.visible = false;
		menu_selector.x = menu_pause_resume.x;
		menu_selector.y = menu_pause_resume.y;
		
		script_menu_init();
		
		
	}
	else
	{
		
		with(menu_pause_resume){event_user(object_menu_item.title_item_events.enter)}
		//instance_destroy(menu_pause_resume);
		//instance_destroy(menu_pause_title);
		//instance_destroy(menu_selector);
		//instance_activate_all()	
		
	}
	
	pause_pressed = true;
}
else if (!object_menu_controls.pause_pressed && pause_pressed)
{
	pause_pressed = false;
}

