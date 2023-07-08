var _enemy_count = instance_number(o_enemy_parent);

if instance_exists(o_skeleton) && _enemy_count < o_skeleton.kills/4 //makes game harder as kill amount goes up
{
		if _enemy_count > 5
		{
			exit;//caps our enemies at 5. 
		}
		var _enemy = choose(o_knight,o_crow,o_crow);
		
		var _new_x = random_range(220, room_width -220);
		while point_distance(_new_x,0,o_skeleton.x,0) < 220
		{
			_new_x = random_range(220, room_width -220);
		}
		
		instance_create_layer(_new_x, o_skeleton.y,"Instances",_enemy);
}