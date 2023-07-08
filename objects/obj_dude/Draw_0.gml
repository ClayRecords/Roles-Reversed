draw_self();
draw_circle(x, y, vision_range, true);


for (var i = 0; i < ds_list_size(all_nearby_objects); i++) {
    var _obj = ds_list_find_value(all_nearby_objects, i);
	if (instance_exists(_obj)) {
		draw_line(x, y, _obj.x, _obj.y);
	}
}