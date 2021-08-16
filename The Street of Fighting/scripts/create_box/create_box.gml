// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_box(origin, width, height, type, life)
{
	var box;
	switch (type){	
		case "hitbox":
			box = layer_add_instance("Boxes", obj_hitbox);
			with(box){
				
			}
		break;
		case "hurtbox":
			
		break;
	}
	
	
	
}