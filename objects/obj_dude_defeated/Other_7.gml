/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 2277DA5F
/// @DnDArgument : "var" "global.lost_popup"
/// @DnDArgument : "sequenceid" "seq_lost_window"
/// @DnDArgument : "layer" ""GUI""
global.lost_popup = layer_sequence_create("GUI", 0, 0, seq_lost_window);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 553DBC71
instance_destroy();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 78DDE878
/// @DnDArgument : "function" "instance_deactivate_all"
/// @DnDArgument : "arg" "true"
instance_deactivate_all(true);