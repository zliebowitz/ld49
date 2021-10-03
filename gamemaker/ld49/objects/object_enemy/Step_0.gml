
if(state == "move")
{
	target_x = object_player.x-x;
	target_y = object_player.y-y;

	var direction_x = sign(target_x);
	var direction_y = sign(target_y);

	x += (direction_x*move_speed);
	y += (direction_y*move_speed);


	if(abs(target_x) >= abs(target_y))
	{
		if(direction_x)
		{
			image_index =0;	
		}
		else
		{
			image_index =2;	
		}
	}
	else
	{
		if(direction_y)
		{
			image_index =3;	
		}
		else
		{
			image_index =1;	
		}
	}
}
else if (state == "knockback")
{
	
	target_x = object_player.x-x;
	target_y = object_player.y-y;

	var direction_x = sign(target_x)*-1;
	var direction_y = sign(target_y)*-1;

	x += (direction_x*move_speed*5);
	y += (direction_y*move_speed*5);
}

if(place_meeting(x,y, object_player))
{
	if(object_player.state == "attack")
	{
		state = "knockback"
		alarm[0]=10;
	}
	else if(object_player.state != "knockback")
	{
		object_player.state = "init_knockback";
		var player_target_x = x - object_player.x;
		var player_target_y = y - object_player.y;

		object_player.knockback_direction_x = sign(player_target_x)*-1;
		object_player.knockback_direction_y = sign(player_target_y)*-1;

	}
}