
function find_and_move_to_attractor() {
	current_attractor = find_highest_attractor()

	if (current_attractor != noone) {
		//print("Attractors in sight")
	
		if (point_distance(x, y, current_attractor.x, current_attractor.y) <= speed ) {
			x = current_attractor.x;
			y = current_attractor.y;
			speed = 0;
		} else {
			move_towards_point(current_attractor.x, current_attractor.y, move_speed);
		
			if (current_attractor.object_index != obj_attractable_parent) {
				if (global.game_frame mod  15 == 0) {
					effect_create_above(ef_spark, current_attractor.x + 10, current_attractor.y - 10, 10, c_white);
				}
			}
		}
	} else {
		//print("Nothing in sight")
		speed = 0;
	}
}



if (current_path == noone) {
	//print("Not on path")
	find_and_move_to_attractor();
} else {
	if (path_position == 1) {
		sprite_index = spr_player_idle;
    }
}
