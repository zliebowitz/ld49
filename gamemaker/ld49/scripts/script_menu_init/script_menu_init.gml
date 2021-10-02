// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_menu_init()
{
	global.menu_submitted = false;
	global.selected_title_object_id = script_menu_first();
	global.previous_title_object_id = global.selected_title_object_id;
	with(global.selected_title_object_id){event_user(title_item_events.activate)};
}