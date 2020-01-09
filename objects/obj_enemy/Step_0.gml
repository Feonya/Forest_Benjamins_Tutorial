depth = -y;

if (health_ <= 0 && state_ != enemy.hit)
{
	create_animation_effect(spr_death_effect, x, y, random_range(.4, .6), true);
	instance_destroy();
}

if (state_ != noone) event_user(state_);
