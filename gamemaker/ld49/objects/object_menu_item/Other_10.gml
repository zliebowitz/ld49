/// @description Activate Menu Item.
if(global.selected_title_object_id != id)
{
	audio_play_sound(sound_sfx_activate_menu, 10, false);
}

global.previous_title_object_id = global.selected_title_object_id;
global.selected_title_object_id = id;

object_menu_selector.y = y;
object_menu_selector.x = x;


 


