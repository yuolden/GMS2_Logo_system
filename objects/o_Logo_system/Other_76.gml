/// @desc
//if (live_call()) return live_result;  // gmlive 기본셋팅 
//if not (surface_exists(oP_surf)){ } //서피스 사용시 기본 
//if instance_exists() {} //인스턴스 확인 

var type = event_data[? "event_type"];
var message = event_data[? "message"];

if ( type == "sequence event" ) {

	switch(message) {	
	case "Sq01 end" :	
	
	// 페이드 아웃 설정 
	Camera_Fadeout_sw(1);
	
	//layer_sequence_destroy(Sq_Logo_AGP)	
	alarm[1] = room_speed * 2; //1초후 룸 이동.  
	
	// 파티클 정리 
	//Destroying Emitters
	with(Part_starway) {
	part_emitter_destroy(ps_hole, pe_holeEffect0);
	part_emitter_destroy(ps_hole, pe_holeEffect1);
	}
	
	break;	

	} 
}






