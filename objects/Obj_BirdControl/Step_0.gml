/// @description Insert description here
// You can write your code in this editor

for (i = 0; i < ds_list_size(birdsList); i++) {
	var birddy = ds_list_find_value(birdsList, i);
	
	//show_debug_message(birddy.target_x);
	//show_debug_message(birddy.target_y);
	
	if (point_distance(birddy.target_x, birddy.target_y, birddy.x, birddy.y) < 2) {
		birddy.speed = 0;
	}
}