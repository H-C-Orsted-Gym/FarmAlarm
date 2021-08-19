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