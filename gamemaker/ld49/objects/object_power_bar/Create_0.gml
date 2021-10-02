enum bar_states
{
	grow,
	shrink
}

enum bar_types
{
	standard,
	versus
}

bar_state = bar_states.grow;
bar_type = bar_types.versus;

power_percent = 50;
power_increment = 1;
target_percent = 50;
versus_frames_between_tap = 10
versus_increment=1;
steps = 0;

bar_width = 400;
bar_height = 5;

player_y_offset = 5;

bar_x = 5;
bar_y = 5;

//behaviors
slave_to_player = 0;
bar_animate = 0;
show_target = 1
run_bar = 1;

action1_pressed = 0;
allow_cheat = false;