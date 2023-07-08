function create_torch() {
	dude_torch = instance_create_layer(x, y, "Instances", obj_torch_glow);
	dude_torch.parent = self;
	set_obj_sprite_size(dude_torch, vision_range * 2, vision_range * 2);
}

function start_on_path(_path) {
	current_path = _path;
	speed = move_speed;
	path_start(_path, move_speed, path_action_continue, true);
}

function end_path() {
	current_path = noone;
	speed = 0;
	path_end();
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

starting_path_points = ds_list_create();
for (var i = 0; i < path_get_number(starting_path); i++) {
	var _point = [path_get_point_x(starting_path, i), path_get_point_y(starting_path, i)];
	ds_list_add(starting_path_points, _point);
}

start_on_path(starting_path);

all_nearby_objects = ds_list_create();
current_attractor = noone;

my_speed = 0;