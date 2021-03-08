/// @desc Logo Basic 

// === 알파 관재  ===
image_alpha = 0;
Logo2Alpha = 0; //로고 알파 초기값 

// ====== 로고 텍스트 =====
Font1 = F_ohc;

_text1 = "ONE HANDED CLICK";
_text2 = "+INDIE GAME STUDIO+" 
_text3 = " 한손클릭 "

_text1_len = string_length(_text1); //글자수 반환 

// ====== 화면 연출  =========
Scal = 10;  //배경상자 로직 
TCount = 0; //글자 생성 시간차 
Seq_Timer = 0; // 시퀀스용 타이머 

Seq_sw = false;//시퀀스 발동 스위치 

// ====== 타이머 설정 =====
Timer = room_speed *2; //타이머 
Timer2 = room_speed *2; //타이머2

//Logo 그림자. 
logoType = Logo1; //로고타입 
logoTypeS = Logo2; //로고타입그림자. 

LogoX = 0; //로고 그림자. x좌표 
LogoY = 0; //로고 그림자. y좌표 

// ====== 로고 bgm =====
var Logo_BGM = noone; //로고 bgm
if not audio_is_playing(Logo_BGM) { audio_play_sound( Logo_BGM, 5, 0);}

//자체적인 페이드 인아웃시스템을 구현 
// ============== 페이드 관련 함수 =========================
Gui_W = display_get_gui_width();
Gui_H = display_get_gui_height();
Gui_X = display_get_gui_width() - display_get_gui_width();
Gui_Y = display_get_gui_height() - display_get_gui_height();

flash_sw = false; _alpha = 1; flash_input = 0.2;flash_c = c_white;
Fadein_sw = false; Fi_alpha = 1; Fi_alpha_Add = 0.01; //알파 마이너스 추가점 
Fadeout_sw = false; Fo_alpha = 0; Fi_alpha_out = 0.01;

 // 이로직은 재사용을 위해 로고 시스템 내에서만 활용 됨 
// =============== 카메라 페이드 인  ==================== Camera_Fadein_sw(1);
function Camera_Fadein_sw(_Timer_Add) {	
	
	// 카메라 페이드 인 추천 Fi_alpha_Add = 0.01
	Fadein_sw = true; Fi_alpha_Add = _Timer_Add/100; 
}

// =============== 카메라 페이드 아웃   ==================== Camera_Fadeout_sw(1);
function Camera_Fadeout_sw(_Timer_out) {	
	
	// 카메라 페이드 아웃 추천 Fi_alpha_Add = 0.01
	 Fadeout_sw = true; Fi_alpha_out = _Timer_out/100; 
}
// =====================================================================
// 시작시 페이드 인 구현
Camera_Fadein_sw(1);

alarm[0] = room_speed * 0.5; //파티클 시스템 작성 



