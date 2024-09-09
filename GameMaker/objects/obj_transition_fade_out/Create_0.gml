/// @description Insert description here
// You can write your code in this editor

image_xscale = camera_get_view_width(view_camera[0]) / sprite_width;
image_yscale = camera_get_view_height(view_camera[0]) / sprite_height;

image_blend = c_black;
image_alpha = 0.0;

max_fade_time = 1000000;
fade_time = 0;

room_id = -1;