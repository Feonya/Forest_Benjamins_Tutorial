if (instance_exists(inst_game_start_position))
{
	if (!instance_exists(obj_player))
	{
		instance_create_layer(global.player_start_position.x , global.player_start_position.y, "Instances", obj_player);
	}
	else
	{
		obj_player.x = global.player_start_position.x;
		obj_player.y = global.player_start_position.y;
	}
}