/// @description Get Input

right_ = keyboard_check(vk_right);
up_	   = keyboard_check(vk_up);
left_  = keyboard_check(vk_left);
down_  = keyboard_check(vk_down);

action_one_pressed_ = keyboard_check_pressed(ord("X"));
action_two_pressed_ = keyboard_check_pressed(ord("Z"));

pause_pressed = keyboard_check_pressed(vk_enter);