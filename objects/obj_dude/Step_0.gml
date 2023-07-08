
// move_to_nearest_visible_coin
var nearest_coin = instance_nearest(x, y, obj_coin);
if (nearest_coin != noone && point_distance(x, y, nearest_coin.x, nearest_coin.y) <= vision_range) {
	if (global.game_frame mod  10 == 0) {
		effect_create_above(ef_spark, nearest_coin.x + 10, nearest_coin.y - 10, 10, c_white)
	}
	move_towards_point(nearest_coin.x, nearest_coin.y, move_speed);
} else {
	speed = 0;
}


change_sprite_for_direction_and_speed();
