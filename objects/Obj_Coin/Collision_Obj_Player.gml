/// @description Insert description here
// You can write your code in this editor

Obj_Player.playerScore += 50;
global.Score += 50;
audio_play_sound(Snd_Coin, 10, false); 
instance_destroy(self);