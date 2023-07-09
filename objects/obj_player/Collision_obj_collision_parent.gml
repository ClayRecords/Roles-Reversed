if (other.id.pushable) {
	print("Pushing ", other.id)
	other.id.speed = speed;
	other.id.direction = direction;
	
	temp_x = x
	temp_y = y
	
	x = -10000
	y = -10000
	
	var _would_coll = would_be_collision(other.id)
	if (_would_coll) {
		
		print("Pushed item collided with object")	
		//effect_create_above(ef_spark, _would_coll.x, _would_coll.y, 5, c_blue)
		
		other.id.speed = 0;
		speed = 0;
	}
	
	x = temp_x
	y = temp_y
}	
	
// Reset player back to previous location
x = xprevious;
y = yprevious;

get_close_to_collision(self);
