if (global.player_start_position == noone)
{
	global.player_start_position = inst_game_start_position;
	instance_create_layer(global.player_start_position.x , global.player_start_position.y, "Instances", obj_player);
}
else
{
	obj_player.x = global.player_start_position.x;
	obj_player.y = global.player_start_position.y;
}