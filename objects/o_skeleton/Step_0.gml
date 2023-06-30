switch (state)
{
	case "move":
		#region Move State
		if input.right
		{
			move_and_crash(run_speed,0);
			image_xscale = 1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if input.left
		{
			move_and_crash(-run_speed,0)
			image_xscale = -1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if !input.right and !input.left
		{
			sprite_index = s_skeleton_idle;	
			image_speed = 0.4;
		}
		if input.roll
		{
			state = "roll";
		}
		if input.attack
		{
			state = "attack one";
		}
		
		#endregion
		break;
	case "roll":
		#region Roll State
		set_state_sprite(s_skeleton_roll,0.6,0);
	
		if image_xscale == 1 
		{
			move_and_crash(roll_speed,0);
		}
		if image_xscale == -1
		{
			move_and_crash(-roll_speed,0);
		}
		#endregion
		break;	
	case "attack one":
		#region Attack State One
		set_state_sprite(s_skeleton_attack_one,0.6,0);
	
		if input.attack && animation_hit_frame_range(2,4)
		{
			state = "attack two";
		}
		#endregion
		break;
	case "attack two":
		#region Attack State Two
		set_state_sprite(s_skeleton_attack_two,0.6,0);
		
		if input.attack && animation_hit_frame_range(2,4)
		{
			state = "attack three";
		}
		#endregion
		break;
	case "attack three":
		#region Attack State Three
		set_state_sprite(s_skeleton_attack_three,0.6,0);
		#endregion
		break;
}