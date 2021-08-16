// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_weapons(){
	
	// checks if 
	if(!instance_exists(obj_player_weapon)){
		weapon = weapons.rifle;
		
		weap_sprite = 0;
		weapon_stats(weapon);
		object_set_sprite(obj_player_weapon, weap_sprite);
		instanceid = instance_create_layer(x, y, "AbovePlayer", obj_player_weapon);
		
	}
	if(instance_exists(obj_player_weapon)){
		var xoff, yoff;
		with(obj_player_weapon){
			xoff = lengthdir_x(other.hold_distance, other.look_dir);
			yoff = lengthdir_y(other.hold_distance, other.look_dir);
			
			x = other.x + other.x_move + xoff;
			y = other.y + other.y_move + yoff + 4;
			
			image_angle = other.look_dir;
			
			if(other.facing_direction == "right"){
				image_yscale = 1;
				x = x - 5;
			}else{
				image_yscale = -1;
				x = x + 5;
			}
			
			if((image_angle > 0) && (image_angle < 180)){
				layer_add_instance("BehindPlayer", other.instanceid);
			}else{
				layer_add_instance("AbovePlayer", other.instanceid);
			}
			
		}
	}
}