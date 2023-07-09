
function obj_to_obj_LOS(_obj1, _obj2, _range = noone) {
	if (_range != noone) {
		var _dist = point_distance(_obj1.x, _obj1.y, _obj2.x, _obj2.y);
		if (_dist > _range) {
			return false;
		}
	}
	
	var _coll = collision_line(_obj1.x, _obj1.y, _obj2.x, _obj2.y, obj_collision_parent, false, true);
	return _coll == noone;
}


function obj_to_obj_bbox_LOS(_obj1, _obj2, _range = noone) {
	if (_range != noone) {
		var _dist = point_distance(_obj1.x, _obj1.y, _obj2.x, _obj2.y);
		if (_dist > _range) {
			return false;
		}
	}
	
	var _coors = [
		[_obj2.bbox_left, _obj2.bbox_top], // top left
		[_obj2.bbox_right, _obj2.bbox_top], // top right
		[_obj2.bbox_left, _obj2.bbox_bottom], // bottom left
		[_obj2.bbox_left, _obj2.bbox_bottom] // bottom right
	]
	
	for (var i = 0; i < 4; i++) {
		var _coor = _coors[i];
		var _coll = collision_line(_obj1.x, _obj1.y, _coor[0], _coor[1], obj_collision_parent, false, true);
		if (_coll == noone) {
			// No collision, LOS!
			// effect_create_above(ef_spark, _coor[0], _coor[1], 5, c_blue)
			return true;
		}
	}
	return false;
}
