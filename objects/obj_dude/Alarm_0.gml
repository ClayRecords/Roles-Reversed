/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7585F1EA
speed = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 41182B66
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_dude_defeated"
/// @DnDSaveInfo : "objectid" "obj_dude_defeated"
instance_create_layer(x + 0, y + 0, "Instances", obj_dude_defeated);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 61216605
/// @DnDArgument : "x" "5000"
/// @DnDArgument : "y" "5000"
x = 5000;
y = 5000;