keyboard_set_map(ord("A"), vk_left);//putting it here instead of the script because we don't need to map this every frame, just set it once at the beginning of the game. 
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("J"), vk_delete);
keyboard_set_map(ord("K"), vk_space);

get_input();
