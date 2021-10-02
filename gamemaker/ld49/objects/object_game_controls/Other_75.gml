/// @description Insert description here
// You can write your code in this editor

var type = async_load[? "event_type"];
// var index = async_load[? "pad_index"];

if (type == "gamepad discovered" || type == "gamepad lost")
{
	var controller_found = false;
	var device_count = gamepad_get_device_count();
	for (var i = 0; i < device_count; i++)
	{
		if (gamepad_is_connected(i))
		{
			global.controller_id = i;
			gamepad_set_axis_deadzone(i, 0.3);
			controller_found = true;
			break;
		}
	}
	
	if (!controller_found)
	{
		global.controller_id = -1;
	}
}