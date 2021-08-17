/// @description Insert description here
// You can write your code in this editor

if (current_time >= lastTimeWalked + walkSpeedMS) {
	if (place_free(x + 48, y)) {
		if (keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_down)) {
			return;
		} else {
			lastTimeWalked = current_time;
			image_angle = 0;
			x = x + 64;
		}
	}
}