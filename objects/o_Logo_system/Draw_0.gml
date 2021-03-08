/// @desc LOGO GUI 

//기본 배경 

// <알파 관재> 
//draw_set_alpha(image_alpha);

//기본 사각형 로직
if Scal < 150 { Scal += 4;}
var c_c1 = c_dkgray, c_c2 = c_gray ;

draw_rectangle_color(x -Scal,y -Scal, x +Scal,y +Scal, c_c1, c_c2, c_c2, c_c1, 0); //상자 
draw_rectangle_color(x -Scal,y -Scal, x +Scal,y +Scal, -1, -1, -1, -1, 1); //라인 

// 알파 관재 END
draw_set_alpha(1);

//한글(로고) 표기 
	draw_sprite_ext(logoTypeS,-1,x +LogoX,y -10 +LogoY,0.5,0.5,0,-1,Logo2Alpha); //그림자 
draw_sprite_ext(logoType,-1,x,y -10,0.5,0.5,0,-1,Logo2Alpha);

draw_set_font(F_ohc);
draw_set_halign(fa_center);

//아래 글자. 
draw_text_transformed_color( x,y +50, string(_text2),0.7,0.7,0,
			-1, -1, -1, -1, Logo2Alpha);

// ===== Text 표기  ======


draw_text_transformed_color( x +3,y -20 +3, string_copy(_text1,0,floor(TCount)),1.5,1.5,0, // 그림자 
				0, 0, 0, 0, 1);
				
draw_text_transformed_color( x,y -20, string_copy(_text1,0,floor(TCount)),1.5,1.5,0,
				-1, -1, -1, -1, 1);



draw_set_halign(-1);
// ==== Debug =======

draw_set_font(-1);

////타이머 1 
//draw_text(10,10,string("Time : ") +string(floor(Timer)));

////타이머 2
//draw_text(10,20,string("Time2: ") +string(floor(Timer2)));

////알파관재 
//draw_text(10,30,string("alpha: ") +string(floor(image_alpha)));



// -------------------- 특성 효과 페이드 인/아웃/후레쉬) ----------------
if (Fadein_sw) { //페이드 인  효과 
	draw_set_alpha(Fi_alpha);
draw_rectangle_color(Gui_X,Gui_Y,Gui_W,Gui_H,c_black,c_black,c_black,c_black,0);
	draw_set_alpha(1);
Fi_alpha = Fi_alpha - Fi_alpha_Add;   
if  Fi_alpha < 0 {  Fadein_sw = false; Fi_alpha = 1;}
}

if (Fadeout_sw) { //페이드 아웃   효과 
	draw_set_alpha(Fo_alpha);
draw_rectangle_color(Gui_X,Gui_Y,Gui_W,Gui_H,c_black,c_black,c_black,c_black,0);
	draw_set_alpha(1);
Fo_alpha = Fo_alpha + Fi_alpha_out;
//if  Fo_alpha > 2 {  Fadeout_sw = false; Fo_alpha = 0;}
}
