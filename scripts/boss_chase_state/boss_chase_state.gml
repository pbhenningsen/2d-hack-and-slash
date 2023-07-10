function boss_chase_state(){
	set_state_sprite(s_boss_walk, 0.3, 0);
	if !instance_exists(o_skeleton) exit;
	
	var _direction_facing = image_xscale;
	var _distance_to_player = point_distance(x,y,o_skeleton.x,o_skeleton.y);
	if _distance_to_player <= attack_range and _distance_to_player > backup_range
	{
		state = "attack";
	}
		
	if _distance_to_player > attack_range {
		image_xscale = sign(o_skeleton.x-x);//"sign" returns three values: -1,0, or 1. It will return negative one if the value inside it is negative.  It will return positive one if the value inside of it is positive, if the values are exactly the same it will return 0. 
		if image_xscale == 0
		{
			image_xscale = 1;// gives us a direction to face in the event of 0
		}
		move_and_crash(_direction_facing * chase_speed, 0);
		}
	if _distance_to_player <= backup_range {
		if _direction_facing != sign(o_skeleton.x -x)
		{
			if image_xscale == 0
			{
				image_xscale = 1;// gives us a direction to face in the event of 0
			}
		}
			move_and_crash(-_direction_facing * chase_speed, 0);
		}
		
}