/// @description Insert description here
// You can write your code in this editor

if (hit) return;

var _game_logic = instance_find(obj_quick_draw_game_logic, 0);

if (_game_logic != noone)
{
	if (keyboard_check(vk_space) && !action_pressed)
	{
		if (sprite_index != states.firing_0)
		{
			if (_game_logic.state == _game_logic.states.fire || _game_logic.state == _game_logic.states.firing)
			{
				sprite_index = states.firing_0;
				instance_create_depth(x + 16.0, y, depth, obj_quick_draw_gato_bullet);
				alarm[0] = 0.000001 * game_get_speed(gamespeed_fps) * _game_logic.max_state_time / 2;
			}
		}
		action_pressed = true;
	}
	else if (!keyboard_check(vk_space) && action_pressed)
	{
		action_pressed = false;
	}
}