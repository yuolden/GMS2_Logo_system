/// @desc Logo 용 파티클 시스템 

//Generated for GMS2 in Geon FX v1.2.4
//Put this code in Create event
master = o_Logo_system;
depth = master.depth;
//Wormholl Particle System
ps_hole = part_system_create();
part_system_depth(ps_hole, depth);

//Wormholl Particle Types
//Effect0
pt_holeEffect0 = part_type_create();
part_type_shape(pt_holeEffect0, pt_shape_pixel);
part_type_size(pt_holeEffect0, 1, 2, 0, 0);
part_type_scale(pt_holeEffect0, 20, 0.50);
part_type_orientation(pt_holeEffect0, 0, 0, 0, 0, 1);
part_type_color3(pt_holeEffect0, 65408, 16744448, 255);
part_type_alpha3(pt_holeEffect0, 0, 1, 0);
part_type_blend(pt_holeEffect0, 1);
part_type_life(pt_holeEffect0, 100, 100);
part_type_speed(pt_holeEffect0, 3, 10, 0, 0);
part_type_direction(pt_holeEffect0, 0, 359, 0, 0);
part_type_gravity(pt_holeEffect0, 0, 0);

//Effect1
pt_holeEffect1 = part_type_create();
part_type_shape(pt_holeEffect1, pt_shape_pixel);
part_type_size(pt_holeEffect1, 1, 2, 0, 0);
part_type_scale(pt_holeEffect1, 1, 1);
part_type_orientation(pt_holeEffect1, 0, 0, 0, 0, 0);
part_type_color3(pt_holeEffect1, 16711678, 16776958, 16776959);
part_type_alpha3(pt_holeEffect1, 0, 1, 0);
part_type_blend(pt_holeEffect1, 1);
part_type_life(pt_holeEffect1, 80, 80);
part_type_speed(pt_holeEffect1, 10, 15, 0, 0);
part_type_direction(pt_holeEffect1, 0, 359, 0, 0);
part_type_gravity(pt_holeEffect1, 0, 0);

//Effect2
pt_holeEffect2 = part_type_create();
part_type_shape(pt_holeEffect2, pt_shape_ring);
part_type_size(pt_holeEffect2, 1, 1, 1, 0);
part_type_scale(pt_holeEffect2, 1, 1);
part_type_orientation(pt_holeEffect2, 0, 0, 0, 0, 0);
part_type_color3(pt_holeEffect2, 16777215, 16777215, 14969539);
part_type_alpha3(pt_holeEffect2, 0, 0.15, 0);
part_type_blend(pt_holeEffect2, 1);
part_type_life(pt_holeEffect2, 80, 80);
part_type_speed(pt_holeEffect2, 0, 0, 0, 0);
part_type_direction(pt_holeEffect2, 0, 359, 0, 0);
part_type_gravity(pt_holeEffect2, 0, 0);

//Wormholl Emitters
pe_holeEffect0 = part_emitter_create(ps_hole);
pe_holeEffect1 = part_emitter_create(ps_hole);
pe_holeEffect2 = part_emitter_create(ps_hole);



