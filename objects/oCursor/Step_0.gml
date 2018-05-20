/// @description Insert description here
// You can write your code in this editor


x=mouse_x;
y=mouse_y;

//floor rounds the result to a whole number
gridX = floor(x/grid_size);

gridY = floor(y/grid_size);

if(gridX < 0 || gridY < 0 || gridX >= room_width/grid_size || gridY >= room_height/grid_size)
{
	 hoverNode = noone;
}
else
{
	hoverNode = map[gridX, gridY];	
}

inst = instance_position(x,y,oButton);
if(inst != noone)
{
	hoverNode = noone;
}

if(hoverNode)
{
	//Create log
	if mouse_check_button_pressed(mb_left)
	{
		//inst = instance_position( hoverNode.x, hoverNode.y, oButton)
		//if(inst != noone)
		//{
		//	pressed = true;
		//}	
		//with(oButton)
		//{
		//	if(mouse_x > x && mouse_x < x + length)
		//	{
		//		if(mouse_y > y && mouse_y < y + length)
		//		{
		//			pressed = true;
		//		}
		
		//	}
		//}

		//if(hoverNode.item)
		//{
		//	instance_destroy(hoverNode.item);	
		//}

		var item = instance_create_depth(hoverNode.x, hoverNode.y, -1, oItem);
		item.sprite = sLog;
		item.IsFlammable = true;
		
		ds_list_add(hoverNode.itemList,item);	
			
	}
	
	//Create fire
	if mouse_check_button_pressed(mb_right)
	{
		//if(hoverNode.item)
		//{
		//	instance_destroy(hoverNode.item);	
		//}
		if(elementToApply != noone)
		{
			if(ds_list_size(hoverNode.itemList) > 0)
			{
		
				var index = 0;
				for(index = 0; index < ds_list_size(hoverNode.itemList); index++)
				{
					var item = ds_list_find_value(hoverNode.itemList,index);
					if(elementToApply == Elements.fire)
					{
						if(item.IsFlammable)
						{ 
							item.IsOnFire = Degree.full;
						}
					}
					if(elementToApply == Elements.earth)
					{
						element = instance_create_depth(hoverNode.x, hoverNode.y, -1, oElement)
						element.elementType = Elements.earth;
						ds_list_add(hoverNode.itemList,element);
					}
					if(elementToApply == Elements.water)
					{
						if(item.IsHygroscopic)
						{ 
							item.IsWet = Degree.full;
						}
					}
					if(elementToApply == Elements.wind)
					{
						element = instance_create_depth(hoverNode.x, hoverNode.y, -1, oElement)
						element.elementType = Elements.wind;
						ds_list_add(hoverNode.itemList,element);
					}
				}
			}
			else
			{
					if(elementToApply == Elements.fire)
					{
						element = instance_create_depth(hoverNode.x, hoverNode.y, -1, oElement)
						element.elementType = Elements.fire;
						ds_list_add(hoverNode.itemList,element);
					}
					if(elementToApply == Elements.earth)
					{
						element = instance_create_depth(hoverNode.x, hoverNode.y, -1, oElement)
						element.elementType = Elements.earth;
						ds_list_add(hoverNode.itemList,element);
					}
					if(elementToApply == Elements.water)
					{
						element = instance_create_depth(hoverNode.x, hoverNode.y, -1, oElement)
						element.elementType = Elements.water;
						ds_list_add(hoverNode.itemList,element);
					}
					if(elementToApply == Elements.wind)
					{
						element = instance_create_depth(hoverNode.x, hoverNode.y, -1, oElement)
						element.elementType = Elements.wind;
						ds_list_add(hoverNode.itemList,element);
					}
			}
		}
	}
}




if(keyboard_check_pressed(vk_space))
{
	oGame.roundCounter = oGame.roundCounter +1;
	oGame.state = "RoundEnding";
}








