/// @desc


//Destroying Emitters
if part_emitter_exists(ps_hole, pe_holeEffect0) {
part_emitter_destroy(ps_hole, pe_holeEffect0);
part_emitter_destroy(ps_hole, pe_holeEffect1);
part_emitter_destroy(ps_hole, pe_holeEffect2);}

if part_system_exists(ps_hole) { part_system_destroy(ps_hole)		}