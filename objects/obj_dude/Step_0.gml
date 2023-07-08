//print(global.game_frame)

// move_to_nearest_visible_coin
var nearest_coin = instance_nearest(x, y, obj_coin);
if (nearest_coin != noone && point_distance(x, y, nearest_coin.x, nearest_coin.y) <= vision_range) {
    effect_create_above(ef_spark, nearest_coin.x, nearest_coin.y, 10, c_white)
	move_towards_point(nearest_coin.x, nearest_coin.y, move_speed);
} else {
	speed = 0;
}

if (speed == 0) {
	sprite_index = spr_player_idle;
} else {
	direction_quadrant = round(direction/90);
	image_xscale = 1;
	switch (direction_quadrant) {
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


