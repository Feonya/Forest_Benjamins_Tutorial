/// @arg input
/// @arg item
/// @arg action
var _input  = argument0;
var _item   = argument1;
var _action = argument2;

if (_input == true)
{
	var _target_x = x + lengthdir_x(8, direction_facing_ * 90);
	var _target_y = y + lengthdir_y(8, direction_facing_ * 90);
	var _interactable = instance_place(_target_x, _target_y, obj_interactable);
	if (_interactable && _interactable.activatable_)
	{
		with (_interactable) event_user(interactable.activate);
	}
	else if (instance_exists(_item) && global.player_stamina >= _item.cost_)
	{
		image_index = 0;
		image_speed = 0.8;
		action_     = _action;
		state_      = _item.action_;
		
		alarm[1]              = global.one_second;
		global.player_stamina = max(0, global.player_stamina - _item.cost_);
	}
}