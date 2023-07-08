/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 677FA231
event_inherited();

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 7C7C296D
/// @DnDArgument : "var" "global.help_popup"
layer_sequence_destroy(global.help_popup);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2588F991
/// @DnDApplyTo : {obj_button_parent}
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-2000"
/// @DnDArgument : "y_relative" "1"
with(obj_button_parent) {
x += 0;
y += -2000;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5EB44EF5
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "obj_help_manager.in_help"
obj_help_manager.in_help = false;