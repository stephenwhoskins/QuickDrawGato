/// @description Insert description here
// You can write your code in this editor

if (fade_time >= max_fade_time) return;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

image_alpha = 1.0 - fade_time / max_fade_time;

fade_time = min(fade_time + delta_time, max_fade_time);