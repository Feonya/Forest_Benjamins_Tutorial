initialize_movement_entity(0.5, 1, obj_solid);
initialize_hurtbox_entity();

image_speed	      = 0;
acceleration_     = 0.5;
max_speed_        = 1.5;
direction_facing_ = dir.right;
roll_direction_	  = 0;
roll_speed_	      = 2;

found_item_sprite_ = noone;

alarm[1] = global.one_second;

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
};

enum dir {
	right,
	up,
	left,
	down
};

enum action {
	one,
	two
};

starting_state_ = player.move;
state_			= starting_state_;

action_ = noone;

// Sprite lookup table.

sprite_[player.move, dir.right] = spr_player_run_right;
sprite_[player.move, dir.up]	= spr_player_run_up;
sprite_[player.move, dir.left]  = spr_player_run_right;
sprite_[player.move, dir.down]  = spr_player_run_down;

sprite_[player.sword, dir.right] = spr_player_attack_right;
sprite_[player.sword, dir.up]	 = spr_player_attack_up;
sprite_[player.sword, dir.left]  = spr_player_attack_right;
sprite_[player.sword, dir.down]  = spr_player_attack_down;

sprite_[player.evade, dir.right] = spr_player_roll_right;
sprite_[player.evade, dir.up]	 = spr_player_roll_up;
sprite_[player.evade, dir.left]  = spr_player_roll_right;
sprite_[player.evade, dir.down]  = spr_player_roll_down;

sprite_[player.hit, dir.right] = spr_player_roll_right;
sprite_[player.hit, dir.up]	   = spr_player_roll_up;
sprite_[player.hit, dir.left]  = spr_player_roll_right;
sprite_[player.hit, dir.down]  = spr_player_roll_down;

sprite_[player.bow, dir.right] = spr_player_bow_right;
sprite_[player.bow, dir.up]	   = spr_player_bow_up;
sprite_[player.bow, dir.left]  = spr_player_bow_right;
sprite_[player.bow, dir.down]  = spr_player_bow_down;

sprite_[player.found_item, dir.right] = spr_player_found_item;
sprite_[player.found_item, dir.up]	  = spr_player_found_item;
sprite_[player.found_item, dir.left]  = spr_player_found_item;
sprite_[player.found_item, dir.down]  = spr_player_found_item;

sprite_[player.bomb, dir.right] = spr_player_run_right;
sprite_[player.bomb, dir.up]	= spr_player_run_up;
sprite_[player.bomb, dir.left]  = spr_player_run_right;
sprite_[player.bomb, dir.down]  = spr_player_run_down;