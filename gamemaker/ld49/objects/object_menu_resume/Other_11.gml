/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

object_pause_menu.paused = false;
instance_destroy(object_pause_menu.menu_pause_resume);
instance_destroy(object_pause_menu.menu_pause_title);
instance_destroy(object_pause_menu.menu_selector);
instance_destroy(object_pause_menu.menu_handler);
instance_activate_all()	



