var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
var key_jump = keyboard_check(vk_space)

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

x = x + hsp;

// Jumping : 
if (place_meeting(x,y+2,obj_parent_ground)) && (key_jump)
{
	vsp = -8
}

//Vertical collision : 
if (place_meeting(x,y+vsp,obj_parent_ground))
{
	while(!place_meeting(x,y+sign(vsp),obj_parent_ground))
	{
		y = y + sign(vsp)
	}
	vsp = 0
}
y = y + vsp;


if (keyboard_check(vk_right)) {
	x += 6;
	sprite_index = sprCharacterRun;
	image_xscale = 1;
	image_index = 0.25;
}
else if (keyboard_check(vk_left)) {
	x -= 6;
	sprite_index = sprCharacterRun;
	image_xscale = -1;
	image_index = 0.25;
}
else {
	sprite_index = sprCharacterIdle
	image_index = 0.25;
}




