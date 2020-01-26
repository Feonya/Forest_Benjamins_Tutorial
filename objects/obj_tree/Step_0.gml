var _at_back = collision_rectangle(x, y - 24, x + 16, y, obj_player, false, true);
if (_at_back != noone) image_alpha = .4;
else                   image_alpha = 1;