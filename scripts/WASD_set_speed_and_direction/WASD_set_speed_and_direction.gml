// Convert key presses to signs representing up vs down and left vs right.
function get_axis_direction_sign_from_keys(min_key, pos_key) {
	var axis_sign = 0;
	if (keyboard_check(min_key)) { axis_sign -= 1; }
	if (keyboard_check(pos_key)) { axis_sign += 1; }
	return axis_sign
}

function WASD_set_speed_and_direction(obj, move_speed) {
	var direction_vertical_sign = get_axis_direction_sign_from_keys(ord("W"), ord("S"));
	var direction_horizontal_sign = get_axis_direction_sign_from_keys(ord("A"), ord("D"));

	// If key presses result in movement
	if (direction_vertical_sign != 0 || direction_horizontal_sign != 0) {
		obj.speed = move_speed; // Let's go!
	
		// Convert signs to actual angles
		var vertical_angle = direction_vertical_sign == 1 ? 270 : 90; // 90° being up, 270° being down
		var horizontal_angle = direction_horizontal_sign == 1 ? 0 : 180; // 180° being left, 0° being right
	
		// Apply angles to direction
		if (direction_vertical_sign != 0 && direction_horizontal_sign != 0) { // Go at an angle
			obj.direction = horizontal_angle + (angle_difference(vertical_angle, horizontal_angle) / 2);
		} else { // Go whichever direction isn't 0
			obj.direction = direction_vertical_sign == 0 ? horizontal_angle : vertical_angle;
		}
	}
}