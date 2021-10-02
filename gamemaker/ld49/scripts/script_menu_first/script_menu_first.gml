// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_menu_first()
{
	var topY = 2147483647;
	var first_menu;
	for (var i = 0; i < instance_number(object_menu_item); ++i;)
	{
		var menu = instance_find(object_menu_item,i);
		if(menu.bbox_top < topY)
		{
			first_menu = menu;
			topY = first_menu.bbox_top;
		}
	}
	
	return first_menu;
}