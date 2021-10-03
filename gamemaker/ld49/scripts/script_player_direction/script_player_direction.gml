// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum player_directions
{
	right,
	up,
	left,
	down
}

function script_player_direction_up()
{
	return 	(script_player_direction() ==  player_directions.up);
}

function script_player_direction_down()
{
	return 	(script_player_direction() ==  player_directions.down);
}

function script_player_direction_right()
{
	return 	(script_player_direction() ==  player_directions.right);
}

function script_player_direction_left()
{
	return 	(script_player_direction() ==  player_directions.left);
}

function script_player_direction()
{
	switch(sprite_index)
	{
		case sprite_avatar_walking_up:
		case sprite_avatar_idle_up:
		case sprite_avatar_attacking_up:
			return player_directions.up;
		case sprite_avatar_walking_down:
		case sprite_avatar_idle_down:
		case sprite_avatar_attacking_down:
			return player_directions.down;
		case sprite_avatar_walking_right:
		case sprite_avatar_idle_right:
		case sprite_avatar_attacking_right:
			if(image_xscale < 0)
			{
				return player_directions.left;
			}
			else
			{
				return player_directions.right;
			}
	}
}