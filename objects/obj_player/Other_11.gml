/// @description Sword State

if (animation_hit_frame(1))
{
	var _hitbox = create_hitbox(
		spr_sword_hitbox, x, y, direction_facing_ * 90, 3,
		[obj_enemy, obj_grass, obj_bush],
		1, 8
	);
	
	switch (direction_facing_)
	{
		case dir.up:
			_hitbox.y -= 10;
			break;
		case dir.down:
			_hitbox.y -= 3;
			break;
		case dir.left:
			_hitbox.x -= 5;
			_hitbox.y -= 8;
			break;
		case dir.right:
			_hitbox.x += 5;
			_hitbox.y -= 8;
			break;
	}
	
	audio_play_sound(snd_swipe, 8, false);
}

if (animation_hit_frame(image_number - 1)) state_ = player.move;