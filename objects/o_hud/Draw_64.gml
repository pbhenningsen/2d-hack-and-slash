var _hp_x = 8;
var _hp_y = 8;
var _hp_width = 198;
var _hp_height = 10;
if instance_exists(o_skeleton)
{
	draw_hp = lerp(draw_hp, o_skeleton.hp, 0.2);
	draw_max_hp = o_skeleton.max_hp;
} else {
	draw_hp = lerp(draw_hp, 0, 0.2);
	var _hp_percent = draw_hp 
}
var _hp_percent = draw_hp / draw_max_hp;
draw_rectangle_color(_hp_x,_hp_y,_hp_x +(_hp_width * _hp_percent),_hp_y + _hp_height,c_white,c_white,c_white,c_white,false);
draw_line_width_color(_hp_x-1,_hp_y-1,_hp_x +_hp_width,_hp_y-1,1, c_dkgray,c_dkgray);
draw_line_width_color(_hp_x-1,_hp_y+_hp_height,_hp_x +_hp_width,_hp_y+_hp_height,1, c_dkgray,c_dkgray);
draw_line_width_color(_hp_x-1,_hp_y-1,_hp_x -1,_hp_y+_hp_height,1, c_dkgray,c_dkgray);
draw_line_width_color(_hp_x+_hp_width,_hp_y-1,_hp_x+_hp_width,_hp_y+_hp_height+0,1, c_dkgray,c_dkgray);

if !instance_exists(o_skeleton) exit;

_text = "Kills: " +string(o_skeleton.kills);
var _text_width = string_width(_text);
var _text_height = string_height(_text);
var _start_x = 7;
var _start_y = 25;
var _padding_x = 6;
var _padding_y = 4;

draw_rectangle_color(_start_x,_start_y,_start_x+_text_width+_padding_x,_start_y+_text_height+_padding_y,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
draw_text(_start_x+_padding_x/2,_start_y+_padding_y,_text);


_text = "Level: " +string(o_skeleton.level);
_start_x += _text_width + _padding_x*2;
var _text_width = string_width(_text);
var _text_height = string_height(_text);


draw_rectangle_color(_start_x,_start_y,_start_x+_text_width+_padding_x,_start_y+_text_height+_padding_y,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
draw_text(_start_x+_padding_x/2,_start_y+_padding_y,_text);
