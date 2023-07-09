/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F3615C9
/// @DnDArgument : "var" "obj_help_manager.in_help"
/// @DnDArgument : "value" "false"
if(obj_help_manager.in_help == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C0692F8
	/// @DnDParent : 4F3615C9
	/// @DnDArgument : "var" "paused"
	/// @DnDArgument : "value" "false"
	if(paused == false)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 22179D70
		/// @DnDParent : 3C0692F8
		/// @DnDArgument : "var" "pause_seq"
		/// @DnDArgument : "sequenceid" "seq_pause_menu"
		/// @DnDArgument : "layer" ""GUI""
		/// @DnDSaveInfo : "sequenceid" "seq_pause_menu"
		pause_seq = layer_sequence_create("GUI", 0, 0, seq_pause_menu);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 11AC52E6
		/// @DnDParent : 3C0692F8
		/// @DnDArgument : "function" "instance_deactivate_all"
		/// @DnDArgument : "arg" "true"
		instance_deactivate_all(true);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 021B829F
		/// @DnDParent : 3C0692F8
		/// @DnDArgument : "function" "instance_activate_object"
		/// @DnDArgument : "arg" "obj_help_manager"
		instance_activate_object(obj_help_manager);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44201827
		/// @DnDParent : 3C0692F8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "paused"
		paused = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 25D974D9
	/// @DnDParent : 4F3615C9
	else
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
		/// @DnDVersion : 1
		/// @DnDHash : 6A84C3E1
		/// @DnDParent : 25D974D9
		/// @DnDArgument : "var" "pause_seq"
		layer_sequence_destroy(pause_seq);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 54A63B6E
		/// @DnDParent : 25D974D9
		/// @DnDArgument : "function" "instance_activate_all"
		instance_activate_all();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A796961
		/// @DnDParent : 25D974D9
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "paused"
		paused = false;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3DB95C60
else
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 3059EB50
	/// @DnDParent : 3DB95C60
	/// @DnDArgument : "var" "global.help_popup"
	layer_sequence_destroy(global.help_popup);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4FB6A1A8
	/// @DnDApplyTo : {obj_button_parent}
	/// @DnDParent : 3DB95C60
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
	/// @DnDHash : 08F67360
	/// @DnDParent : 3DB95C60
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_help_manager.in_help"
	obj_help_manager.in_help = false;
}