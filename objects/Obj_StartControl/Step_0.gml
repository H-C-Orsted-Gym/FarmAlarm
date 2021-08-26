/// @description Insert description here
// You can write your code in this editor

if (gamepad_button_check_pressed(4, gp_face3)) {
    global.startTime = current_time;
	room_goto(MainGame)
}