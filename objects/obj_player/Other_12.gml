/// @description Evade State

set_movement(roll_direction_, roll_speed_);
move_movement_entity(false);

if (animation_hit_frame(0)) audio_play_sound(snd_evade, 5, false);

if (animation_hit_frame(image_number - 1)) state_ = player.move;