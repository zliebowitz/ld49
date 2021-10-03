/// @description power bar game over
// You can write your code in this editor

// TODO: handle winning/losing
if (power_bar.power_percent > power_bar.target_percent)
{
	global.pub_beaten = true;
}
instance_destroy(power_bar);
delete power_bar;