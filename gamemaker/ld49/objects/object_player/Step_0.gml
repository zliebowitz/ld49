/// @description Insert description here
// You can write your code in this editor

hspeed = 0;
vspeed = 0;

if (instance_exists(object_power_bar))
{
	return;
}

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
	audio_play_sound(sound_sfx_swing,10,false);
	
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

//Check for collision.

for (var i = 0; i < instance_number(object_enemy_base); ++i;)
{
	var enemy = instance_find(object_enemy_base,i);
	if(place_meeting(x,y, enemy) 
	&& !enemy.ignore_player)
	{
		if(state == "attack")
		{
			with(enemy){event_user(0)}
		}
		else if(state != "knockback")
		{
			state = "init_knockback";
			var player_target_x = enemy.x - x;
			var player_target_y = enemy.y - y;
			
			var left_delta = abs(enemy.bbox_right - bbox_left);
			var right_delta = abs(enemy.bbox_left - bbox_right);
			var up_delta = abs(bbox_top - enemy.bbox_bottom);
			var down_delta = abs(enemy.bbox_top - bbox_bottom);
			
			var x_delta = min(left_delta, right_delta);
			var y_delta = min(up_delta, down_delta);
			
			if(x_delta <= y_delta)
			{
				knockback_direction_x = sign(player_target_x)*-1;
				knockback_direction_y = 0;
			}
			else
			{
				knockback_direction_x = 0;
				knockback_direction_y = sign(player_target_y)*-1;
			}
			
			

		}
	}
}
