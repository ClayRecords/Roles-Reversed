/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2C989185
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21B10932
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "obj_help_manager.in_help"
obj_help_manager.in_help = true;

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 0A96F88F
/// @DnDArgument : "var" "global.help_popup"
/// @DnDArgument : "sequenceid" "seq_help_window"
/// @DnDArgument : "layer" ""Help""
/// @DnDSaveInfo : "sequenceid" "seq_help_window"
global.help_popup = layer_sequence_create("Help", 0, 0, seq_help_window);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 271370A8
/// @DnDApplyTo : {obj_button_parent}
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2000"
/// @DnDArgument : "y_relative" "1"
with(obj_button_parent) {

y += 2000;
}