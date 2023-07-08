/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7885B08F
/// @DnDComment : When an animation ends, this$(13_10)will check if the baddie is attacking.
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "true"
if(attacking == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 016C2F3B
	/// @DnDComment : In that case, it will set$(13_10)'attacking' to false to$(13_10)end the attack.
	/// @DnDParent : 7885B08F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "attacking"
	attacking = false;
}