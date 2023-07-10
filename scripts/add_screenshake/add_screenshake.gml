function add_screenshake(_intensity,_duration){
	if !instance_exists(o_camera) exit;
	with (o_camera)
	{
		screenshake = _intensity;
		alarm[0] = _duration;
	}
}