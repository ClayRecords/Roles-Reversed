/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 08D76482
/// @DnDComment : If the enemy is attacking,
/// @DnDArgument : "var" "attacking"
/// @DnDArgument : "value" "true"
if(attacking == true)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 346DCE7E
	/// @DnDComment : Stop the event so its$(13_10)sprite is not changed
	/// @DnDParent : 08D76482
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 30759C6C
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 18370C6B
	/// @DnDParent : 30759C6C
	/// @DnDArgument : "spriteind" "spr_spikefloor_hidden"
	/// @DnDSaveInfo : "spriteind" "spr_spikefloor_hidden"
	sprite_index = spr_spikefloor_hidden;
	image_index = 0;
}