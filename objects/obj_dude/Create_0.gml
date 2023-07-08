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
sprite_index = spr_player_idle;
current_attractor = noone; // The item we are going to
all_nearby_objects = ds_list_create();

starting_path_torches = find_path_torches(starting_path);
//start_on_path(starting_path);