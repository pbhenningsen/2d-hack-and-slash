function boss_knockBack(){
	move_and_crash(knockBack_speed, 0);
	var _knockBack_friction = 0.3;
	knockBack_speed = approach(knockBack_speed,0,_knockBack_friction);
}