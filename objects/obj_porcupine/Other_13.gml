/// @description Attack State

image_speed = 0.35;

if (animation_hit_frame(1))
{
	create_hitbox(spr_porcupine_hitbox, x, y - 8, 0, 1, [obj_player], 1, 4);
	
	audio_play_sound(snd_porcupine_attack, 5, false);
}

if (animation_hit_frame(image_number - 1))
{
	state_		 = porcupine.idle;
	sprite_index = spr_porcupine_run;
	alarm[1]	 = 2 * global.one_second;
}