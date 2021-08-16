/// @description Insert description here
// You can write your code in this editor
xx = x;
yy = y;

if(collided == false){

	delta_x = lengthdir_x(proj_speed, move_dir);
	delta_y = lengthdir_y(proj_speed, move_dir);

	with(obj_collidable){
		collidable_id = object_index;
	}

	collided = collision("projectile");


	
	
	x = xx;
	y = yy;
	
}else{
	instance_destroy(id);
}






