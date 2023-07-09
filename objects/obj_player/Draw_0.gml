draw_self();

if (coin_guiding) {
	draw_circle(x, y, obj_dude.vision_range - sprite_get_width(spr_coin) / 2, c_white)
}

//draw_line(x, y, obj_dude.xds, obj_dude.y);