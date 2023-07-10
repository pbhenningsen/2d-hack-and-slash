function chase_state(){
if not instance_exists(o_skeleton) exit;//if the skeleton doesn't exist, we won't try to run any of the code that comes next. 
	
		image_xscale = sign(o_skeleton.x-x);//"sign" returns three values: -1,0, or 1. It will return negative one if the value inside it is negative.  It will return positive one if the value inside of it is positive, if the values are exactly the same it will return 0. 
		if image_xscale == 0
		{
			image_xscale = 1;// gives us a direction to face in the event of 0
		}
	
	
		var _direction_facing = image_xscale;
		var _distance_to_player = point_distance(x,y,o_skeleton.x,o_skeleton.y);
		if _distance_to_player <= attack_range
		{
			state = "attack";
		}
		else
		{
			x += _direction_facing * chase_speed;
			//move_and_crash(_direction_facing * chase_speed, 0);
		}
}