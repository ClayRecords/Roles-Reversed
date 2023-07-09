draw_self();

// Draw a bounding circle so you know how close to put other coins
if (point_distance(x, y, obj_player.x, obj_player.y) <= obj_dude.vision_range - sprite_width) {
	draw_circle(x, y, obj_dude.vision_range - sprite_width / 2, true);
}
