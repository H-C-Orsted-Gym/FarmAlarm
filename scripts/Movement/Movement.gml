// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveLeft(){
	if (current_time >= lastTimeWalked + walkSpeedMS) {
		if (place_free(x - 64, y)) {
			if (keyboard_check(vk_up) || keyboard_check(vk_right) || keyboard_check(vk_down)) {
				return;
			} else {
				Obj_Player.lastTimeWalked = current_time;
				Obj_Player.image_angle = 180;
				Obj_Player.x = Obj_Player.x - 64;
			}
		}
	}
}

function MoveRight(){
	if (current_time >= lastTimeWalked + walkSpeedMS) {
		if (place_free(x + 64, y)) {
			if (keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_down)) {
				return;
			} else {
				Obj_Player.lastTimeWalked = current_time;
				Obj_Player.image_angle = 0;
				Obj_Player.x = Obj_Player.x + 64;
			}
		}
	}
}

function MoveUp(){
	if (current_time >= lastTimeWalked + walkSpeedMS) {
		if (place_free(x, y - 64)) {
			if (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_down)) {
				return;
			} else {
				Obj_Player.lastTimeWalked = current_time;
				Obj_Player.image_angle = 90;
				Obj_Player.y = Obj_Player.y - 64;	
			}	
		}
	}
}

function MoveDown(){
	if (current_time >= lastTimeWalked + walkSpeedMS) {
		if (place_free(x, y + 64)) {
			if (keyboard_check(vk_up) || keyboard_check(vk_right) || keyboard_check(vk_left)) {
				return;
			} else {
				Obj_Player.lastTimeWalked = current_time;
				Obj_Player.image_angle = 270;
				Obj_Player.y = Obj_Player.y + 64;
			}
		}
	}
}