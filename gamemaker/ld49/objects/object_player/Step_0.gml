/// @description Insert description here
// You can write your code in this editor

hspeed = 0;
vspeed = 0;

if(state == "init_knockback")
{
	if (script_player_direction_up())
	{
		sprite_index = sprite_avatar_idle_up;
	}
	else if (script_player_direction_right() || script_player_direction_left())
	{
		sprite_index = sprite_avatar_idle_right;
	}
	else if (script_player_direction_down())
	{
		sprite_index = sprite_avatar_idle_down;
	}
	
	alarm[1] = 5;
	hspeed = 5*knockback_direction_x;
	vspeed = 5*knockback_direction_y;
	
	state = "knockback";
	
}
else if( state == "knockback")
{
	hspeed = 5*knockback_direction_x;
	vspeed = 5*knockback_direction_y;	
}
else if(state == "init_attack")
{
	
	if (script_player_direction_up())
	{
		sprite_index = sprite_avatar_attacking_up;
		image_index= 0;
	}
	else if (script_player_direction_right() || script_player_direction_left())
	{
		sprite_index = sprite_avatar_attacking_right;
		image_index = 0;
	}
	else if (script_player_direction_down())
	{
		sprite_index = sprite_avatar_attacking_down;
		image_index = 0;
	}
		
	state = "attack"
	
}
else if (state == "attack")
{
	// do nothing for now.
}
else
{
	if (object_game_controls.up_pressed)
	{
		sprite_index =sprite_avatar_walking_up;
		image_xscale = abs(image_xscale);
		vspeed = -1;
		state = "walk";
	}
	else if (object_game_controls.left_pressed)
	{
		sprite_index = sprite_avatar_walking_right;
		image_xscale = -1 *abs(image_xscale);
		hspeed = -1;
		state = "walk";
	}
	else if (object_game_controls.right_pressed)
	{
		sprite_index = sprite_avatar_walking_right;
		image_xscale = abs(image_xscale);
		hspeed = 1;
		state = "walk";
	}
	else if (object_game_controls.down_pressed)
	{
		sprite_index = sprite_avatar_walking_down;
		image_xscale = abs(image_xscale);
		vspeed = 1;
		state = "walk";
	}
	else if (script_player_direction_up())
	{
		sprite_index = sprite_avatar_idle_up;
		state = "idle";
	}
	else if (script_player_direction_right() || script_player_direction_left())
	{
		sprite_index = sprite_avatar_idle_right;
		state = "idle";
	}
	else if (script_player_direction_down())
	{
		sprite_index = sprite_avatar_idle_down;
		state = "idle"
	}
	
	// Intentionally buggy controls (up&down / left&right pushed at the same time)
	if (object_game_controls.up_pressed && object_game_controls.down_pressed)
	{
		if random(1) > 0.5
		{
			sprite_index = sprite_avatar_walking_up;
		}
		else
		{
			sprite_index = sprite_avatar_walking_down;
		}
	
		vspeed = round(random(8))-4
		state = "buggy"
	}

	// Intentionally buggy controls (up&down / left&right pushed at the same time)
	if (object_game_controls.right_pressed && object_game_controls.left_pressed)
	{
		if random(1) > 0.5
		{
			sprite_index = sprite_avatar_walking_right;
			image_xscale = abs(image_xscale);
		}
		else
		{
			sprite_index = sprite_avatar_walking_right;
			image_xscale = -1 *abs(image_xscale);
		}
		hspeed = round(random(8))-4
		state = "buggy"
	}
	
	//check for attack button.
	if (object_game_controls.action_2_pressed)
	{
		state = "init_attack"
	}
	
}