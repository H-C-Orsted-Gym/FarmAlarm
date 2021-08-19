/// @description Insert description here
// You can write your code in this editor

if (current_time >= lastTimeShot + shootSpeedMS) {
	var inst = instance_create_depth(Obj_Player.x, Obj_Player.y, 1, Obj_Bullet);
	audio_play_sound(Snd_Gunshot, 10, false); 
	
	with (inst)
	{
		image_angle = Obj_Player.image_angle;
		speed = Obj_Bullet.shootSpeed ;
		direction = Obj_Player.image_angle;
	}
	
	lastTimeShot = current_time;
}