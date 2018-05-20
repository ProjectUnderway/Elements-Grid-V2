/// @description Insert description here
// You can write your code in this editor



if(IsOnFire == Degree.ash)
{
	sprite = sAsh;
}

if(state = "RoundEnd")
{
		
	state = "RoundStart";
}

//if(IsOnFire == Degree.none && hp == 0)
//{	
//	instance_destroy();
//}

if(CanDestroy)
{	
	instance_destroy();
}