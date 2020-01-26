event_inherited();

if (!instance_exists(obj_player)) exit;

image_index  = 0;
activatable_ = false;
set_player_found_item(spr_sword_item);
inventory_add_item(obj_sword_item);
add_to_destroyed_list(id);
