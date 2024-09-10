/// @description Insert description here
// You can write your code in this editor

if (hit && path_index == -1)
{
	if (flash_time < half_max_flash_time)
	{
		draw_self();
	}
	
	flash_time = (flash_time + delta_time) % max_flash_time;
}
else
{
	draw_self();
}