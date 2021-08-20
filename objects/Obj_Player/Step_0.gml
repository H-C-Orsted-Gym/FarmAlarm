/// @description Joystick controls
// You can write your code in this editor

if (gamepad_axis_value(4, gp_axislh) > 0.5){
    MoveRight()
} else if (gamepad_axis_value(4, gp_axislh) < -0.5){
    MoveLeft()
}

if (gamepad_axis_value(4, gp_axislv) > 0.5){
    MoveDown()
} else if (gamepad_axis_value(4, gp_axislv) < -0.5){
    MoveUp()
}

if (gamepad_button_check_pressed(4, gp_face4)) {
    if (current_time >= lastTimeShot + shootSpeedMS) {
		var inst = instance_create_depth(Obj_Player.x, Obj_Player.y, 1, Obj_Bullet);
		with (inst)
		{
			image_angle = Obj_Player.image_angle;
			speed = Obj_Bullet.shootSpeed ;
			direction = Obj_Player.image_angle;
		}
	
		lastTimeShot = current_time;
	}
}