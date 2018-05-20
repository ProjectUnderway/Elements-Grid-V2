/// @description Insert description here
// You can write your code in this editor

length =  string_width(text);
height = string_height(text);

//draw_button(x,y, x+length+5, y+height+5, !pressed);

//draw_set_color(c_black)

draw_self();

if(sprite = sButtonPressed)
{
	draw_sprite(sprite, 1, x,y);
}


draw_text(x,y,text);

//draw_set_color(c_white)

//spr = sprite_add(sButton, 1, true, false, 0, 0);
//sprite_collision_mask(spr, false, 2, 0, 0+length, 0, 0+height, 0, 0);

//draw_sprite(spr, 0, x,y)
