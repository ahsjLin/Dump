~Rwin::
	Gui, Main:-AlwaysOnTop -Caption +ToolWindow
	Gui,hp_mp_exp:-Caption -AlwaysOnTop +E0x20 +ToolWindow +LastFound
	Gui, Main:hide
	return
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$	Mouse
~LButton::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	loop 1000{
		calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
		calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	}
	;===========================
	;###########################	ex_level_up
	gosub EX_Level_up
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	strength
	f_st++
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	-hp
/*
	if(Max_hp > 1000)
		mult := 0.001
	else
		mult := 0.01
	hp_temp :=floor(Max_hp*mult)
*/
/*
	Loop %hp_temp%
	{
*/
		ori_hp--
		ori_hp--
		ori_hp--
		ori_mp--
		ori_mp--
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
		GuiControl,hp_mp_exp:,mp_p,%ori_mp%
/*
	}
*/
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	return
~RButton::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	loop 20
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	;###########################	-hp
	hp_temp :=floor(Max_hp*0.001)+Lv
	Loop %hp_temp%
	{
		ori_hp--
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	return
~MButton::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
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
	;###########################	-hp
	hp_temp :=floor(Max_hp*0.001)+Lv
	Loop %hp_temp%
	{
		ori_hp--
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	return
~WheelUp::
	slow_wheel_exp++
	loop 100{
		calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
		calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	}
	if(slow_wheel_exp>=counter_slow_wheel)
	{
	;###########################	effort calculator
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 20
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	ex_level_up
		slow_wheel_exp := 0
		gosub EX_Level_up
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	strength
	f_st++
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	-mp
	mp_temp +=floor(Max_mp*0.003)
	Loop %mp_temp%
	{
		ori_mp--
		GuiControl,hp_mp_exp:,mp_p,%ori_mp%
	}
	if(ori_mp<0){
		ori_mp := 0
	}
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	}
	return
~WheelDown::
	slow_wheel_exp++
	loop 100{
		calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
		calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	}
	if(slow_wheel_exp>=counter_slow_wheel)
	{
	;###########################	effort calculator
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 20
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	ex_level_up
		slow_wheel_exp := 0
		gosub EX_Level_up
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	strength
	f_st++
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	;###########################	-mp
	mp_temp += floor(Max_mp*0.003)
	Loop %mp_temp%
	{
		ori_mp--
		GuiControl,hp_mp_exp:,mp_p,%ori_mp%
	}
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;===========================
	}
	if(ori_mp<0){
		ori_mp := 0
	}
	return
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$	Keyboard

~Esc up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F1 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F2 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F3 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F4 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F5 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F6 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F7 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F8 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F9 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F10 up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F11 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~F12 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~sc045 up:: ;pause key
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~sc137 up:: ;printscreen
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~sc153 up:: ;delete
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~home up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~pgup up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~pgdn up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~end up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~` up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~1 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~2 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~3 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~4 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~5 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~6 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~7 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~8 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~9 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~0 up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~- up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~= up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~BackSpace up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 100
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~numlock up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~NumpadDiv up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~NumpadMult up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~NumpadSub up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~NumpadAdd up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	loop 10
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
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
	return
~Numpad9 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad8 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad7 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~\ up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~] up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
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
	return
~[ up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
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
	return
~p up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
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
	return
~o up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,max_mp_effort,mp_effort)
	calculator_effort(men_effort_temp,max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,max_mag_effort,mag_effort)
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
	return
~i up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~u up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(men_effort_temp,Max_men_effort,men_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
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
	return
~y up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
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
	return
~t up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
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
	return
~r up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
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
	return
~e up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~w up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~q up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~Tab up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~Capslock up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~a up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~s up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~d up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~f up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~g up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~h up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~j up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~k up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~l up::
	;###########################	effort calculator
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~`; up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~' up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Enter up::
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~Numpad4 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad5 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad6 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~NumpadEnter up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad3 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad2 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpad1 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Up up::
	;###########################	effort calculator
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~RShift up::
	;###########################	effort calculator
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~? up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~. up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~, up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~m up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~n up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~b up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~v up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~c up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~x up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~z up::
	;###########################	effort calculator
	calculator_effort(mag_effort_temp,Max_mag_effort,mag_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~LShift up::
	;###########################	effort calculator
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~LControl up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~LWin up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~LAlt up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~space up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
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
	return
~Ralt up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~sc15d up::	;appskey
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~RControl up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~Left up::
	;###########################	effort calculator
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~Down up::
	;###########################	effort calculator
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~right up::
	;###########################	effort calculator
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~Numpad0 up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~NumpadDel up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~NumpadDot up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpadhome up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpadpgup up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpadpgdn up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpadend up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Numpadup up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~Numpaddown up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~Numpadright up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~Numpadleft up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~~ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~! up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~@ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~# up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~$ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~% up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~^ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~& up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~* up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~( up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~) up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~_ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~+ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~} up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~{ up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
/*
~P up::
	return
~O up::
	return
~I up::
	return
~U up::
	return
~Y up::
	return
~T up::
	return
~R up::
	return
~E up::
	return
~W up::
	return
~Q up::
	return
~A up::
	return
~S up::
	return
~D up::
	return
~F up::
	return
~G up::
	return
~H up::
	return
~J up::
	return
~K up::
	return
~L up::
	return
*/
/*
~' up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
*/
~" up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
;~? up::
;	return
~> up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~< up::
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
/*
~M up::
	return
~N up::
	return
~B up::
	return
~V up::
	return
~C up::
	return
~X up::
	return
~Z up::
	return
*/
~sc056 up:: ;left down /
	;###########################	effort calculator
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~sc152 up:: ;insert
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
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
	return
~NumpadIns up::
	;###########################	effort calculator
	calculator_effort(atk_effort_temp,Max_atk_effort,atk_effort)
	calculator_effort(mp_effort_temp,Max_mp_effort,mp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	calculator_effort(spd_effort_temp,Max_spd_effort,spd_effort)
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
	return
~sc035 up:: ;/
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~sc046 up:: ;scroll lock
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~Shift & ~sc056:: ;left down |
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
	return
~RWin up:: ;RW
	;###########################	effort calculator
	calculator_effort(hp_effort_temp,Max_hp_effort,hp_effort)
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
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
~shift & ~f6::
	Gui, Main:+AlwaysOnTop -Caption +ToolWindow
	keywait, shift
	Gui, Main:-AlwaysOnTop -Caption +ToolWindow
	return

