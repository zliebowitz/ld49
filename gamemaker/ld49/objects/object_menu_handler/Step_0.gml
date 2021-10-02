/// @description Insert description here
// You can write your code in this editor

if (submit_pressed)
{
	return;
}

if (object_menu_controls.up_pressed && !up_pressed)
{
	up_pressed = true;
	script_menu_navigator_up();
}
else if (!object_menu_controls.up_pressed)
{
	up_pressed = false;	
	
}

if (object_menu_controls.down_pressed && !down_pressed)
{
	down_pressed = true;
	script_menu_navigator_down();
}
else if (!object_menu_controls.down_pressed)
{
	down_pressed = false;
}

if (object_menu_controls.submit_pressed && !submit_pressed)
{
	script_menu_submit();
	submit_pressed = true;
}
