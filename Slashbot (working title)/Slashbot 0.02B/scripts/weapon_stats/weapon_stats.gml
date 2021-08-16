// contains the statistics for all weapons. Returns weapon stats based on input.

// weap_sprite     : weapon sprite
// x_off           :
// y_off           :
// hold_distance   : 
// projectile_type : what type of projectile it fires
// proj_x_off      : projectile origin x offset, relative to weapon position/rotation
// proj_y_off      : projectile origin y offset, relative to weapon position/rotation
// fire_type       : how does the weapon operate (semi-auto, auto, burst, etc.)
// fire_rate       : how many frames between shots
// spread          : amount of spread in degrees
// spread_type     : how spread is determined
// recoil          : amount of visual recoil (directional screenshake) is applied when fired

// x_off, y_off, hold_distance:
				// Think of the weapon's origin as a point on the circumference of a circle.
				// x_off and y_off determine the origin of the circle. (relative to the origin of the player)
				// hold_distance determines the radius of the circe.
				
function weapon_stats(weapon){
	switch(weapon){
		case weapons.testweapon:
			weap_sprite = sp_test_weapon;
			x_off = 5;
			y_off = 0;
			hold_distance = 3;
			projectile_type = projectiles.miniball;
			proj_x_off = 0;
			proj_y_off = -8;
			fire_rate = 10;
			break;
		case weapons.pistol:
			weap_sprite = sp_pistol;
			x_off = 5;
			y_off = 0;
			hold_distance = 7;
			projectile_type = projectiles.miniball;
			proj_x_off = 0;
			proj_y_off = 0;
			fire_rate = 10;
			break;
		case weapons.rifle:
			weap_sprite = sp_rifle;
			x_off = 5;
			y_off = 0;
			hold_distance = 4;
			break;
		case weapons.revolver:
			weap_sprite = sp_revolver
			x_off = 5;
			y_off = 0;
			hold_distance = 7;
			break;
	}
}