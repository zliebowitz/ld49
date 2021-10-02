// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum menu_navigation
{
	up,
	left,
	down,
	right
}

function script_menu_navigator_up()
{
	script_menu_navigator(menu_navigation.up);
}

function script_menu_navigator_down()
{
	script_menu_navigator(menu_navigation.down);
}

function script_menu_navigator(navigate_direction)
{
	var nextmenu = script_menu_navigation(global.selected_title_object_id, navigate_direction);
	with(nextmenu){event_user(title_item_events.activate)}
}

function script_menu_navigation(current_menu, navigate_direction)
{
	var min_menu = current_menu;
	var max_menu = current_menu;
	var next_menu = current_menu;
	var bestydelta = 2147483647;//max value;
	
	for (var i = 0; i < instance_number(object_menu_item); ++i;)
	{
		var menu = instance_find(object_menu_item,i);
		if(menu == current_menu)
		{
			continue;
		}
		//Are the menus above each other?
		if(max(current_menu.bbox_left,menu.bbox_left) <= min(current_menu.bbox_right,menu.bbox_right))
		{
			if (menu.y < min_menu.y) min_menu = menu;
			if (menu.y > max_menu.y) max_menu = menu;
			var ydelta = bestydelta;
			if(navigate_direction == menu_navigation.up)
			{
				ydelta = current_menu.bbox_top - menu.bbox_bottom;
			}
			else if(navigate_direction == menu_navigation.down)
			{
				ydelta = menu.bbox_top - current_menu.bbox_bottom;
			}
			if (ydelta < bestydelta && ydelta>=0)
			{
				bestydelta = ydelta;
				next_menu = menu;
			}
		}	
	}
	if (current_menu == min_menu && navigate_direction == menu_navigation.up) next_menu = max_menu;
	else if (current_menu == max_menu && navigate_direction == menu_navigation.down) next_menu = min_menu;
	return next_menu;
}