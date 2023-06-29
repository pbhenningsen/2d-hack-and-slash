// This function is what requires the player to get their button press timing right to perform the combo. It sees whether or not they're currently between animation frames 2 and 4, and if they're not, returns a false that won't let them perform the combo

function animation_hit_frame_range(_low,_high){
	return image_index >= _low && image_index <= _high; //"Return" allows us to spit information back OUT of a script, spits out true if they're both true and false if one is false
}