/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 5708A185
/// @DnDComment : The broadcast messages for this object are set$(13_10)up in the baddie walk sprites, where each footstep$(13_10)frame has a broadcast message assigned to it.$(13_10)$(13_10)This action retrieves the message received from the$(13_10)event_data map.
/// @DnDArgument : "assignee" "message"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "event_data"
/// @DnDArgument : "key" ""message""
var message = ds_map_find_value(event_data, "message");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BBD398F
/// @DnDComment : This condition checks if the received message is$(13_10)"baddie_step".
/// @DnDArgument : "var" "message"
/// @DnDArgument : "value" ""door_open""
if(message == "door_open")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A7C55DE
	/// @DnDParent : 0BBD398F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_speed"
	image_speed = -1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E4837F6
	/// @DnDParent : 0BBD398F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "door_closing"
	door_closing = true;
}

/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 375267BD
/// @DnDComment : The broadcast messages for this object are set$(13_10)up in the baddie walk sprites, where each footstep$(13_10)frame has a broadcast message assigned to it.$(13_10)$(13_10)This action retrieves the message received from the$(13_10)event_data map.
/// @DnDArgument : "assignee" "message"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "event_data"
/// @DnDArgument : "key" ""message""
var message = ds_map_find_value(event_data, "message");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65B49292
/// @DnDComment : This condition checks if the received message is$(13_10)"baddie_step".
/// @DnDArgument : "var" "message"
/// @DnDArgument : "value" ""door_close""
if(message == "door_close")
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3F460675
	/// @DnDParent : 65B49292
	/// @DnDArgument : "expr" "door_closing"
	if(door_closing)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FA2AFB7
		/// @DnDParent : 3F460675
		/// @DnDArgument : "var" "image_speed"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D753D71
		/// @DnDParent : 3F460675
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "door_closing"
		door_closing = false;
	}
}