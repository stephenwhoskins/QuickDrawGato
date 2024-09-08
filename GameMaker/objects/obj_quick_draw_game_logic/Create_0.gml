/// @description Insert description here
// You can write your code in this editor

states =
{
	start: 
	{
		level_1: 3000000,
		level_2: 3000000,
		level_3: 3000000,
	},
	get_ready:
	{
		level_1: 3000000,
		level_2: 3000000,
		level_3: 3000000,
	},
	fire:
	{
		level_1: 3000000,
		level_2: 3000000,
		level_3: 3000000,
	},
	foul: 4,
	firing: 5,
}

function increase_level()
{
	state = states.start;
	level++;
	audio_play_sound(snd_music_quick_draw, 10, false);
}

state = states.start;
level = 0;

max_state_time = state.level_1;
state_time = 0;

action_pressed = false;

increase_level();