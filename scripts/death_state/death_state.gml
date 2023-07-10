function death_state(_death_sprite){
	set_state_sprite(_death_sprite, 0.25, 0);
	friction = true;
	
	if image_index >= image_number -1
	{
		image_index = image_number -1;
		image_speed = 0;
		if image_alpha > 0 
		{
			image_alpha -= 0.1;	
		}
		else
		{
		instance_destroy();	
		}
	}
	move_and_crash(knockBack_speed, 0);
	var _knockBack_friction = 0.3;
	knockBack_speed = approach(knockBack_speed,0,_knockBack_friction);
}