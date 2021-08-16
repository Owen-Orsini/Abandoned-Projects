// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_collision(){
	
	round_x = false;
	round_y = false;

	if(place_meeting(x + x_move, y, obj_collidable)){
		var collidable = instance_place(x + x_move, y, obj_collidable)
			if(x_move > 0){
				x_move = (collidable.bbox_left - bbox_right) - 1;
			}else if(x_move < 0){
				x_move = (collidable.bbox_right - bbox_left) + 1;
			}
	}
	if(place_meeting(x, y + y_move, obj_collidable)){
		var collidable = instance_place(x, y + y_move, obj_collidable)
			if(y_move > 0){
				y_move = (collidable.bbox_top - bbox_bottom) - 1;
			}else if(y_move < 0){
				y_move = (collidable.bbox_bottom - bbox_top) + 1;
			}
	}
}