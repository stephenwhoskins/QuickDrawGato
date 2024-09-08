/// @description Insert description here
// You can write your code in this editor

var _game_logic = instance_find(obj_quick_draw_game_logic, 0);

sprite_index = states.gunspinning;

alarm[1] = 0.000001 * game_get_speed(gamespeed_fps) * _game_logic.max_state_time / 2;