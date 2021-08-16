// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_animation(){
	if(x_move != 0 or y_move != 0){
		sprite_index = sp_player_walk;
	}else{
		sprite_index = sp_player_idle;
	}
	

}