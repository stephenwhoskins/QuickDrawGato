/// @description Insert description here
// You can write your code in this editor

if (level == 4) return;

if (state_time >= max_state_time)
{
	switch (state)
	{
		case states.start:
		{
			state = states.get_ready;
			break;
		}
		case states.get_ready:
		{
			state = states.fire;
			break;
		}
		case states.fire:
		{
			increase_level();
			break;
		}
		case states.foul:
		{
			increase_level();
			break;
		}
		case states.firing:
		{
			increase_level();
			break;
		}
	}
	
	switch (level)
	{
		case 1:
		{
			max_state_time = state.level_1;
			break;
		}
		case 2:
		{
			max_state_time = state.level_2;
			break;
		}
		case 3:
		{
			max_state_time = state.level_3;
			break;
		}
	}
	
	state_time = 0;
}

if (keyboard_check(vk_space) && !action_pressed)
{
	if (state != states.foul && state != states.firing)
	{
		switch (state)
		{
			case states.start:
			{
				state = states.foul;
				break;
			}
			case states.get_ready:
			{
				state = states.foul;
				break;
			}
			case states.fire:
			{
				state = states.firing;
				break;
			}
		}
	
		state_time = 0;
	}
	
	action_pressed = true;
}
else if (!keyboard_check(vk_space) && action_pressed)
{
	action_pressed = false;
}

state_time = min(state_time + delta_time, max_state_time);