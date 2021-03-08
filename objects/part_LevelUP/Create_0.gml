/// @desc

master = noone;

//levelup Particle System
ps_Level = part_system_create();
part_system_depth(ps_Level, -1);

//levelup Particle Types
//LevelUP_L
pt_LevelUP_L = part_type_create();
part_type_shape(pt_LevelUP_L, pt_shape_square);
part_type_size(pt_LevelUP_L, 0.01, 0.10, 0, 0);
part_type_scale(pt_LevelUP_L, 1, 1);
part_type_orientation(pt_LevelUP_L, 0, 0, 0, 0, 0);
part_type_color3(pt_LevelUP_L, 4259584, 16776960, 16744448);
part_type_alpha3(pt_LevelUP_L, 1, 1, 1);
part_type_blend(pt_LevelUP_L, 1);
part_type_life(pt_LevelUP_L, 100, 150);
part_type_speed(pt_LevelUP_L, 1, 2, 0, 0);
part_type_direction(pt_LevelUP_L, 130, 220, 0, 0);
part_type_gravity(pt_LevelUP_L, 0, 0);

//LevelUP_R
pt_LevelUP_R = part_type_create();
part_type_shape(pt_LevelUP_R, pt_shape_square);
part_type_size(pt_LevelUP_R, 0.01, 0.10, 0, 0);
part_type_scale(pt_LevelUP_R, 1, 1);
part_type_orientation(pt_LevelUP_R, 0, 0, 0, 0, 0);
part_type_color3(pt_LevelUP_R, 4259584, 16776960, 16744448);
part_type_alpha3(pt_LevelUP_R, 1, 1, 1);
part_type_blend(pt_LevelUP_R, 1);
part_type_life(pt_LevelUP_R, 100, 150);
part_type_speed(pt_LevelUP_R, 1, 2, 0, 0);
part_type_direction(pt_LevelUP_R, -42, 33, 0, 0);
part_type_gravity(pt_LevelUP_R, 0, 0);

//levelup Emitters
pe_LevelUP_L = part_emitter_create(ps_Level);
pe_LevelUP_R = part_emitter_create(ps_Level);

//levelup emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;

// L 왼쪽 
part_emitter_stream(ps_Level, pe_LevelUP_L, pt_LevelUP_L, 1);
part_emitter_region(ps_Level, pe_LevelUP_L, xp-90, xp-100, yp-50, yp+50, ps_shape_line, ps_distr_linear);


// R 오른쪽 
part_emitter_stream(ps_Level, pe_LevelUP_R, pt_LevelUP_R, 1);
part_emitter_region(ps_Level, pe_LevelUP_R, xp+90, xp+100, yp-50, yp+50, ps_shape_line, ps_distr_linear);



