/// @description Insert description here
// You can write your code in this editor

if (current_time >= lastTime + walkSpeedMS) {
	if (keyboard_check(vk_up) || keyboard_check(vk_right) || keyboard_check(vk_left)) {
		return;
	} else {
		lastTime = current_time;
		image_angle = 270;
		y = y + 64;	
	}	
}