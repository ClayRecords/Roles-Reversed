function create_torch() {
	dude_torch = instance_create_layer(x, y, "Instances", obj_torch_glow);
	dude_torch.parent = self;
	set_obj_sprite_size(dude_torch, vision_range * 2, vision_range * 2);
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
				sprite_index = spr_player_walk_side;
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