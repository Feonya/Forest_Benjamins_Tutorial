create_animation_effect(spr_explosion, x, y, 1, true);
create_hitbox(spr_bomb_hitbox, x, y - 4, 0, 3, [obj_player, obj_enemy, obj_grass], 2, 12);

audio_play_sound(snd_explosion, 7, false);
