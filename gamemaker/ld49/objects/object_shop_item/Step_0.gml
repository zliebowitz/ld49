/// @description Inse9999 description here
// You can write your code in this editor
if (object_game_controls.action_1_pressed && distance_to_object(object_player) < 5)
{
	object_shop_manager.bill += price;
	if (object_shop_manager.bill > 999)
	{
		// TODO: do glitch
	}
}