
var message = ds_map_find_value(event_data, "message");

if(message == "door_open") {
	// Stop animating
	sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
	image_speed = -1; 
}