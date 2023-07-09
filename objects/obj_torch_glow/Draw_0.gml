
function get_collision_position(_angle, _range) {
	var _dx = lengthdir_x(1, _angle);
    var _dy = lengthdir_y(1, _angle);
    var _step = 1;  // Adjust as needed

    for (var i = 0; i < _range; i += _step) {
        var _end_x = x + _dx * i;
        var _end_y = y + _dy * i;

        if (collision_point(_end_x, _end_y, obj_collision_parent, false, true)) {
            // If there is a collision at this point, return it
            return [_end_x, _end_y];
        }
    }

    // If there is no collision within the range, return the end position
    return [x + _dx * _range, y + _dy * _range];
}

segments = 90;
ds_list_clear(light_points);
for (var i = 0; i < segments; i++) {
    var _angle = i * 360 / segments;
    var _pos = get_collision_position(_angle, obj_dude.vision_range);
	ds_list_add(light_points, _pos);
    //draw_line(x, y, _pos[0], _pos[1]);
}

var start_alpha = 0.3;
var end_alpha = 0.05;
var color = #ffdfb5;

var _size = ds_list_size(light_points);
if (_size < 2) return;  // Can't draw lines if fewer than 2 objects
for (var i = 0; i < _size - 1; i++) {
	var _obj1 = ds_list_find_value(light_points, i);
	var _obj2 = ds_list_find_value(light_points, i + 1);

	draw_primitive_begin(pr_trianglestrip);
	draw_vertex_colour(x, y, color, start_alpha);
	draw_vertex_colour(_obj1[0], _obj1[1], color, end_alpha);
	draw_vertex_colour(_obj2[0], _obj2[1], color, end_alpha);
	draw_primitive_end();
}

var _obj1 = ds_list_find_value(light_points, 0)
var _obj2 = ds_list_find_value(light_points, _size - 1)
draw_primitive_begin(pr_trianglestrip);
draw_vertex_colour(x, y, color, start_alpha);
draw_vertex_colour(_obj1[0], _obj1[1], color, end_alpha);
draw_vertex_colour(_obj2[0], _obj2[1], color, end_alpha);
draw_primitive_end();
