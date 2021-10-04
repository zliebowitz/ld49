/// @description Insert description here
// You can write your code in this editor

if event_data[? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "EndJumpScare":
		{
			scrolling = true;
			break;
		}
	}
}