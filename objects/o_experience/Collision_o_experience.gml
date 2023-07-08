if !instance_exists(other) exit;
var _dir = point_direction(other.x,other.y,x,y);
var _acceleration = 0.25;
motion_add(_dir,_acceleration);