/// @description Insert description here
// You can write your code in this editor

states =
{
	start: 
	{
		level_1: 2000000,
		level_2: 2000000,
		level_3: 2000000,
		level_4: 2000000,
		level_5: 2000000,
	},
	get_ready:
	{
		level_1: 2000000,
		level_2: 2000000,
		level_3: 2000000,
		level_4: 2000000,
		level_5: 2000000,
	},
	fire:
	{
		level_1: 2000000,
		level_2: 2000000,
		level_3: 2000000,
		level_4: 2000000,
		level_5: 2000000,
	},
	foul:
	{
		level_1: 2000000,
		level_2: 2000000,
		level_3: 2000000,
		level_4: 2000000,
		level_5: 2000000,
	},
	firing:
	{
		level_1: 2000000,
		level_2: 2000000,
		level_3: 2000000,
		level_4: 2000000,
		level_5: 2000000,
	},
}

function increase_level()
{
	var _gato = instance_find(obj_quick_draw_gato, 0);
	if ((_gato != noone && _gato.hit && _gato.path_index == -1) || state == states.foul)
	{
		obj_transition_fade_out.room_id = rm_quick_draw_score;
		return;
	}
	
	if (level < 5) 
	{
		state = states.start;
		level++;
		instance_create_depth(304, 160, depth, obj_quick_draw_opponent);
		audio_play_sound(snd_music_quick_draw, 10, false);
	}
	else
	{
		obj_transition_fade_out.room_id = rm_quick_draw_score;
	}
}

state = states.start;
level = 0;

max_state_time = state.level_1;
state_time = 0;

action_pressed = false;

increase_level();