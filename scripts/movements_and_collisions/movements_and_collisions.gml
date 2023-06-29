function move_and_crash(_hSpeed,_vSpeed)
{
	if !place_meeting(x+_hSpeed,y,o_wall) 
	{
		x += _hSpeed;
		
	}
	
	if !place_meeting(x,y+_vSpeed,o_wall)
	{
		y += _vSpeed;	
	}
}