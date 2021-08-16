/// @description Insert description here
// You can write your code in this editor

//declarations
global.init = false; 
global.game_paused = true;
global.player_exists = false;

global.target_room = -1;
global.target_x = -1;
global.target_y = -1;


//right : 1, down : 2, left : 3, up : 4
global.default_spawn_dir = -1;

first_room = rm_test_1;

//initialization
// TEMPORARY TEMPORARY TEMPORARY 

global.init = true;
if(global.init == true){
	room_goto(first_room);
}
global.game_paused = false;