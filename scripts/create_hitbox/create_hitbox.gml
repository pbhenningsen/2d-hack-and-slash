function create_hitbox(_x_position,_y_position,_creator,_sprite,_knockBack,_lifeSpan,_damage,_xScale) 
{
	var _hitbox = instance_create_layer(_x_position, _y_position, "Instances", o_hitbox);
	_hitbox.sprite_index = _sprite;
	_hitbox.creator = _creator;
	_hitbox.knockBack = _knockBack;
	_hitbox.alarm[0] = _lifeSpan;//we're setting an alarm in the hitbox object to whatver number _lifeSpan is, at the end it goes off
	_hitbox.damage = _damage;
	_hitbox.image_xscale = _xScale;//tells the hitbox which direction to face when we're attacking. 
	
	

}