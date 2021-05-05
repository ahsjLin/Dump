;###########################################label
;####################level up
Level_up:
	if(perc_exp>=100)
	{
		Lv++
		GuiControl,Main:,Lv,%Lv%
		ori_exp -= Max_exp
		Max_exp += sqrt(Max_exp)*sqrt(Lv)
		perc_exp := (ori_exp/Max_exp)*100
		GuiControl,Main:,exp,%perc_exp%
		GuiControl,Main:,exp_text,%perc_exp%
		;------------------------------change Statistics
		Level_up_value(atk,atk_effort)
		GuiControl,Main:,atk_v,%atk%
		Level_up_value(mag,mag_effort)
		GuiControl,Main:,mag_v,%mag%
		Level_up_value(men,men_effort)
		GuiControl,Main:,men_v,%men%
		Level_up_value(int,int_effort)
		GuiControl,Main:,int_v,%int%
		Level_up_value(spd,spd_effort)
		GuiControl,Main:,spd_v,%spd%
		;------------------------------change HP
		Level_up_hp_mp_value(Max_hp, hp_effort)
		GuiControl,Main:,hp_text_v,%ori_hp%/%Max_hp%
		GuiControl,Main:,hp,% floor((ori_hp/Max_hp)*100) ;hp progress
		Level_up_hp_mp_value(Max_mp, mp_effort)
		GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100) ;mp progress
		;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		;###############################	tooltip remind
		toolname ="LEVEL UP"
		gosub tooltip_remind
		;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		;==============================
		;#######################	character check
		gosub Character_Check
		;@@@@@@@@@@@@@@@@@@@@@@
		;======================
	}
	return
