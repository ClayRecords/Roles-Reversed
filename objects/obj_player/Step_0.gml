/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2DDC7821
/// @DnDArgument : "key" "ord("A")"
var l2DDC7821_0;
l2DDC7821_0 = keyboard_check(ord("A"));
if (l2DDC7821_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 12C39160
	/// @DnDComment : Add -move_speed to$(13_10)X so it moves left
	/// @DnDParent : 2DDC7821
	/// @DnDArgument : "value" "-move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += -move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 668D63CD
	/// @DnDComment : Walk to side sprite
	/// @DnDParent : 2DDC7821
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_barrel_big"
	/// @DnDSaveInfo : "spriteind" "spr_barrel_big"
	sprite_index = spr_barrel_big;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 6FFBBBEF
	/// @DnDComment : Since it's using the same$(13_10)"side" sprite, we need to$(13_10)flip the instance by setting$(13_10)its horizontal scale to -1,$(13_10)so it faces left$(13_10)$(13_10)This also carries over to$(13_10)the idle state and keeps$(13_10)it facing in the direction$(13_10)it was moving in
	/// @DnDParent : 2DDC7821
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0492F558
/// @DnDArgument : "key" "ord("D")"
var l0492F558_0;
l0492F558_0 = keyboard_check(ord("D"));
if (l0492F558_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 625E416E
	/// @DnDComment : Add move_speed to$(13_10)X so it moves right
	/// @DnDParent : 0492F558
	/// @DnDArgument : "value" "move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2484D03F
	/// @DnDComment : Walk to side sprite
	/// @DnDParent : 0492F558
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_barrel_big"
	/// @DnDSaveInfo : "spriteind" "spr_barrel_big"
	sprite_index = spr_barrel_big;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 0F6B1D86
	/// @DnDComment : Reset the horizontal scale$(13_10)to 1 so the player faces$(13_10)right again
	/// @DnDParent : 0492F558
	image_xscale = 1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 05EC6B18
/// @DnDArgument : "key" "ord("W")"
var l05EC6B18_0;
l05EC6B18_0 = keyboard_check(ord("W"));
if (l05EC6B18_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 09C7075A
	/// @DnDComment : Add -move_speed to$(13_10)Y so it moves up
	/// @DnDParent : 05EC6B18
	/// @DnDArgument : "value" "-move_speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6962A3AC
	/// @DnDComment : Walk up sprite
	/// @DnDParent : 05EC6B18
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_barrel_big"
	/// @DnDSaveInfo : "spriteind" "spr_barrel_big"
	sprite_index = spr_barrel_big;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 733C29C3
/// @DnDArgument : "key" "ord("S")"
var l733C29C3_0;
l733C29C3_0 = keyboard_check(ord("S"));
if (l733C29C3_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 226524C7
	/// @DnDComment : Add move_speed to$(13_10)Y so it moves down
	/// @DnDParent : 733C29C3
	/// @DnDArgument : "value" "move_speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 494822D5
	/// @DnDComment : Walk down sprite
	/// @DnDParent : 733C29C3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_barrel_big"
	/// @DnDSaveInfo : "spriteind" "spr_barrel_big"
	sprite_index = spr_barrel_big;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3603B06B
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