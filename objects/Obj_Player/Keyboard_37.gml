/// @description Insert description here
// You can write your code in this editor

if (current_time >= lastTime + walkSpeedMS) {
	if (keyboard_check(vk_up) || keyboard_check(vk_right) || keyboard_check(vk_down)) {
		return;
	} else {
		lastTime = current_time;
		facingDirection = "left";
		image_angle = 90;
		x = x - 64;	
	}	
}