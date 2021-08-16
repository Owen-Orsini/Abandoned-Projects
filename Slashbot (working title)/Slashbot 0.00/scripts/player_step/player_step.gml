// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_step(){
	event_inherited();
	
	player_input();			// calculates direction from inputs
	
	player_move_calc();		// applies movement speed to movement directions
	
	player_animation();		// changes sprite based on movement direction
	
//	collision();			// calculates collision and applies changes to planned movement
	
	player_move_apply();	// applies planned movement to actual location
}