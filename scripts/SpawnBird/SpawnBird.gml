// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnBird() {
	var x_spawnPoint = round(random_range(0, room_width));
	var y_spawnPoint = 0;
	var x_placement = (round(random_range(0, 13)) * 64 ) + 96;
	var y_placement = choose(160, 288, 416, 544, 672);
	
	//if (ds_list_find_value(birdsList, string(x_placement) + "," + string(y_placement) != undefined)) {
		var inst = instance_create_depth(x_spawnPoint, y_spawnPoint, -2, Obj_Bird);
	
		with (inst)
		{
			move_towards_point(x_placement, y_placement, 4);
			
			if (x_spawnPoint > x_placement) {
				inst.image_xscale = -1;
			}
			
			inst.target_x = x_placement;
			inst.target_y = y_placement;
			
		 	ds_list_add(birdsList, inst);
			
			inst.listId = ds_list_find_index(birdsList, inst);
			
			/*if (inst.listId == 100) {
				show_debug_message("Spawn RATE (100 Birds) : " + string(current_time));	
			}*/
			
			//show_debug_message(string(inst.listId));
	
			// place.empty
			//ds_list_add(Obj_Bird.birdPlaces, string(x_placement) + "," + string(y_placement));
		}
	//}
}