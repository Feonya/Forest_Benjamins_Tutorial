initialize_hurtbox_entity();

depth = -bbox_bottom;

wall_ = instance_create_layer(x, y, "Instances", obj_solid);

if (is_in_destroyed_list(id))
{
	instance_destroy(wall_);
	instance_destroy();
}