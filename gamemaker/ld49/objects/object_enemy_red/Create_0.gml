event_inherited();

enum enemy_ai_types
{
	seek,
	wander
}

enemy_ai_type = enemy_ai_types.seek;

state = "idle";

target_x = 0;
target_y = 0;

move_speed = .5;
wander_frames = 100;
has_glitched = false;
faceless_enemy_sprite = sprite_enemy_red_faceless;

colided = false;
