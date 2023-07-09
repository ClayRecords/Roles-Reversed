var _seen_by_dude = obj_to_obj_bbox_LOS(obj_dude, self, obj_dude.vision_range);

coin_guiding = false;

if(!_seen_by_dude) {
	WASD_set_speed_and_direction(self, move_speed);

	if (keyboard_check(vk_shift)) {
		if(coins > 0) {
			coin_guiding = true;
		}
	}
	if (keyboard_check_released(vk_space)) {
		if(coins > 0) {
			instance_create_layer(x + 0, y + 0, "Instances", obj_coin);
			coins += -1;
		}
	}
}