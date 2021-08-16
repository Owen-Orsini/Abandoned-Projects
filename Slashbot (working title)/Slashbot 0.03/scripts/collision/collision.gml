// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(collision_type){
	static delta_x_sign = 0;
	static x_colliding = false;
	static delta_y_sign = 0;
	static y_colliding = false;
	
	#region X collision
	
	
	// checks if delta_x is positive, negative, or zero
	delta_x_sign = sign(delta_x);
	
	// if delta_x is zero, skip collision checks
	if(delta_x_sign != 0){
		// checks if objects will meet if delta_x is applied
		if(place_meeting(xx + delta_x, yy, collidable_id)){
			x_colliding = true;
			// rounds x and delta_x to make collisions visually smoother and (more importantly) math easier. 
			round_x = true;
			delta_x = round(delta_x);
			
			while(place_meeting(xx + delta_x, yy, collidable_id)){
				 if(delta_x_sign == 1){
					delta_x = delta_x - 1;
				 }else{
					delta_x = delta_x + 1;
				 }
			}
			
		}else{
			x_colliding = false;
		}
	}
	xx = xx + delta_x;
	#endregion
	#region Y collision
	
	
	// checks if delta_y is positive, negative, or zero
	delta_y_sign = sign(delta_y);
	
	// if delta_y is zero, skip collision checks
	if(delta_y_sign != 0){
		// checks if objects will meet if delta_y is applied
		if(place_meeting(xx, yy + delta_y, collidable_id)){
			y_colliding = true;
			// rounds y and delta_y to make collisions visually smoother and (more importantly) math easier. 
			round_y = true;
			delta_y = round(delta_y);
			
			while(place_meeting(xx, yy + delta_y, collidable_id)){
				 if(delta_y_sign == 1){
					delta_y = delta_y - 1;
				 }else{
					delta_y = delta_y + 1;
				 }
				
			}
			
		}else{
			y_colliding = false;
		}
	}
	yy = yy + delta_y;
	#endregion
	
	switch(collision_type){
	case "player" :
	break;
	case "projectile" :
		if(x_colliding == true || y_colliding == true){
			xx = x;
			yy = y;
			delta_x = 0;
			delta_y = 0;
			return true;
		}else{
			return false;
		}
	break;
	}
	
}