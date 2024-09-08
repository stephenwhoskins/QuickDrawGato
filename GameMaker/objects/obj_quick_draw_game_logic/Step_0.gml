/// @description Insert description here
// You can write your code in this editor

if (level == 4) return;

if (state_time_microsecs >= max_state_time_microsecs)
{
	switch (game_state)
	{
		case game_states.start:
		{
			game_state = game_states.get_ready;
			break;
		}
		case game_states.get_ready:
		{
			game_state = game_states.fire;
			break;
		}
		case game_states.fire:
		{
			game_state = game_states.start;
			level++;
			break;
		}
	}
	
	switch (level)
	{
		case 1:
		{
			max_state_time_microsecs = game_state.level_1;
			break;
		}
		case 2:
		{
			max_state_time_microsecs = game_state.level_2;
			break;
		}
		case 3:
		{
			max_state_time_microsecs = game_state.level_3;
			break;
		}
	}
	
	state_time_microsecs = 0;
}

state_time_microsecs = min(state_time_microsecs + delta_time, max_state_time_microsecs);