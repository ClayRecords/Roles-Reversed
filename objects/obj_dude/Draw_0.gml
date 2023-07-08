draw_self();
draw_circle(x, y, vision_range, true);


for (var i = 0; i < ds_list_size(all_nearby_objects); i++) {
    var _obj = ds_list_find_value(all_nearby_objects, i);
	if (instance_exists(_obj)) {
		draw_line(x, y, _obj.x, _obj.y);
	}
}



function draw_dude_path() {
	for (var i = 0; i < ds_list_size(starting_path_torches); i++) {
	    var _torch = ds_list_find_value(starting_path_torches, i);
		draw_circle(_torch.x, _torch.y, 5, false);
	}
	draw_dotted_lines_between_objects(starting_path_torches);
}

/// @function draw_dotted_lines_between_objects(_list)
/// @param {ds_list} _list The DS list containing the objects.
/// @description Draws lines between each object in the list.
function draw_dotted_lines_between_objects(_list) {
	var _size = ds_list_size(_list);
	if (_size < 2) return;  // Can't draw lines if fewer than 2 objects

	for (var i = 0; i < _size - 1; i++) {
	    var _obj1 = ds_list_find_value(_list, i);
	    var _obj2 = ds_list_find_value(_list, i + 1);

	    draw_dotted_line(_obj1.x, _obj1.y, _obj2.x, _obj2.y, 10, 10);		
	}
}


function nearest(_list) {
	for (var i = 0; i < ds_list_size(_list); i++) {
	    var _point = ds_list_find_value(_list, i);
		var _point_dist = point_distance(x, y, _point[0], _point[1]);		
	}
}


draw_dude_path()
