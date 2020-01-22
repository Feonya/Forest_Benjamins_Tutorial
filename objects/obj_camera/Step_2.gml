if (!instance_exists(obj_player)) exit;

var _x = obj_player.x - half_width_ - 8;
var _y = obj_player.y - half_height_;

x = lerp(x, _x, .1);
y = lerp(y, _y, .1);

x = round_n(x, camera_scale_viewport_);
y = round_n(y, camera_scale_viewport_);

x = clamp(x, 0, room_width  - width_ );
y = clamp(y, 0, room_height - height_);

camera_set_view_pos(view_camera[0], x, y);