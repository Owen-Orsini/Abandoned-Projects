// Declare variables and such
function player_create(){
	
	//player movement speed
	spd = 3;

	//direction of change in position
	dir = 0;
	
	//directional inputs
	xinput = 0;
	yinput = 0;
	
	//separate X and Y components of movement	
	x_move = 0;
	y_move = 0;
	
	//rounds X and Y coordinates if a collision is detected to make math easier
	round_x = false;
	round_y = false;
		
	up = 0;
	down = 0;
	left = 0;
	right = 0;
	
	look_dir = 0;
	
	facing_direction = "right";
}