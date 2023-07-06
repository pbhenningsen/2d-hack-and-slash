if !instance_exists(o_skeleton) exit;
var _hp_x = 8;
var _hp_y = 8;
var _hp_width = 198;
var _hp_height = 14;
draw_hp = lerp(draw_hp,o_skeleton.hp,0.1);//our draw_hp will approach the skeleton's hp by 10% every frame
var _hp_percent = draw_hp/o_skeleton.max_hp; 
draw_rectangle_color(_hp_x,_hp_y,_hp_x +(_hp_width * _hp_percent),_hp_y + _hp_height,c_white,c_white,c_white,c_white,false);