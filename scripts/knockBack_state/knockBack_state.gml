function knockBack_state(_knockBack_sprite,_next_state){
	set_state_sprite(_knockBack_sprite,0,0);
	image_xscale = -sign(knockBack_speed);//makes sure it's facing the opposite direction as the player. 
	move_and_crash(knockBack_speed,0);
	var _knockBack_friction = 0.3;
	knockBack_speed = approach(knockBack_speed,0,_knockBack_friction);//every single frame, this sets our knockback speed equal to lerp, which takes our current value, and then takes a target value, and then we can put in a percentage of the way there, so every frame we'll move 10% closer to 0, our targert
	if knockBack_speed == 0
		{
			state = _next_state;
		}
}