if (hurtbox_entity_canbe_hurt_by(other))
{
	create_animation_effect(spr_bush_effect, x, y, 1, true);
	
	add_to_destroyed_list(id);
	
	instance_destroy(wall_);
	instance_destroy();
}