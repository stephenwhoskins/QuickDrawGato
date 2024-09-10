/// @description Insert description here
// You can write your code in this editor

path_start(pth_quick_draw_opponent_1_fall, 960.0 / game_get_speed(gamespeed_fps), path_action_stop, false);
hit = true;
global.hits++;
sprite_index = spr_quick_draw_opponent_1_hit;
instance_create_depth(288 + 16 * obj_quick_draw_game_logic.level, 120, depth - 1, obj_quick_draw_opponent_hat);

instance_destroy(other.id);