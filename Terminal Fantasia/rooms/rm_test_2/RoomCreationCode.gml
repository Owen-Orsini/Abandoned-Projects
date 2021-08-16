if((global.target_x != -1) && (global.target_y != -1)){
	with(obj_player){
		x = global.target_x * 16;
		y = global.target_y * 16;
	}

}
global.target_x = -1;
global.target_y = -1;
global.target_room = -1;

//right : 1, down : 2, left : 3, up : 4
