if(!gui_mouse_entered)
{
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom, )) 
	{
		// mouse entered
		event_user(title_item_events.manual_mouse_enter);
		gui_mouse_entered = true;
	}
}
else
{
	if (!point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom, )) 
	{
		
		gui_mouse_entered = false;
	}
	
}

if (mouse_check_button_pressed(mb_left)) 
{

   if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), bbox_left, bbox_top, bbox_right, bbox_bottom, )) 
   {   
       // button clicked, do some stuff
	   event_user(title_item_events.manual_mouse_left_press);
   }
}