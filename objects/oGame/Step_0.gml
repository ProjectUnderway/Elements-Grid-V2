/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case "initializing":
			fireButton = instance_create_depth(100, 30, -6, oButton);
			fireButton.text = "Fire";
			fireButton.event = "FIRE";
			
			waterButton = instance_create_depth(100, 60, -6, oButton);
			waterButton.text = "Water";
			waterButton.event = "WATER";
			
			windButton = instance_create_depth(100, 90, -6,  oButton);
			windButton.text = "Wind";
			windButton.event = "WIND";
			
			earthButton = instance_create_depth(100, 120, -6, oButton);
			earthButton.text = "Earth";
			earthButton.event = "EARTH";
		with(oNode)
		{
		//	if(instance_position(x+16, y+16, oTerrain))
		//	{
		//		tempTerrain = instance_position(x+16, y+16, oTerrain)
				
		//		switch(tempTerrain.type)
		//		{
		//			case "wall":
		//				instance_change(oWall, true);
		//				type = "wall";
		//				passable = false;
						
		//				break;
						
		//			case "rubble":
		//			instance_change(oRubble, true);
		//				type = "rubble"
		//				cost = 2;
						
		//				break;
		//		}
				
				
		//		with(tempTerrain)
		//		{
		//			instance_destroy();	
		//		}
		//	}
			
			
		//	if(instance_position(x+16,y+16, oActor))
		//	{
		//		occupant = instance_position(x + 16, y +16, oActor);
		//		occupant.gridX = gridX;
		//		occupant.gridY = gridY;
		//	}
			
			
			
		}
		
		//state = "roll init";
		//break;
		
		//case "roll init":
		//tempInit = ds_priority_create();
		//with(oActor)
		//{
		//	initRoll = 	irandom_range(1,20) + initiative;
		//	ds_priority_add(other.tempInit, id, initRoll);
		//}
		
		//while(ds_priority_size(tempInit) > 0)
		//{
		//	ds_list_add(turnOrder, ds_priority_delete_max(tempInit));	
		//}
		
		//turnMax = ds_list_size(turnOrder);
		
		//ds_priority_destroy(tempInit);
		
		state="waiting";
		break;
		
		case "RoundEnding":
			with(oNode)
			{
				state= "RoundEnd";
			}
			state = "RoundEnd";
		break;
		
		
		case "RoundEnd":
		
		var nodesRoundEndFinished = false;
			with(oNode)
			{
				if(state == "RoundEnd")
				{
					var listEmpty = ds_list_empty(itemList);
					if(!listEmpty)
					{
						nodesRoundEndFinished = true;
						break;
					}
					else
					{
						state = "RoundStart";
					}
				}
			}	
			
			//with(oItem)
			//{
		
			//}
			
			if(nodesRoundEndFinished == false)
			{
				state= "RoundStart";
			}
		break;

}