switch(state)
{
	case "chase":
	#region Chase State
		set_state_sprite(s_boss_walk, 0.3, 0);
		chase_state();
	#endregion
	break;
	
	case "knockBack":
	#region Knockback State
		knockBack_state(s_boss_idle,"chase");
	#endregion
	break;
	
	case "stall":
	#region Stall State
		if alarm[1]<=0 
		{
			state = "chase";	
		}
	#endregion
	break;
	
	case "attack":
	#region Attack State
		set_state_sprite(s_boss_attack,0.5,0);
		if animation_hit_frame(7)
		{
			create_hitbox(x,y,self,s_boss_attack_damage,20,3,20,image_xscale);
		}
		
		if animation_end()
		{
			state = "stall";
			alarm[1] = 60;
			
		}
	#endregion
	break;
	
	case "death":
	#region Death State
		death_state(s_boss_die);
	#endregion 
	break;
}
//show_debug_message(state);

