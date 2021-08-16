move_dir = 0;
projectile_type = 0;
round_x = false;
round_y = false;
collided = false;

with(obj_player){
	other.projectile_type = projectile_type;
	other.move_dir = look_dir;
}

image_angle = move_dir;
projectile_stats(projectile_type);

sprite_index = proj_sprite;
image_index = 2;
image_speed = 0;

delta_x = 0;
delta_y = 0;
collidable_id = obj_collidable;