if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1 //this makes it so that it won't be killed by its own hitboxes, and so that it doesn't confuse our hitbox with its own. 
{
	exit;//exit out of this code
}

other.hp -= damage;//we deal damage to the object

ds_list_add(hit_objects, other);//we add the id of the object we just hit
other.state = "knockBack";
other.knockBack_speed = knockBack * image_xscale;
//other.image_xscale = -image_xscale;//immediately sets the enemy's image_xscale to the opposite of our image_xscale. 

