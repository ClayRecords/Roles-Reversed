if (point_distance(x, y, obj_dude.x, obj_dude.y) < obj_dude.move_speed) {
	// Actually in middle of coin

	instance_destroy();

	effect_create_above(7, x + 0, y + 0, 0, $FF00AAFF & $ffffff);
}