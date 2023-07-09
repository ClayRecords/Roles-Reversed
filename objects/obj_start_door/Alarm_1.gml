print("GO")

new_door = instance_create_layer(x, y, "Instances", obj_start_door_open);
set_obj_sprite_size(new_door, sprite_width, sprite_height)
instance_destroy(self);