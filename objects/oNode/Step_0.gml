/// @description Insert description here
// You can write your code in this editor

if(state == "RoundEnd")
{
	var listEmpty = ds_list_empty(itemList);
	if(!listEmpty)
	{
		var index = 0;
		var itemsToRemove = ds_list_create();
	
		for(index = 0; index < ds_list_size(itemList); index++)
		{
			var item = ds_list_find_value(itemList,index);
			
			if(item.IsOnFire != 0)
			{
				if(item.IsOnFire == Degree.ash)
				{
					ds_list_add(itemsToRemove, index);
					item.CanDestroy = true;
					continue;
				}
					
				if(item.IsOnFire  == Degree.full && item.hp < 51)
				{
					item.IsOnFire = Degree.half;
						
				}
				if(item.IsOnFire  == Degree.half  && item.hp < 1)
				{
					item.IsOnFire = Degree.ash;
				}
					
				if(item.IsOnFire == Degree.full || item.IsOnFire == Degree.half)
				{
					if(item.hp > 0)	
					{
						item.hp = floor(item.hp - 25);	
					}
				}
			}
		}
		
		index =0
		if(ds_list_size(itemsToRemove) >0)
		{
			for(index = 0; index < ds_list_size(itemsToRemove); index++)
			{
				var indexToDelete = ds_list_find_value(itemsToRemove, index)
				ds_list_delete(itemList,indexToDelete);
			}
		}
		ds_list_destroy(itemsToRemove);
		state = "RoundStart";
	}
	else
	{
		state = "RoundStart";	
	}
}

if(state == "RoundStart")
{
	state = "RoundInProgress";
}
		//var index = 0;

		//for(index = 0; index < ds_list_size(itemList); index++)
		//{
		//	//var item = ds_list_find_value(itemList,index);
		//	//if(item.hp ==1)
		//	//{
		//	//	instance_destroy(ds_list_find_value(itemList,index));
		//	//	ds_list_delete(itemList,index);
		//	//}
		//}