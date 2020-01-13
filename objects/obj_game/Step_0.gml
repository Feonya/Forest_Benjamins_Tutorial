if (paused_)
{
	var array_size_ = array_length_1d(global.inventory);
	
	if (obj_input.right_pressed_)
	{
		item_index_ = min(item_index_ + 1, array_size_ - 1);
		audio_play_sound(snd_menu_move, 1, false);
	}
	
	if (obj_input.left_pressed_)
	{
		item_index_ = max(item_index_ - 1, 0);
		audio_play_sound(snd_menu_move, 1, false);
	}
	
	if (obj_input.action_one_pressed_)
	{
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(snd_menu_select, 3, false);
	}
	
	if (obj_input.action_two_pressed_)
	{
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(snd_menu_select, 3, false);
	}
}

if (obj_input.pause_pressed)
{
	if (paused_)
	{
		paused_ = false;
		if (sprite_exists(paused_sprite_)) sprite_delete(paused_sprite_);
		
		instance_activate_all();
		
		audio_play_sound(snd_unpause, 5, false);
	}
	else
	{
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		
		instance_deactivate_all(true);
		instance_activate_object(obj_input);
		var _array_length = array_length_1d(global.inventory);
		for (var _i = 0; _i < _array_length; ++_i)
		{
			if (global.inventory[_i] != noone) instance_activate_object(global.inventory[_i]);
		}
		
		audio_play_sound(snd_pause, 5, false);
	}
}