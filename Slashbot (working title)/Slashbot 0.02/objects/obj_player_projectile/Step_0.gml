/// @description Insert description here
// You can write your code in this editor

if(collided == false){

	delta_x = lengthdir_x(proj_speed, move_dir);
	delta_y = lengthdir_y(proj_speed, move_dir);

	with(obj_collidable){
		collidable_id = object_index;
	}

	collided = collision("projectile");


	if(round_x == true){
		x = round(x);
		round_x = false;
	}
	if(round_y == true){
		y = round(y);
		round_y = false;
	}

	x = x + delta_x;
	y = y + delta_y;
}else{
	instance_destroy(id)
}






