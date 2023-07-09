/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D7FF0B7
/// @DnDComment : This variable is called$(13_10)move_speed and stores$(13_10)the movement speed of the$(13_10)player. The speed is in$(13_10)pixels-per-second.
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "move_speed"
move_speed = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 094CA1E3
/// @DnDComment : Initialize coins value at 0
/// @DnDArgument : "expr" "starting_coins"
/// @DnDArgument : "var" "coins"
coins = starting_coins;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38E7E294
/// @DnDComment : Friction slows the player's speed$(13_10)down over time until they stop.
/// @DnDArgument : "expr" ".5"
/// @DnDArgument : "var" "friction"
friction = .5;