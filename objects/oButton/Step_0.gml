/// @description Insert description here
// You can write your code in this editor



if(pressed)
{
	if(event == "FIRE")
	{
		oCursor.elementToApply = Elements.fire;
	}

	if(event == "WATER")
	{
		oCursor.elementToApply = Elements.water;
	}

	if(event == "WIND")
	{
		oCursor.elementToApply = Elements.wind;
	}

	if(event == "EARTH")
	{
		oCursor.elementToApply = Elements.earth;
	}	
	
	pressed = false;
}