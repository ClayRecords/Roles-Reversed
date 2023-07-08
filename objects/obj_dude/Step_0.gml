
ds_list_clear(all_nearby_objects);
current_attractor = noone;
var _current_attractor_dist = -1;

var _num = collision_circle_list(x, y, vision_range, obj_attractable_parent, false, true, all_nearby_objects, true);
if (_num) {
	print("there are things attracting me")
	current_attractor = ds_list_find_value(all_nearby_objects, 0);
	_current_attractor_dist = point_distance(x, y, current_attractor.x, current_attractor.y);
	
	for (var i = 1; i < ds_list_size(all_nearby_objects); i++) {
	    var _obj = ds_list_find_value(all_nearby_objects, i);
				
		if (current_attractor.attraction_priority < _obj.attraction_priority) {
			current_attractor = _obj;
			_current_attractor_dist = point_distance(x, y, _obj.x, _obj.y);
		} else if (current_attractor.attraction_priority == _obj.attraction_priority) {
			var _obj_dist = point_distance(x, y, _obj.x, _obj.y);
			if (_current_attractor_dist > _obj_dist) {
				current_attractor = _obj;
				_current_attractor_dist = _obj_dist;
			}
		}
	}
	
	if (global.game_frame mod  15 == 0) {
		effect_create_above(ef_spark, current_attractor.x + 10, current_attractor.y - 10, 10, c_white)
	}
	move_towards_point(current_attractor.x, current_attractor.y, move_speed);
} else {
	speed = 0;
}
