/// @description Insert description here
// You can write your code in this editor

game_states =
{
	start: 
	{
		level_1: 3000000,
		level_2: 3000000,
		level_3: 3000000,
	},
	get_ready:
	{
		level_1: 4000000,
		level_2: 4000000,
		level_3: 4000000,
	},
	fire:
	{
		level_1: 5000000,
		level_2: 5000000,
		level_3: 5000000,
	},
}

game_state = game_states.start;
level = 1;

max_state_time_microsecs = game_state.level_1;
state_time_microsecs = 0;