switch (state)
{
	case "move":
		#region Move State
		if (keyboard_check(vk_right)) 
		{
			move_and_crash(4,0);
			image_xscale = 1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if (keyboard_check(vk_left))
		{
			move_and_crash(-4,0)
			image_xscale = -1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if not keyboard_check(vk_right) and not keyboard_check(vk_left)
		{
			sprite_index = s_skeleton_idle;	
			image_speed = 0.4;
		}
		if keyboard_check_pressed(vk_space)
		{
			state = "roll";
		}
		if keyboard_check_pressed(vk_lshift)
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
			move_and_crash(6,0);
		}
		if image_xscale == -1
		{
			move_and_crash(-6,0);
		}
		#endregion
		break;	
	case "attack one":
		#region Attack State One
		set_state_sprite(s_skeleton_attack_one,0.6,0);
	
		if keyboard_check_pressed(vk_lshift) && animation_hit_frame_range(2,4)
		{
			state = "attack two";
		}
		#endregion
		break;
	case "attack two":
		#region Attack State Two
		set_state_sprite(s_skeleton_attack_two,0.6,0);
		#endregion
		break;
}