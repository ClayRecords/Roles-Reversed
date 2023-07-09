/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 28D8DE9A
/// @DnDInput : 3
/// @DnDArgument : "var" "seen_by_dude"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "obj_to_obj_bbox_LOS"
/// @DnDArgument : "arg" "obj_dude"
/// @DnDArgument : "arg_1" "self"
/// @DnDArgument : "arg_2" "obj_dude.vision_range"
var seen_by_dude = obj_to_obj_bbox_LOS(obj_dude, self, obj_dude.vision_range);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 227AB255
/// @DnDArgument : "expr" "seen_by_dude"
/// @DnDArgument : "not" "1"
if(!(seen_by_dude))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0B6C2B96
	/// @DnDInput : 2
	/// @DnDParent : 227AB255
	/// @DnDArgument : "function" "WASD_set_speed_and_direction"
	/// @DnDArgument : "arg" "self"
	/// @DnDArgument : "arg_1" "move_speed"
	WASD_set_speed_and_direction(self, move_speed);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3603B06B
	/// @DnDParent : 227AB255
	var l3603B06B_0;
	l3603B06B_0 = keyboard_check_pressed(vk_space);
	if (l3603B06B_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 035125A4
		/// @DnDParent : 3603B06B
		/// @DnDArgument : "var" "coins"
		/// @DnDArgument : "op" "2"
		if(coins > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 414DE9D6
			/// @DnDParent : 035125A4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_coin"
			/// @DnDSaveInfo : "objectid" "obj_coin"
			instance_create_layer(x + 0, y + 0, "Instances", obj_coin);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 779F1C21
			/// @DnDParent : 035125A4
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "coins"
			coins += -1;
		}
	}
}