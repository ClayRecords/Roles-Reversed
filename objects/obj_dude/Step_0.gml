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
	//0/4 = left
	//1 up
	//2 left
	//3 down
	card_dir = round(direction/90)
	print(card_dir)
	sprite_index = spr_player_walk_side;
}


