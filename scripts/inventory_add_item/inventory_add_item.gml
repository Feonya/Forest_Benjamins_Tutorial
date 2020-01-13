/// @arg item
var _item = singleton(argument0);

if (array_find_index(_item, global.inventory) == -1)
{
	var _array_size = array_length_1d(global.inventory);
	for (var _i = 0; _i < _array_size; ++_i)
	{
		if (global.inventory[_i] == noone)
		{
			global.inventory[_i] = _item;
			
			return true;
		}
	}
}
else return true;

return false;