/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5BAB7885
/// @DnDComment : If there wasn't a collision$(13_10)in the previous X position
/// @DnDArgument : "x" "xprevious"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "object" "obj_pit"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_pit"
var l5BAB7885_0 = instance_place(xprevious, y, obj_pit);
if (!(l5BAB7885_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 46D692CA
	/// @DnDComment : Then move back to that$(13_10)point on the X axis
	/// @DnDParent : 5BAB7885
	/// @DnDArgument : "x" "xprevious"
	/// @DnDArgument : "y" "y"
	x = xprevious;
	y = y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 35C77266
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 285111D8
	/// @DnDComment : If there wasn't a collision$(13_10)in the previous y position
	/// @DnDParent : 35C77266
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "yprevious"
	/// @DnDArgument : "object" "obj_pit"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_pit"
	var l285111D8_0 = instance_place(x, yprevious, obj_pit);
	if (!(l285111D8_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2D4B0CAD
		/// @DnDComment : Then move back to that$(13_10)point on the Y axis
		/// @DnDParent : 285111D8
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "yprevious"
		x = x;
		y = yprevious;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 620445A5
	/// @DnDParent : 35C77266
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 30116C8C
		/// @DnDComment : Otherwise just move back$(13_10)on both X and Y axes
		/// @DnDParent : 620445A5
		/// @DnDArgument : "x" "xprevious"
		/// @DnDArgument : "y" "yprevious"
		x = xprevious;
		y = yprevious;
	}
}