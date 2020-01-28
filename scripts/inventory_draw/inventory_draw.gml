/// @arg x
/// @arg y
var _x = argument0;
var _y = argument1;

if (!obj_game.paused_) exit;

var _array_length = array_length_1d(global.inventory);
for (var _i = 0; _i < _array_length; ++_i)
{
	var _box_x = _x + _i * 32;
	var _box_y = _y;
	draw_sprite(spr_inventory_box, 0, _box_x, _box_y);
	
	var _item = global.inventory[_i];
	if (instance_exists(_item))
	{
		draw_sprite(_item.sprite_, 0, _box_x + 16, _box_y + 16);
		if (_item.show_amount_) draw_text(_box_x + 18, _box_y + 5, _item.amount_);
	}
	
	
	if (_i == item_index_)
	{
		draw_sprite(spr_inventory_cursor, image_index / 8, _box_x, _box_y);
		if (instance_exists(_item))
		{
			draw_text(_x + 4, _y + 36, _item.description_);
			var _description_height = string_height(_item.description_);
			draw_text(_x + 4, _y + 48 + _description_height, "Stamina cost: " + string(_item.cost_));
		}
	}
}

draw_sprite(spr_inventory_box, 0,  4, 4);
draw_sprite(spr_inventory_box, 0, 36, 4);

var _item = global.item[0];
if (instance_exists(_item))
{
	var _box_x = 4;
	var _box_y = 4;
	draw_sprite(_item.sprite_, 0, _box_x + 16, _box_y + 16);
	if (_item.show_amount_) draw_text(_box_x + 18, _box_y + 5, _item.amount_);
}

var _item = global.item[1];
if (instance_exists(_item))
{
	var _box_x = 36;
	var _box_y = 4;
	draw_sprite(_item.sprite_, 0, _box_x + 16, _box_y + 16);
	if (_item.show_amount_) draw_text(_box_x + 18, _box_y + 5, _item.amount_);
}