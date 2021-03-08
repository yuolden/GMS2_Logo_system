/// @desc

//Wormholl emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_stream(ps_hole, pe_holeEffect2, pt_holeEffect2, -60);
part_emitter_region(ps_hole, pe_holeEffect2, xp-1, xp+1, yp+0, yp+0, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps_hole, pe_holeEffect1, pt_holeEffect1, 1);
part_emitter_region(ps_hole, pe_holeEffect1, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps_hole, pe_holeEffect0, pt_holeEffect0, 1);
part_emitter_region(ps_hole, pe_holeEffect0, xp-3, xp+3, yp-4, yp+4, ps_shape_rectangle, ps_distr_linear);

