/// @description Insert description here
// You can write your code in this editor

pause_pressed = false;
up_pressed = false;
down_pressed = false;
left_pressed = false;
right_pressed = false;
submit_pressed = false;
	
if (global.controller_id != -1)
{
	// Handle the left joy axis in the vertical direction.
	var axis_value = gamepad_axis_value(global.controller_id, gp_axislv);
	if (axis_value < -0.667)
	{
		up_pressed = true;
	}
	else if (axis_value > 0.667)
	{
		down_pressed = true;
	}
	axis_value = gamepad_axis_value(global.controller_id, gp_axislh);
	if (axis_value < -0.5)
	{
		left_pressed = true;
	}
	else if (axis_value > 0.5)
	{
		right_pressed = true;
	}
	
	// Handle the right joy axis in the vertical direction.
	axis_value = gamepad_axis_value(global.controller_id, gp_axisrv);
	if (axis_value < -0.667)
	{
		up_pressed = true;
	}
	else if (axis_value > 0.667)
	{
		down_pressed = true;
	}
	axis_value = gamepad_axis_value(global.controller_id, gp_axisrh);
	if (axis_value < -0.5)
	{
		left_pressed = true;
	}
	else if (axis_value > 0.5)
	{
		right_pressed = true;
	}
	
	// Check the D-pad now.
	if (gamepad_button_check(global.controller_id, gp_padu))
	{
		up_pressed = true;
	}
	if (gamepad_button_check(global.controller_id, gp_padd))
	{
		down_pressed = true;
	}
	if (gamepad_button_check(global.controller_id, gp_padl))
	{
		left_pressed = true;
	}
	if (gamepad_button_check(global.controller_id, gp_padr))
	{
		right_pressed = true;
	}
	
	// See if the start button was pressed.
	pause_pressed = gamepad_button_check(global.controller_id, gp_start);
	
	// See if the A button was pressed.
	submit_pressed = gamepad_button_check(global.controller_id, gp_face1);
}

if (keyboard_check(pause_key))
{
	pause_pressed = true;
}
if (keyboard_check(up_key))
{
	up_pressed = true;
}
if (keyboard_check(down_key))
{
	down_pressed = true;
}
if (keyboard_check(left_key))
{
	left_pressed = true;
}
if (keyboard_check(right_key))
{
	right_pressed = true;
}
if (keyboard_check(submit_key))
{
	submit_pressed = true;
}