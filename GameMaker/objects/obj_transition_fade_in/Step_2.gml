/// @description Insert description here
// You can write your code in this editor

if (fade_time_microsecs >= max_fade_time_microsecs) return;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

image_alpha = 1.0 - fade_time_microsecs / max_fade_time_microsecs;

fade_time_microsecs = min(fade_time_microsecs + delta_time, max_fade_time_microsecs);