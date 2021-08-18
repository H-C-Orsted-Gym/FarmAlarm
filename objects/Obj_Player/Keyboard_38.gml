/// @description Insert description here
// You can write your code in this editor

if (current_time >= lastTimeWalked + walkSpeedMS) {
	if (place_free(x, y - 64)) {
		if (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_down)) {
			return;
		} else {
			lastTimeWalked = current_time;
			image_angle = 90;
			y = y - 64;	
		}	
	}
}