/// @description Insert description here
// You can write your code in this editor

image_xscale = camera_get_view_width(view_camera[0]) / sprite_width;
image_yscale = camera_get_view_height(view_camera[0]) / sprite_height;

image_blend = c_black;

max_fade_time_microsecs = 1000000;
fade_time_microsecs = 0;