;@@@@@@@@@@@@@@@@@@@
;===================
;-----------------------
;#############
EX_Level_up:
	;##########################	Exp point
	ori_exp++
	perc_exp := (ori_exp/Max_exp)*100
	GuiControl,Main:,exp,%perc_exp%
	GuiControl,Main:,exp_text,%perc_exp%`%
	;@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################Level up
	gosub Level_up
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===================================
	return
refresh_skill_bar:
	sk1Lv:= Fire_Ball_level
	sk2Lv:= Curse_level
	sk3Lv:= Taunt_level
	sk4Lv:= Invisibility_level
	sk5Lv:= Overload_level

	GuiControl, Main:,sk1_vbar,% sk1 . sk1Lv
	GuiControl, Main:,sk2_vbar,% sk2 . sk2Lv
	GuiControl, Main:,sk3_vbar,% sk3 . sk3Lv
	GuiControl, Main:,sk4_vbar,% sk4 . sk4Lv
	GuiControl, Main:,sk5_vbar,% sk5 . sk5Lv

	return
;@@@@@@@@@@@@@@@@@@@
;====================
;###########################	Character Check
Character_Check:
	if(Lv<30)
	{
		GuiControl, Main: +cbfbfbf,cr
		GuiControl,Main:,cr,%Cr%
	}
	else if(Lv>=30 && Lv<60)
	{
		GuiControl,Main:+c3333cc,cr
		GuiControl,Main:,cr,%Cr1%
	}
	else if(Lv>=60 && Lv<120)
	{
		GuiControl,Main:+cb3b300,cr
		GuiControl, Main:, cr, %Cr2%
	}
	else if(Lv>=120 && Lv<200)
	{
		GuiControl,Main:+ccc66ff,cr
		GuiControl, Main:, cr, %Cr3%
	}
	else if(Lv>=200)
	{
		GuiControl, Main: +cff0000, cr
		GuiControl, Main:, cr, %Cr4%
	}
	return

;@@@@@@@@@@@@@@@@@@@@@@@@@@@
;===========================
;####################mouse move
mouse_move:
	MouseGetPos, x_pos1, y_pos1
	SetTimer, Get_New_Mouse_pos, 500
	return
;@@@@@@@@@@@@@@@@@@@
;===================
;####################
;--------------------Mouse control
Get_New_Mouse_pos:
	MouseGetPos, x_pos2, y_pos2
	if(x_pos1!=x_pos2 || y_pos1!=y_pos2)
	{
		mouse_Distance := floor(Sqrt(((x_pos1 - x_pos2)**2) + ((y_pos1 - y_pos2)**2)))
		total_distance := total_distance + mouse_Distance
		x_pos1 := x_pos2
		y_pos1 := y_pos2
		if((total_distance//counter_move_once)>1)
		{
			loop
			{
				total_distance -= counter_move_once
				move_effort_temp++
					;###########################	effort calculator
					calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
					calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
					;@@@@@@@@@@@@@@@@@@@@@@@@@@@
					;===========================
					;###########################	ex_level_up
					gosub EX_Level_up
					;@@@@@@@@@@@@@@@@@@@@@@@@@@@
					;===========================
					;###########################	strength
					f_st++
					;@@@@@@@@@@@@@@@@@@@@@@@@@@@
					;===========================
				if(total_distance<counter_move_once)
					break
			}
			total_distance := 0
		}
	}
	return
;@@@@@@@@@@@@@@@@@@@@@@@@
;========================
;#####################strength
/*
~]::
	f_st := f_st +20
	return
*/
strength:
	if(st<20)
		tooltip,Strength low,0,0,1
	else
		tooltip,,,,1
	gap_st :=f_st-s_st
	if(gap_st==0)
	{
		s_st :=0
		f_st := 0
		st++
		;------------------change status to excited
		excited_value--
		if(excited_value<0)
		{
			excited_value :=0
		}
		;-------------------------------
		ori_hp += Max_hp//100
		ori_mp += Max_mp//100
		if(st>=100)
		{
			st := 100
			excited_value := 0
			ori_hp += Max_hp//300
			ori_mp += Max_mp//300
			;------------change status
			GuiControl, Main:+cGreen,status_text
			GuiControl, Main:, status_text, Normal 
		}
		if(st>20)
		{
			if(excited_value<15)
			{
				GuiControl, Main:+cGreen,status_text
				GuiControl, Main:, status_text, Normal 
			}
			else if(excited_value>15 && excited_value<40)
			{
				GuiControl, Main:+cPurple,status_text
				GuiControl, Main:, status_text,  Excited
			}
			if(excited_value>=40)
			{
				GuiControl, Main:+cRed, status_text
				GuiControl, Main:, status_text, Frantic
			}
		}
		GuiControl,Main:,st_gui,%st%
		;---------------hp
		if(ori_hp>Max_hp)
			ori_hp := Max_hp
		if(ori_mp>Max_mp)
			ori_mp := Max_mp
		GuiControl,Main:,hp,% floor((ori_hp/Max_hp)*100)
		if((ori_hp/Max_hp)*100 <= 20)
		{
			GuiControl,Main:+cRed,hp_text_v
			GuiControl,Main:,hp_text_v, %ori_hp%/%Max_hp%
		}
		else
		{
			GuiControl,Main:+cBlack,hp_text_v
			GuiControl,Main:,hp_text_v, %ori_hp%/%Max_hp%
		}
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		if((ori_mp/Max_mp)*100 <= 20)
		{
			GuiControl,Main:+cRed,mp_text_v
			GuiControl,Main:,mp_text_v, %ori_mp%/%Max_mp%
		}
		else
		{
			GuiControl,Main:+cBlack,mp_text_v
			GuiControl,Main:,mp_text_v, %ori_mp%/%Max_mp%
		}
	}
	else if(gap_st>1)
	{
		st--
		;-----------------change status to excited
		excited_value++
		if(excited_value>15 && excited_value<40)
		{
			GuiControl, Main:+cPurple,status_text
			GuiControl, Main:, status_text,  Excited
		}
		else if(excied_value<15  && st>20)
		{
			GuiControl, Main:+cGreen,status_text
			GuiControl, Main:, status_text, Normal 
		}
		if(excited_value>=40)
		{
			GuiControl, Main:+cRed, status_text
			GuiControl, Main:, status_text, Frantic
		}
		;---------------------------------
		f_st :=0
		s_st :=0
		if(st<20)
		{
			ori_hp -= (Max_hp//100) 
			if(ori_hp<1)
				ori_hp := 1
		}
		GuiControl,Main:,st_gui,%st%
		if(st<=20)
		{
			GuiControl,Main:+cRed,status_text
			GuiControl,Main:,status_text,Tired
		}
		;----------------hp
		GuiControl,Main:,hp,% floor((ori_hp/Max_hp)*100)
		if((ori_hp/Max_hp)*100 <= 20)
		{
			GuiControl,Main:+cRed,hp_text_v
			GuiControl,Main:,hp_text_v, %ori_hp%/%Max_hp%
		}
		else
		{
			GuiControl,Main:+cBlack,hp_text_v
			GuiControl,Main:,hp_text_v, %ori_hp%/%Max_hp%
		}
		;----------------mp
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		if((ori_mp/Max_mp)*100 <= 20)
		{
			GuiControl,Main:+cRed,mp_text_v
			GuiControl,Main:,mp_text_v, %ori_mp%/%Max_mp%
		}
		else
		{
			GuiControl,Main:+cBlack,mp_text_v
			GuiControl,Main:,mp_text_v, %ori_mp%/%Max_mp%
		}
	}
	else if(gap_st<0)
	{
		f_st :=0
		s_st :=0
	}
	if(f_st<0)	;prevent f_st negtive
		f_st:=0
	s_st := f_st
;########################################################	detect hp mp
	;try{
		;gosub, low
	;}
;########################################################	temp
	;try{
		if(mp_temp>0)
			mp_temp -= 5
		if(hp_temp>0)
			hp_temp -= 5
	;}
;########################################################	refresh property
		GuiControl,hp_mp_exp:, hp_p, %ori_hp%
		GuiControl,hp_mp_exp:, st_p, %st%
		GuiControl,hp_mp_exp:, mp_p, %ori_mp%
		GuiControl, hp_mp_exp:, exp_p, %ori_exp%
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;========================================================
	return
;#############################################	tooltip remind
refresh:
;########################################################	refresh property
		GuiControl,hp_mp_exp:, hp_p, %ori_hp%
		GuiControl,hp_mp_exp:, st_p, %st%
		GuiControl,hp_mp_exp:, mp_p, %ori_mp%
		GuiControl, hp_mp_exp:, exp_p, %ori_exp%
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;========================================================
	return
tooltip_remind:
	MouseGetPos,tempx,tempy
	loop 20
	{
		tooltip,%toolname%,%tempx%,%tempy%,2
		tempy--
		sleep, 50
	}
	tooltip,,,,2
	return
tooltip_remind1:
	MouseGetPos,tempx1,tempy1
	loop 20
	{
		tooltip,%toolname1%,%tempx1%,%tempy1%,3
		tempy1--
		sleep, 50
	}
	tooltip,,,,3
	return
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;==============================================
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=====================================================
