if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1 //this makes it so that it won't be killed by its own hitboxes, and so that it doesn't confuse our hitbox with its own. 
{
	exit;//exit out of this code
}

other.hp -= damage;//we deal damage to the object
audio_play_sound(a_medium_hit,4,false);
repeat (10)
{
	instance_create_layer(other.x,other.y-12, "Effects", o_hit_effect);
}

if instance_exists(o_skeleton) 
{
	if creator.object_index == o_skeleton && other.hp <= 0 && other.state != "death"
	{
		o_skeleton.kills+=1;
	}
	if other.object_index == o_skeleton {
		//We hit player
		add_screenshake(4,8);
	
		if other.hp <= 0{
		{
			var _number = sprite_get_number(s_skeleton_bones);
		
			for (var _i = 0; _i < _number;  _i++)
				{
				var _bx = other.x+random_range(-8,8);
				var _by = other.y+random_range(-24,8);
				var _bone = instance_create_layer(_bx,_by,"Instances",o_skeleton_bone);
				_bone.direction = 90 - (image_xscale * random_range(30,60));//determines the directions the bones fly in so that they always fly away from the enemy hitting you
				_bone.speed = random_range(3,10);
				_bone.image_index = _i;//we create one of every single bone
				if _i == 5 _bone.image_angle = 130;//for the sword specifically
			}
			ini_open("save.ini");
			ini_write_real("Scores", "Kills", other.kills);
			var _highscore = ini_read_real("Scores", "Highscore", 0);
			if other.kills > _highscore 
			{
				ini_write_real("Scores","Highscore", other.kills);
			}
			ini_close();
			
		}
		}
	} else
	{
		other.alarm[0] = 120;
		add_screenshake(2,5);
	}
}

ds_list_add(hit_objects, other);//we add the id of the object we just hit
if other.state != "death" && other.object_index != o_boss
{
	other.state = "knockBack";
}
other.knockBack_speed = knockBack * image_xscale;



//other.image_xscale = -image_xscale;//immediately sets the enemy's image_xscale to the opposite of our image_xscale. 

