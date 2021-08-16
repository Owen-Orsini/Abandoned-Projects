// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_input(){
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	
	look_dir = point_direction(x,y,mouse_x,mouse_y);
	
	fire = mouse_check_button(mb_left);
	weap_switch = keyboard_check(ord("E"));
}