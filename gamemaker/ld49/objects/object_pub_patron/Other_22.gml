/// @description end of text queue
// You can write your code in this editor
power_bar = instance_create_depth(x, y, depth, object_power_bar);
power_bar.power_increment = .15;
power_bar.allow_cheat = true;
alarm[0] = 5 * room_speed;