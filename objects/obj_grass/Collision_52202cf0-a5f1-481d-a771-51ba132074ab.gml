if (hurtbox_entity_canbe_hurt_by(other))
{
	create_animation_effect(spr_grass_effect, x, y, random_range(.4, .7), true);
	instance_destroy();
}