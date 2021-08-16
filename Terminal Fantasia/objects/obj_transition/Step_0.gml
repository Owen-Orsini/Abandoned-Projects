/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) && (place_meeting(x, y, obj_player)){
	
	if((target_x != -1) && (target_y != -1)){
		global.target_x = target_x;
		global.target_y = target_y;
		global.target_room = target_room;
		
		room_goto(global.target_room);
		instance_destroy();
	}
	
	
}