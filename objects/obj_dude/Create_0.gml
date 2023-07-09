function create_torch() {
	dude_torch = instance_create_layer(x, y, "Instances", obj_torch_glow);
	dude_torch.parent = self;
	set_obj_sprite_size(dude_torch, vision_range * 2, vision_range * 2);
}

function find_path_torches(_path) {
	var _path_torches = ds_list_create();
	var _last_index = 0;
	for (var i = 0; i < path_get_number(_path); i++) {
		_torch = instance_create_layer(path_get_point_x(_path, i), path_get_point_y(_path, i), "Instances", obj_floor_torch);
		_torch.attraction_weight = i;
		_last_index = i;
		ds_list_add(_path_torches, _torch);
	}
	obj_next_level.attraction_weight = _last_index + 1;
	return _path_torches;
}

function find_highest_attractor() {
	ds_list_clear(all_nearby_objects);
	
	var _current_attractor = noone;

	var _num = collision_circle_list(x, y, vision_range, obj_attractable_parent, false, true, all_nearby_objects, true);
	if (_num) {
		_current_attractor = ds_list_find_value(all_nearby_objects, 0);
		var _current_attractor_dist = point_distance(x, y, _current_attractor.x, _current_attractor.y);
	
		for (var i = 1; i < ds_list_size(all_nearby_objects); i++) {
		    var _obj = ds_list_find_value(all_nearby_objects, i);
		
			if (_obj.attraction_weight > _current_attractor.attraction_weight) {
				// Higher attraction
				_current_attractor = _obj;
				_current_attractor_dist = point_distance(x, y, _obj.x, _obj.y);
			} else if (_current_attractor.attraction_weight == _obj.attraction_weight) {
				var _obj_dist = point_distance(x, y, _obj.x, _obj.y);
				if (_obj_dist < _current_attractor_dist) {
					// Closer
					_current_attractor = _obj;
					_current_attractor_dist = _obj_dist;
				}
			}
		}
	}
	
	return _current_attractor;
}

function change_sprite_for_direction_and_speed() {
	if (speed == 0) {
		sprite_index = spr_player_idle;
	} else {
		var _direction_quadrant = round(direction/90);
		image_xscale = 1;
		switch (_direction_quadrant) {
		    case 0:
		    case 4:
				sprite_index = spr_player_walk_side; // right
				break;
		
			case 1:
				sprite_index = spr_player_walk_up;
				break;
		
			case 2:
				sprite_index = spr_player_walk_side; // left
				image_xscale = -1;
				break;
		
			case 3:
				sprite_index = spr_player_walk_down;
				break;
		}
	}
}

create_torch();
image_xscale = 1;
speed = 1;
all_nearby_objects = ds_list_create();

starting_path_torches = find_path_torches(starting_path);



sprite_index = spr_player_walk_down;
current_path = pth_dude_start;
path_start(pth_dude_start, 1.5, path_action_stop, true);
alarm[1] = (room_speed * start_timer);
