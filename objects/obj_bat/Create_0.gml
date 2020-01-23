event_inherited();
initialize_movement_entity(.25, .5, obj_solid);

enum bat {
	hit,
	move,
	attack
};

starting_state_ = bat.move;
state_			= starting_state_;

range_ = 64;

image_index  = 0;
image_xscale = choose(1, -1);
image_speed  = .5;

alarm[1] = random_range(0, 1) * global.one_second;