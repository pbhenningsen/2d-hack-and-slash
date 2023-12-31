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
		else
		{
			if animation_hit_frame(2) or animation_hit_frame(5)
			{
				audio_play_sound(a_footstep,2,false);
			}
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
			if animation_end()
		{
			state = "move";
		}
		

		#endregion
		break;	
	case "attack one":
		#region Attack State One
		set_state_sprite(s_skeleton_attack_one,0.7,0);
		if animation_hit_frame(0)
		{
			audio_play_sound(a_swipe,3,false);
			create_hitbox(x,y,self,s_skeleton_attack_one_damage,3,4,5,image_xscale);
		}
		if input.attack && animation_hit_frame_range(2,4)
		{
			state = "attack two";
		}
		if animation_end()
		{
			state = "move";
		}
		#endregion
		break;
	case "attack two":
		#region Attack State Two
		set_state_sprite(s_skeleton_attack_two,0.6,0);
		
		if animation_hit_frame(2)
		{
			audio_play_sound(a_swipe,3,false);
			create_hitbox(x,y,self,s_skeleton_attack_two_damage,3,4,5,image_xscale);
		}
		
		if input.attack && animation_hit_frame_range(2,4)
		{
			state = "attack three";
		}
		if animation_end()
		{
			state = "move";
		}
		#endregion
		break;
	case "attack three":
		#region Attack State Three
		set_state_sprite(s_skeleton_attack_three,0.6,0);
		if animation_hit_frame(2)
		{
			audio_play_sound(a_swipe,3,false);
			create_hitbox(x,y,self,s_skeleton_attack_three_damage,4,4,8,image_xscale);
		}
		
		if animation_end()
		{
			state = "move";
		}
		#endregion
		break;
		
	case "knockBack":
		#region Knock Back State
		knockBack_state(s_skeleton_hitstun,"move");
		#endregion
		break;
		
	default:
		show_debug_message("State "+state+" does not exist.");
		state = "move";
		break;
}