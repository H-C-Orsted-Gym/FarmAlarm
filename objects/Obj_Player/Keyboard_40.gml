/// @description Insert description here
// You can write your code in this editor

if (current_time >= lastTimeWalked + walkSpeedMS) {
	if (place_free(x, y + 64)) {
		if (keyboard_check(vk_up) || keyboard_check(vk_right) || keyboard_check(vk_left)) {
			return;
		} else {
			lastTimeWalked = current_time;
			image_angle = 270;
			y = y + 64;	
		}
	}
}