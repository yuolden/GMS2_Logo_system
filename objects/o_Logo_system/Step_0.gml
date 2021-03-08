/// @desc

// 타이머 가동 로직 
if Timer < 0 +1 { TCount += room_speed/300;}else{ Timer-- ;}

// 글자가 다새겨진 이후에 로고 표기 
if TCount >= _text1_len  { Logo2Alpha += 0.01; if LogoX < 5 {LogoX += 0.1; LogoY +=0.1; }		} 

// 글자 다 그려지면 시퀀스 플레이 
if Logo2Alpha ==1  { Logo2Alpha = 1;  Seq_sw = true; } 

/// 이미지 스무드하게 
if image_alpha < 1+ 0.01 { image_alpha += 0.01; }


// 시퀀스용 로직 (우주비행사용)
if (Seq_sw) {

// 로고 시퀀스 생성. 
layer_sequence_create("SEQ", room_width/2, room_height/2 ,Sq_Logo_AGP);

Seq_sw = false;
}
