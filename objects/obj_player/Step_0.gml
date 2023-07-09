if (instance_exists(obj_dude)) {
	var _seen_by_dude = obj_to_obj_bbox_LOS(obj_dude, self, obj_dude.vision_range);

	coin_guiding = false;

	if(!_seen_by_dude) {
		WASD_set_speed_and_direction(self, move_speed);
		sprite_index=spr_player_goblin_stand;
		if(speed=0){
			sprite_index=spr_player_goblin_hide;
		}
	
		if (keyboard_check(vk_shift)) {
			if(coins > 0) {
				coin_guiding = true;
			}
		}
		if (keyboard_check_pressed(vk_space)) {
			if(coins > 0) {
				instance_create_layer(x + 0, y + 0, "Instances", obj_coin);
				coins += -1;
			}
		}
	} else {
		sprite_index=spr_player_goblin_hide;
	}
}