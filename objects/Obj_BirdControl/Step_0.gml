/// @description Insert description here
// You can write your code in this editor

if (current_time > (Obj_BirdControl.lastBirdTime + Obj_BirdControl.timeBetweenBirdsMS)) {
	SpawnBird();
	Obj_BirdControl.lastBirdTime = current_time;
}

for (i = 0; i < ds_list_size(birdsList); i++) {
	var birddy = ds_list_find_value(birdsList, i);
	
	//show_debug_message(birddy.target_x);
	//show_debug_message(birddy.target_y);
	
	if (birddy != undefined) {
		if (point_distance(birddy.target_x, birddy.target_y, birddy.x, birddy.y) < 2) {
			if (birddy.placementTime != 0) {
				if (birddy.placementTime + Obj_Bird.eatTime < current_time) {
					// Remove health
					Obj_Player.playerHealth--;
				
					// Play Effect
					effect_create_above(ef_firework, birddy.x, birddy.y, 0.1, c_green)
					
					 
					ds_list_set(birdsList, birddy.listId, undefined);
					instance_destroy(birddy.id);
				}
				
				if (((current_time - birddy.placementTime) / 1000) > 0 && ((current_time - birddy.placementTime) / 1000) < 2) {
					birddy.image_index = 1;
				} else if (((current_time - birddy.placementTime) / 1000) > 1 && ((current_time - birddy.placementTime) / 1000) < 3) {
					birddy.image_index = 2;
				} else if (((current_time - birddy.placementTime) / 1000) > 2 && ((current_time - birddy.placementTime) / 1000) < 4) {
					birddy.image_index = 3;
				} else if (((current_time - birddy.placementTime) / 1000) > 3 && ((current_time - birddy.placementTime) / 1000) < 5) {
					birddy.image_index = 4;
				} else if (((current_time - birddy.placementTime) / 1000) > 4 && ((current_time - birddy.placementTime) / 1000) < 6) {
					birddy.image_index = 5;
				} else if (((current_time - birddy.placementTime) / 1000) > 5 && ((current_time - birddy.placementTime) / 1000) < 7) {
					birddy.image_index = 6;
				} else if (((current_time - birddy.placementTime) / 1000) > 6 && ((current_time - birddy.placementTime) / 1000) < 8) {
					birddy.image_index = 7;
				} else if (((current_time - birddy.placementTime) / 1000) > 7 && ((current_time - birddy.placementTime) / 1000) < 9) {
					birddy.image_index = 8;
				} else if (((current_time - birddy.placementTime) / 1000) > 8 && ((current_time - birddy.placementTime) / 1000) < 10) {
					birddy.image_index = 9;
				} else if (((current_time - birddy.placementTime) / 1000) > 9 && ((current_time - birddy.placementTime) / 1000) < 11) {
					birddy.image_index = 10;
				} else if (((current_time - birddy.placementTime) / 1000) > 10 && ((current_time - birddy.placementTime) / 1000) < 12) {
					birddy.image_index = 11;
				} else if (((current_time - birddy.placementTime) / 1000) > 11 && ((current_time - birddy.placementTime) / 1000) < 13) {
					birddy.image_index = 12;
				} else if (((current_time - birddy.placementTime) / 1000) > 12 && ((current_time - birddy.placementTime) / 1000) < 14) {
					birddy.image_index = 13;
				} else if (((current_time - birddy.placementTime) / 1000) > 13 && ((current_time - birddy.placementTime) / 1000) < 15) {
					birddy.image_index = 14;
				} else if (((current_time - birddy.placementTime) / 1000) > 14 && ((current_time - birddy.placementTime) / 1000) < 16) {
					birddy.image_index = 15;
				} else {
					birddy.image_index = 15;
				}
			} else {
				birddy.placementTime = current_time;
				birddy.sprite_index = Spr_BirdTime;
				birddy.image_speed = 0;
				birddy.speed = 0;
			}
		}
	}
}