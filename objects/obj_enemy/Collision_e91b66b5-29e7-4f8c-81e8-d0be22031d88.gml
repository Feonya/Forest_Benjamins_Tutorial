if (health_ <= 0) exit;

if (hurtbox_entity_canbe_hurt_by(other))
{
	invincible_ = true;
	health_	   -= other.damage_;
	state_		= enemy.hit;
	alarm[0]	= global.one_second * 0.5;

	create_animation_effect(spr_hit_effect, x, y - 8, 0.4, true);
	set_movement(point_direction(other.x, other.y, x, y), other.knockback_);
}