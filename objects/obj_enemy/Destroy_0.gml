if (chance(0.5))
{
	var _item = choose(obj_gem_pickup, obj_heart_pickup);
	instance_create_layer(x, y - 8, "Instances", _item);
}
