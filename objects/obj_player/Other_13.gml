/// @description Bomb State

instance_create_layer(x, y, "Instances", obj_bomb);

audio_play_sound(snd_set_bomb, 5, false);

state_ = player.move;