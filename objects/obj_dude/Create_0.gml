
move_speed = 4;
dude_torch = instance_create_layer(x, y, "Instances_torch", obj_torch_glow);
set_obj_sprite_size(dude_torch, vision_range * 2, vision_range * 2);
dude_torch.parent = self;
