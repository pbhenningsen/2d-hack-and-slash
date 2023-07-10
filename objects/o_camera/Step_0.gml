x += random_range(-screenshake,screenshake);
y += random_range(-screenshake,screenshake);

if !instance_exists(o_skeleton) exit;

var _target_x = o_skeleton.x;
var _target_y = o_skeleton.y-48;

x = lerp(x,_target_x, 0.2);//goes 32 pixels in direction player is facing, so you sort of switch perspectives when you change directions
y = lerp(y, _target_y,0.2);//makes camera move smoother

camera_set_view_pos(view_camera[0],x-width/2,y-height/2);


