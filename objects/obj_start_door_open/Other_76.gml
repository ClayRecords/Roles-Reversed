
var message = ds_map_find_value(event_data, "message");

if(message == "door_open") {
	print("open")

	sprite_set_speed(sprite_index, 0, spritespeed_framespersecond) // stop
	image_speed = -1; 
	
}