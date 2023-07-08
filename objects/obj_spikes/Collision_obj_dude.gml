/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DD2EAAE
/// @DnDComment : Then check if the baddie is$(13_10)not attacking right now
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "false"
if(attacking == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1757E5F6
	/// @DnDComment : In that case, set 'attacking'$(13_10)to true so it starts attacking
	/// @DnDParent : 7DD2EAAE
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "attacking"
	attacking = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 19D1F4A1
	/// @DnDParent : 7DD2EAAE
	/// @DnDArgument : "spriteind" "spr_spikefloor"
	/// @DnDSaveInfo : "spriteind" "spr_spikefloor"
	sprite_index = spr_spikefloor;
	image_index = 0;
}