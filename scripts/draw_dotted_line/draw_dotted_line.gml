/// @function draw_dotted_line(x1, y1, x2, y2, dot_length, space_length)
/// @param {real} x1 The x-coordinate of the first point.
/// @param {real} y1 The y-coordinate of the first point.
/// @param {real} x2 The x-coordinate of the second point.
/// @param {real} y2 The y-coordinate of the second point.
/// @param {real} dot_length The length of each dot in pixels.
/// @param {real} space_length The length of the space between dots in pixels.
/// @description Draws a dotted line from (x1, y1) to (x2, y2).
function draw_dotted_line(x1, y1, x2, y2, dot_length, space_length) {
    // Calculate total length of dot + space
    var total_length = dot_length + space_length;

    // Calculate the direction from the first point to the second point
    var _direction = point_direction(x1, y1, x2, y2);

    // Calculate the distance between the two points
    var distance = point_distance(x1, y1, x2, y2);

    // Draw the dotted line
    for (var i = 0; i < distance; i += total_length) {
        var x_start = x1 + lengthdir_x(i, _direction);
        var y_start = y1 + lengthdir_y(i, _direction);
        var x_end = x1 + lengthdir_x(min(i + dot_length, distance), _direction);
        var y_end = y1 + lengthdir_y(min(i + dot_length, distance), _direction);

        draw_line(x_start, y_start, x_end, y_end);
    }
}
