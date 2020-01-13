/// @arg input
/// @arg item
var _input = argument0;
var _item  = argument1;

if (_input == true)
{
	if (instance_exists(_item))
	{
		image_index = 0;
		image_speed = 0.8;
		state_      = _item.action_;	
	}
}