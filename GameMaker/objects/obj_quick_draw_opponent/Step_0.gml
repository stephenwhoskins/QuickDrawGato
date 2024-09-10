/// @description Insert description here
// You can write your code in this editor

var _game_logic = instance_find(obj_quick_draw_game_logic, 0);

if (hit && path_index == -1 && alarm[0] == -1)
{
	alarm[0] = game_get_speed(gamespeed_fps);
}

if (_game_logic == noone) return;

if (!hit && _game_logic.state == _game_logic.states.fire && fire_time < max_fire_time)
{
	fire_time = min(fire_time + delta_time, max_fire_time);
	if (fire_time == max_fire_time)
	{
		sprite_index = spr_quick_draw_opponent_1_firing;
		var _bullet = instance_create_depth(x - 16.0, y, depth - 1, obj_quick_draw_gato_bullet);
		_bullet.speed = -_bullet.speed;
	}
}