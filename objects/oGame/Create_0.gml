/// @description Insert description here
// You can write your code in this editor

#macro grid_size 32



state = "initializing";

enum Cover
{
none,
partial,
full
}

enum Degree
{
none,
ash,
half,
full
}

enum Elements
{
fire,
water,
wind,
earth
}



//draw_set_font(fDefault);


randomize();


globalvar map;


roundCounter = 0;


mapWidth = room_width/grid_size;

mapHeight = room_height/grid_size;

//create node
for(xx=0; xx <mapWidth; xx+=1)
{
	for(yy=0; yy< mapHeight; yy+=1)
	{
		map[xx, yy] = instance_create_depth(xx * grid_size, yy * grid_size, 0, oNode);
		map[xx, yy].gridX = xx;
		map[xx, yy].gridY = yy;
		
	}
}

//populate neighbour list
for(xx=0; xx <mapWidth; xx+=1)
{
	for(yy=0; yy< mapHeight; yy+=1)
	{
		node = map[xx,yy];
		
		//add left neighbour
		if(xx > 0)
		{
			ds_list_add(node.neighbours, map[xx-1, yy]);
		}
		
		//add right neighbour
		if(xx < mapWidth -1)
		{
			ds_list_add(node.neighbours, map[xx+1, yy]);
		}
		
		//add top neighbour
		if(yy > 0)
		{
		ds_list_add(node.neighbours, map[xx, yy-1]);
		}
		
		//add bottom neighbour
		if(yy < mapHeight -1)
		{
		ds_list_add(node.neighbours, map[xx, yy+1]);
		}
		
		//add top left neighbour
		if(xx > 0 && yy >0)
		{
		ds_list_add(node.neighbours, map[xx-1, yy-1]);
		}
		
		//add top right
		if(xx < mapWidth -1 && yy >0)
		{
		ds_list_add(node.neighbours, map[xx+1, yy-1]);
		}
		
		//add bottom right
		if(xx < mapWidth -1 && yy <mapHeight -1)
		{
		ds_list_add(node.neighbours, map[xx+1, yy+1]);
		}
		
		//add bottom left
		if(xx >0 && yy <mapHeight -1)
		{
		ds_list_add(node.neighbours, map[xx-1, yy+1]);
		}
		
	}
}

instance_create_depth(x,y, -6, oCursor);


