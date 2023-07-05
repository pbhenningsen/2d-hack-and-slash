function animation_hit_frame(_frame)
{
	var _frame_range = image_speed * sprite_get_speed(sprite_index) /game_get_speed(gamespeed_fps);//This is to address the fact that my room speed is 60 fps and my animation speed (set in the sprite) is 30 fps
	show_debug_message(image_index);
	return image_index >= _frame && image_index < _frame+_frame_range;//we'll hit someting greater than or equal to 6 and something smaller than 6.7 BECAUSE our image speed is 0.7, and we're moving 0.7 pixels per frame.  

}