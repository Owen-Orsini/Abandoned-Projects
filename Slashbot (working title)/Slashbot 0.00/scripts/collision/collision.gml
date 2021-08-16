// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function collision(){
	
	#region X collision
	if(x_move != 0){
		var xcolliding, xspeed_pos;
	
		if(x_move > 0){
			xspeed_pos = true;
		}else{
			xspeed_pos = false;
		}
	
	
		if(place_meeting(x+x_move, y, obj_collidable)){
			xcolliding = true;
			while(xcolliding == true){
			
				if(xspeed_pos == true){
					x_move = x_move - 1;
				}else{		
					x_move = x_move + 1;
				}
			
				if(!place_meeting(x + x_move, y, obj_collidable)){
					break;
				}
			
			}
		
		}
	}
	#endregion
	#region Y collision
	if(yspeed != 0){
		var ycolliding, yspeed_pos;
	
		if(yspeed > 0){
			yspeed_pos = true;
		}else{
			yspeed_pos = false;
		}
	
	
		if(place_meeting(x, y + yspeed, obj_collidable)){
			ycolliding = true;
			while(ycolliding == true){
			
				if(yspeed_pos == true){
					yspeed = yspeed - 1;
				}else{
					yspeed = yspeed + 1;
				}
			
				if(!place_meeting(x, y + yspeed, obj_collidable)){
					break;
				}
			
			}
		
		}
	}
	#endregion

}