/// @description Insert description here
// You can write your code in this editor

if (Obj_Player.playerHealth == 3) {
	self.image_index = 0;
} else if (Obj_Player.playerHealth == 2) {
	self.image_index = 1;
} else if (Obj_Player.playerHealth == 1) {
	self.image_index = 2;
} else if (Obj_Player.playerHealth == 0) {
	self.image_index = 3;
	
	// Goto end screen
	room_goto(DeadRoom)
	
	audio_play_sound(Snd_Dead, 10, false);
}