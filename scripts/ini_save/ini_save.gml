/// @arg file name
var _file_name = argument0;

ini_open(_file_name);

ini_write_string("Level", "Room", room_get_name(room));
ini_write_real("Level", "Start x", global.player_start_position.x);
ini_write_real("Level", "Start y", global.player_start_position.y);

ini_close();