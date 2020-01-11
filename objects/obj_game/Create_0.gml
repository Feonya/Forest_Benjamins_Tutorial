global.one_second = game_get_speed(gamespeed_fps);

instance_create_layer(0, 0, "Instances", obj_input);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890,!':-+";
global.font = font_add_sprite_ext(spr_font, _font_string, true, 1);
draw_set_font(global.font);

global.player_max_health     = 3;
global.player_health	     = global.player_max_health;
global.player_max_stamina    = 2;
global.player_stamina	     = global.player_max_stamina;
global.player_gems		     = 0;
global.player_start_position = inst_game_start_position;

audio_play_sound(snd_music, 10, true);

view_width_  = camera_get_view_width(view_camera[0]);
view_height_ = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_width_, view_height_);