
function find_and_move_to_attractor() {
	var _current_attractor = find_highest_attractor()

	if (_current_attractor != noone) {
		//print("Attractors in sight")
	
		if (point_distance(x, y, _current_attractor.x, _current_attractor.y) <= speed ) {
			x = _current_attractor.x;
			y = _current_attractor.y;
			speed = 0;
		} else {
			move_towards_point(_current_attractor.x, _current_attractor.y, move_speed);
		
			if (global.game_frame mod  15 == 0) {
				effect_create_above(ef_spark, _current_attractor.x + 10, _current_attractor.y - 10, 10, c_white);
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
