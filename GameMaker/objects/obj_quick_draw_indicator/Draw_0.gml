/// @description Insert description here
// You can write your code in this editor

var _game_logic = instance_find(obj_quick_draw_game_logic, 0);

if (_game_logic != noone)
{
	if (_game_logic.state != _game_logic.states.fire
	&& _game_logic.state != _game_logic.states.foul
	&& _game_logic.state != _game_logic.states.firing)
	{
		if (_game_logic.state != _game_logic.states.get_ready
		|| flash_time < half_max_flash_time
		)
		{
			draw_self();
			draw_set_font(global.quick_draw_font);
			draw_text(x + sprite_width + string_width(string(" ")) + 7, y, string(_game_logic.level));
			draw_set_font(-1);
		}
	}
	else if (_game_logic.state == _game_logic.states.foul)
	{
		draw_sprite(spr_quick_draw_indicator_foul, 0, x, y);
	}
	else
	{
		draw_sprite(spr_quick_draw_indicator_fire, 0, x, y);
	}
	
	flash_time = (flash_time + delta_time) % max_flash_time;
}