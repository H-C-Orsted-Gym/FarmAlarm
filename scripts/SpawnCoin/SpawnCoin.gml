// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnCoin(){
	var x_placement = (round(random_range(0, 13)) * 64 ) + 96;
	var y_placement = choose(96, 224, 352, 480, 608);
	
	instance_create_depth(x_placement, y_placement, 1, Obj_Coin);
}