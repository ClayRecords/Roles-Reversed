draw_self();
draw_circle(x, y, vision_range, true);


for (var i = 0; i < ds_list_size(all_nearby_objects); i++) {
    var _obj = ds_list_find_value(all_nearby_objects, i);
	if (instance_exists(_obj)) {
		draw_line(x, y, _obj.x, _obj.y);
	}
}

for (var i = 0; i < ds_list_size(starting_path_points); i++) {
    var _point = ds_list_find_value(starting_path_points, i);
	//draw_circle(_point[0], _point[1], 5, false);
}