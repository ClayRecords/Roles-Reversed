
function get_close_to_collision(obj) {
	// Reset player back to previous location
	obj.x = obj.xprevious;
	obj.y = obj.yprevious;

	// Split the direction into x and y components for 1 unit
	var speed_x_1 = lengthdir_x(1, obj.direction);
	var speed_y_1 = lengthdir_y(1, obj.direction);

	var speed_moved = 0;
	while (speed_moved < obj.speed) {
		if (!instance_place(obj.x + speed_x_1, obj.y + speed_y_1, obj_collision_parent)) {	// Try to move 1 unit at a time in a straight line until there is a collision
			obj.x += speed_x_1;
			obj.y += speed_y_1;
		} else if (speed_x_1 != 0 && !instance_place(obj.x + speed_x_1, obj.y, obj_collision_parent)) {	// If you can't move on both the x and y axes, try just moving horizontally
			obj.x += speed_x_1;
		} else if (speed_y_1 != 0 && !instance_place(obj.x, obj.y + speed_y_1, obj_collision_parent)) {	// Maybe vertically?
			obj.y += speed_y_1;
		} else {	// If you can't move at all, get out
			break;
		}
		speed_moved += 1;
	}
}