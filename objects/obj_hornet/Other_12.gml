/// @description Attack State

if (!instance_exists(obj_player))
{
	state_ = hornet.move;
	exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);

if (speed_ == 0)
{
	alarm[2] = global.one_second * random_range(2, 4);
	
	var _direction = point_direction(x, y, obj_player.x, obj_player.y) + random_range(-30, 30);
	var _stinger   = instance_create_layer(x, y, "Instances", obj_stinger);
	_stinger.direction   = _direction;
	_stinger.image_angle = _direction;
	_stinger.speed       = 2;
	
	audio_play_sound(snd_stinger, 1, false);
	
	state_ = hornet.move;
}