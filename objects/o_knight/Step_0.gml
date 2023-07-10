switch (state)
{
	case "chase":
		#region Chase State
		set_state_sprite(s_knight_walk, 0.4, 0);
		chase_state();
		#endregion
		break;
	
	case "attack":
		#region Attack State
		set_state_sprite(s_knight_attack, 0.6, 0);
		
		if animation_hit_frame(4)
		{
			create_hitbox(x,y,self,s_skeleton_attack_one_damage,4,4,10,image_xscale);
		}
		
		if animation_end()
		{
			state = "chase";
		}
		#endregion
		break;
	case "knockBack":
		#region Knockback State
		knockBack_state(s_knight_hitstun, "chase");
		#endregion
		break;
	case "death":
		#region Death State
		death_state(s_knight_die);
		#endregion 
		break;
		
		default:
			show_debug_message("State "+state+" does not exist.");
			state = "chase";
			break;
}

