// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function collision(){
	
round_x = false;
round_y = false;


#region X collision
	if(x_move != 0){
		var xcolliding, xspeed_pos;
	
		if(x_move > 0){
			xspeed_pos = true;
		}else{
			xspeed_pos = false;
		}
	
	
		if(place_meeting(x+x_move, y, obj_collidable)){
			round_x = true;
			xcolliding = true;
			while(xcolliding == true){
			
				if(xspeed_pos == true){
					x_move = round(x_move) - 1;
				}else{		
					x_move = round(x_move) + 1;
				}
			
				if(!place_meeting(x + x_move, y, obj_collidable)){
					break;
				}
			
			}
		
		}
	}
	#endregion
	#region Y collision
	if(y_move != 0){
		var ycolliding, yspeed_pos;
	
		if(y_move > 0){
			yspeed_pos = true;
		}else{
			yspeed_pos = false;
		}
	
	
		if(place_meeting(x, y + y_move, obj_collidable)){
			round_y = true;
			ycolliding = true;
			while(ycolliding == true){
			
				if(yspeed_pos == true){
					y_move = round(y_move) - 1;
				}else{		
					y_move = round(y_move) + 1;
				}
			
				if(!place_meeting(x, y + y_move, obj_collidable)){
					break;
				}
			
			}
		
		}
	}
	#endregion

}