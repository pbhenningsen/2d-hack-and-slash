if !instance_exists(o_skeleton) exit;
var _dir = point_direction(x,y,o_skeleton.x,o_skeleton.y);
var _acceleration = 0.25;
motion_add(_dir,_acceleration);
var _max_speed = 6;
if speed > _max_speed {
	speed = _max_speed;
}