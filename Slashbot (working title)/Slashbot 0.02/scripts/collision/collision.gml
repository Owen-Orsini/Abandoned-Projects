// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(collision_type){
	#region X collision
	static delta_x_sign = 0;
	static x_colliding = false;
	
	// checks if delta_x is positive, negative, or zero
	delta_x_sign = sign(delta_x);
	
	// if delta_x is zero, skip collision checks
	if(delta_x_sign != 0){
		// checks if objects will meet if delta_x is applied
		if(place_meeting(x + delta_x, y, collidable_id)){
			x_colliding = true;
			// rounds x and delta_x to make collisions visually smoother and (more importantly) math easier. 
			round_x = true;
			delta_x = round(delta_x);
			
			while(x_colliding == true){
				 if(delta_x_sign == 1){
					delta_x = delta_x - 1;
				 }else{
					delta_x = delta_x + 1;
				 }
				 if(!place_meeting(x + delta_x, y, collidable_id)){
					x_colliding = false;
					
				 }
			}
			
		}
	}
	#endregion
	#region Y collision
	static delta_y_sign = 0;
	static y_colliding = false;
	
	// checks if delta_y is positive, negative, or zero
	delta_y_sign = sign(delta_y);
	
	// if delta_y is zero, skip collision checks
	if(delta_y_sign != 0){
		// checks if objects will meet if delta_y is applied
		if(place_meeting(x + delta_x, y + delta_y, collidable_id)){
			y_colliding = true;
			// rounds y and delta_y to make collisions visually smoother and (more importantly) math easier. 
			round_y = true;
			delta_y = round(delta_y);
			
			while(y_colliding == true){
				 if(delta_y_sign == 1){
					delta_y = delta_y - 1;
				 }else{
					delta_y = delta_y + 1;
				 }
				 if(!place_meeting(x, y + delta_y, collidable_id)){
					y_colliding = false;
				 }
			}
			
		}
	}
	#endregion
	
	switch(collision_type){
	case "player" :
	break;
	case "projectile" :
		if(delta_x == 0 || delta_y == 0){
			delta_x = 0;
			delta_y = 0;
			return true;
		}else{
			return false;
		}
	break;
	}
	
}