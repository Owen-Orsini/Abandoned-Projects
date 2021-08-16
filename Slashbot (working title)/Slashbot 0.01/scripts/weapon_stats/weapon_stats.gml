// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_stats(weapon){
	
	
	
	switch(weapon){
		case weapons.testweapon:
			weap_sprite = sp_test_weapon;
			hold_distance = 3;
			break;
		case weapons.pistol:
			weap_sprite = sp_pistol;
			hold_distance = 5;
			break;
		case weapons.rifle:
			weap_sprite = sp_rifle;
			hold_distance = 4;
			break;
	}
}