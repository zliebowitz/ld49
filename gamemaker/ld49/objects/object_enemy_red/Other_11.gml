/// @description glitced
has_glitched = true;
sprite_index = faceless_enemy_sprite;
instance_create_depth(x, y, -50, object_enemy_face);
instance_create_depth(x, y, -50, object_mite_static);
state = "bugged"; 
alarm[0] = -1;
