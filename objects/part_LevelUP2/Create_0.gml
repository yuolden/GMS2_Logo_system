/// @desc

master = noone;


//levelup2 Particle System
ps_hole02 = part_system_create();
part_system_depth(ps_hole02, -1);

pt_LevelUp2_L = part_type_create();


part_type_sprite(pt_LevelUp2_L, s_part_eff01, 1, 0, 0);
part_type_size(pt_LevelUp2_L, 0.10, 0.10, 0, 0);
part_type_scale(pt_LevelUp2_L, 1, 1);
part_type_orientation(pt_LevelUp2_L, 0, 0, 0, 0, 0);
part_type_color3(pt_LevelUp2_L, 16777215, 33023, 255);
part_type_alpha3(pt_LevelUp2_L, 0.82, 1, 0);
part_type_blend(pt_LevelUp2_L, 1);
part_type_life(pt_LevelUp2_L, 120, 120);
part_type_speed(pt_LevelUp2_L, 0.10, 1, 0, 0);
part_type_direction(pt_LevelUp2_L, 180, 180, 0, 3);
part_type_gravity(pt_LevelUp2_L, 0, 0);

pt_LevelUp2_R = part_type_create();
part_type_sprite(pt_LevelUp2_R, s_part_eff01, 1, 0, 0);
part_type_size(pt_LevelUp2_R, 0.10, 0.10, 0, 0);
part_type_scale(pt_LevelUp2_R, 1, 1);
part_type_orientation(pt_LevelUp2_R, 0, 0, 0, 0, 0);
part_type_color3(pt_LevelUp2_R, 16777215, 33023, 255);
part_type_alpha3(pt_LevelUp2_R, 0.82, 1, 0);
part_type_blend(pt_LevelUp2_R, 1);
part_type_life(pt_LevelUp2_R, 120, 120);
part_type_speed(pt_LevelUp2_R, 0.10, 1, 0, 0);
part_type_direction(pt_LevelUp2_R, 0, 0, 0, 3);
part_type_gravity(pt_LevelUp2_R, 0, 0);

//levelup2 Emitters
pe_LevelUp2_L = part_emitter_create(ps_hole02);
pe_LevelUp2_R = part_emitter_create(ps_hole02);

//levelup2 emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
// 왼쪽 이미터 
part_emitter_stream(ps_hole02, pe_LevelUp2_L, pt_LevelUp2_L, 1);
part_emitter_region(ps_hole02, pe_LevelUp2_L, xp-12, xp-12, yp+29, yp-29, ps_shape_line, ps_distr_linear);

//오른쪽 이미터 
part_emitter_stream(ps_hole02, pe_LevelUp2_R, pt_LevelUp2_R, 1);
part_emitter_region(ps_hole02, pe_LevelUp2_R, xp+12, xp+12, yp+29, yp-29, ps_shape_line, ps_distr_linear);



//Destroying Emitters
//part_emitter_destroy(ps_hole02, pe_holeLevelUp2_L);