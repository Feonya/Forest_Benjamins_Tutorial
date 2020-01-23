if (room == rm_title) exit;

if (global.load)
{
	global.player_start_position = instance_position(global.start_x, global.start_y, obj_start_position);
	global.load = false;
}

if (!instance_exists(obj_player))
{
	instance_create_layer(global.player_start_position.x , global.player_start_position.y, "Instances", obj_player);
}
else
{
	obj_player.x = global.player_start_position.x;
	obj_player.y = global.player_start_position.y;
}