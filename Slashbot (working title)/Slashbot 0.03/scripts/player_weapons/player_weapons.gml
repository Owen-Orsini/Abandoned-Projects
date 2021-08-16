// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_weapons(){
	
	#region Type // determines weapon type
	weapon = weapons.pistol;
	
	#endregion
	#region Create // creates weapon if it does not exist
	
	// checks if weapon exists. If not, creates weapon
	if(!instance_exists(obj_player_weapon)){
		// calls weapon stats
		weapon_stats(weapon);
		// calls projectile stats, based on weapon stats
		projectile_stats(projectile_type);
		// sets weapon object to correct sprite
		object_set_sprite(obj_player_weapon, weap_sprite);
		// creates weapon instance, stores instance id
		instanceid = instance_create_layer(x, y, "AbovePlayer", obj_player_weapon);
	}
	#endregion
	#region Movement // moves weapon to player
	if(instance_exists(obj_player_weapon)){
		var xoff, yoff;
		with(obj_player_weapon){
			
			
			
			// determines weapon offset in the direction of aim. 
			xoff = lengthdir_x(other.hold_distance, other.look_dir);
			yoff = lengthdir_y(other.hold_distance, other.look_dir);
			
			// moves weapon to player, and applies directional offset
			x = other.x + other.x_move + xoff;
			y = other.y + other.y_move + yoff + 4;
			
			// points weapon in the direction of aim
			image_angle = other.look_dir;
			
			// flips weapon based on where the player is facing. applies x offset.
			if(other.facing_direction == "right"){
				image_yscale = 1;
				x = x - other.x_off;
			}else{
				image_yscale = -1;
				x = x + other.x_off;
			}
			
			// applies y offset
			
			
			if((image_angle > 0) && (image_angle < 180)){
				layer_add_instance("BehindPlayer", other.instanceid);
			}else{
				layer_add_instance("AbovePlayer", other.instanceid);
			}
			
		}
	}
	#endregion
	#region Firing // handles weapon firing
	
	// if cooldown is zero and fire is input, projectile is created and cooldown is reset
	if(weap_cooldown == 0 && fire == true){
		instance_create_layer(x, y, "AbovePlayer", obj_player_projectile);
		weap_cooldown = fire_rate;
	}
	
	// is cooldown is not zero, reduce it by 1
	if(!weap_cooldown == 0){
		weap_cooldown = weap_cooldown - 1;
	}
	
	
	#endregion
}