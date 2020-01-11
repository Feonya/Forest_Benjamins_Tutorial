if (chance(0.1))
{
	var _item = choose(obj_gem_pickup, obj_heart_pickup);
	instance_create_layer(x + 8, y + 8, "Instances", _item);
}
