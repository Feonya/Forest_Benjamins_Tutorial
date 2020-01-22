/// @arg input
/// @arg item
var _input = argument0;
var _item  = argument1;

if (_input == true)
{
	if (instance_exists(_item) && global.player_stamina >= _item.cost_)
	{
		image_index = 0;
		image_speed = 0.8;
		state_      = _item.action_;
		
		alarm[1]              = global.one_second;
		global.player_stamina = max(0, global.player_stamina - _item.cost_);
	}
}