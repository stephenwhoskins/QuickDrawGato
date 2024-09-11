/// @description Insert description here
// You can write your code in this editor

path_start(pth_quick_draw_gato_fall, 720.0 / game_get_speed(gamespeed_fps), path_action_stop, false);
hit = true;
sprite_index = spr_quick_draw_gato_falling;
instance_create_depth(x - 64, 120, depth - 1, obj_quick_draw_opponent_hat);
instance_destroy(other.id);