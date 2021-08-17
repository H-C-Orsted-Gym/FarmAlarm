/// @description Insert description here
// You can write your code in this editor

var inst = instance_create_depth(Obj_Player.x, Obj_Player.y, 1, Obj_Bullet);
with (inst)
{
	image_angle = Obj_Player.image_angle;
	speed = Obj_Bullet.shoot_speed;
	direction = Obj_Player.image_angle;
}