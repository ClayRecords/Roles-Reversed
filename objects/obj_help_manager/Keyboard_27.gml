/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2903454D
/// @DnDArgument : "expr" "in_help"
if(in_help)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 47EB81F9
	/// @DnDParent : 2903454D
	/// @DnDArgument : "obj" "obj_manager"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_manager"
	var l47EB81F9_0 = false;
	l47EB81F9_0 = instance_exists(obj_manager);
	if(!l47EB81F9_0)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
		/// @DnDVersion : 1
		/// @DnDHash : 672080ED
		/// @DnDParent : 47EB81F9
		/// @DnDArgument : "var" "global.help_popup"
		layer_sequence_destroy(global.help_popup);
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2A215F40
		/// @DnDApplyTo : {obj_button_parent}
		/// @DnDParent : 47EB81F9
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
		/// @DnDHash : 251321D9
		/// @DnDParent : 47EB81F9
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "in_help"
		in_help = false;
	}
}