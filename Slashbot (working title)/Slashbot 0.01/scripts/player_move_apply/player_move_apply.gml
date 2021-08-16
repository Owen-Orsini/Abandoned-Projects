// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_move_apply(){
	
	if(round_x == true){
		x = round(x);
	}
	if(round_y == true){
		y = round(y);
	}
	x = x + x_move;
	y = y + y_move;
	
}