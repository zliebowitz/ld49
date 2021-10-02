/// @description Insert description here
// You can write your code in this editor

// Runs init code if in room_init, then destroys itself.
if (room = room_init)
{
	global.textQueue = ds_queue_create();
	instance_destroy();
}

currentMessage = "";
advanceText = true;