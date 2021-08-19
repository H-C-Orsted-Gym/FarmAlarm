/// @description Insert description here
// You can write your code in this editor

if (current_time > Obj_BirdControl.lastBirdTime + Obj_BirdControl.timeBetweenBirdsMS) {
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
				
					
					ds_list_set(birdsList, birddy.listId, undefined);
					instance_destroy(birddy.id);
				}
			} else {
				birddy.placementTime = current_time;
				birddy.image_speed = 0;
				birddy.image_index = 1;
				birddy.speed = 0;
			}
		}
	}
}