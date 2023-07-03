switch (state)
{
	case "chase":
	set_state_sprite(s_knight_walk, 0.4, 0);
	
	if not instance_exists(o_skeleton) break;//if the skeleton doesn't exist, we won't try to run any of the code that comes next. 
	
	image_xscale = sign(o_skeleton.x-x);//"sign" returns three values: -1,0, or 1. It will return negative one if the value inside it is negative.  It will return positive one if the value inside of it is positive, if the values are exactly the same it will return 0. 
	if image_xscale == 0
	{
		image_xscale = 1;// gives us a direction to face in the event of 0
	}
	
	var _distance_to_player = point_distance(x,y,o_skeleton.x,o_skeleton.y);
	if _distance_to_player > 42 
	{
		move_and_crash(image_xscale * 1, 0);
	}
	break;
}
