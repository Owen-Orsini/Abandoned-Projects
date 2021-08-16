//calculates ideal player movement from inputs.
function player_move_calc(){
	// reset x/y change
	x_move = 0;
	y_move = 0;
	
	// find what directions have been input
	xinput = right - left;
	yinput = down - up;
	
	// calculate angle of movement based on input directions
	// find change in X/Y using angle of movement and desired speed
	if(xinput != 0 or yinput != 0){
		dir = point_direction(0,0, xinput, yinput);
		x_move = lengthdir_x(spd, dir);
		y_move = lengthdir_y(spd, dir);
	}
	
	if(look_dir > 90 && look_dir < 270){
		facing_direction = "left";
	}else{
		facing_direction = "right";
	}
	
}