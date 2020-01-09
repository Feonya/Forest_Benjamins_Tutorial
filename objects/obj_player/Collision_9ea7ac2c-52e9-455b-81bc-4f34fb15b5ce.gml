if (hurtbox_entity_canbe_hurt_by(other))
{
	invincible_ = true;
	alarm[0] = global.one_second;
	global.player_health -= other.damage_;
	set_movement(point_direction(other.x, other.y, x, y), other.knockback_);
	state_ = player.hit;
}