switch(state)
{
	case "chase":
	#region Chase State
		boss_chase_state();
		boss_knockBack();
	#endregion
	break;
	
	case "knockBack":
	#region Knockback State
		knockBack_state(s_boss_idle,"chase");
	#endregion
	break;
	
	case "stall":
	set_state_sprite(s_boss_idle,0.3,0);
	#region Stall State
		if alarm[1]<=0 
		{
			state = "chase";	
		}
		boss_knockBack();
	#endregion
	break;
	
	case "attack":
	#region Attack State
		set_state_sprite(s_boss_attack,0.5,0);
		if animation_hit_frame(7)
		{
			audio_play_sound(a_big_hit,5,false);
			create_hitbox(x,y,self,s_boss_attack_damage,10,3,20,image_xscale);
			add_screenshake(10,16);
		}
		
		if animation_end()
		{
			state = "stall";
			alarm[1] = 30;
			
		}
	boss_knockBack();
	#endregion
	break;
	
	case "death":
	#region Death State
		death_state(s_boss_die);
	#endregion 
	break;
}
//show_debug_message(state);

