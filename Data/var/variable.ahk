IfExist Data\SAVE\setting.ini
{
	FileAppend,, Data\SAVE\Now Playing.ini
	IniRead,counter, Data\SAVE\setting.ini,global_variable,counter
	IniRead,move_effort_temp, Data\SAVE\setting.ini,global_variable,move_effort_temp
	IniRead,counter_move_once, Data\SAVE\setting.ini,global_variable,counter_move_once
	IniRead,total_distance, Data\SAVE\setting.ini,global_variable,total_distance
	IniRead,Max_hp, Data\SAVE\setting.ini,global_variable,Max_hp
	IniRead,Max_mp, Data\SAVE\setting.ini,global_variable,Max_mp
	IniRead,Max_exp, Data\SAVE\setting.ini,global_variable,Max_exp
	IniRead,ori_hp, Data\SAVE\setting.ini,global_variable,ori_hp
	IniRead,ori_mp, Data\SAVE\setting.ini,global_variable,ori_mp
	IniRead,ori_exp, Data\SAVE\setting.ini,global_variable,ori_exp
	IniRead,hp_effort, Data\SAVE\setting.ini,global_variable,hp_effort
	IniRead,mp_effort, Data\SAVE\setting.ini,global_variable,mp_effort
	IniRead,Lv, Data\SAVE\setting.ini,global_variable,Lv
	IniRead,stus, Data\SAVE\setting.ini,global_variable,stus
	IniRead,excited_value, Data\SAVE\setting.ini,global_variable,excited_value
	IniRead,Cr, Data\SAVE\setting.ini,global_variable,Cr
	IniRead,Cr1, Data\SAVE\setting.ini,global_variable,Cr1
	IniRead,Cr2, Data\SAVE\setting.ini,global_variable,Cr2
	IniRead,Cr3, Data\SAVE\setting.ini,global_variable,Cr3
	IniRead,Cr4, Data\SAVE\setting.ini,global_variable,Cr4
	IniRead,atk, Data\SAVE\setting.ini,global_variable,atk
	IniRead,mag, Data\SAVE\setting.ini,global_variable,mag
	IniRead,men, Data\SAVE\setting.ini,global_variable,men
	IniRead,int, Data\SAVE\setting.ini,global_variable,int
	IniRead,spd, Data\SAVE\setting.ini,global_variable,spd
	IniRead,atk_effort, Data\SAVE\setting.ini,global_variable,atk_effort
	IniRead,mag_effort, Data\SAVE\setting.ini,global_variable,mag_effort
	IniRead,men_effort, Data\SAVE\setting.ini,global_variable,men_effort
	IniRead,int_effort, Data\SAVE\setting.ini,global_variable,int_effort
	IniRead,spd_effort, Data\SAVE\setting.ini,global_variable,spd_effort
	IniRead,move_effort, Data\SAVE\setting.ini,global_variable,move_effort
	IniRead,Max_atk_effort, Data\SAVE\setting.ini,global_variable,Max_atk_effort
	IniRead,Max_mag_effort, Data\SAVE\setting.ini,global_variable,Max_mag_effort
	IniRead,Max_men_effort, Data\SAVE\setting.ini,global_variable,Max_men_effort
	IniRead,Max_int_effort, Data\SAVE\setting.ini,global_variable,Max_int_effort
	IniRead,Max_spd_effort, Data\SAVE\setting.ini,global_variable,Max_spd_effort
	IniRead,Max_hp_effort, Data\SAVE\setting.ini,global_variable,Max_hp_effort
	IniRead,Max_mp_effort, Data\SAVE\setting.ini,global_variable,Max_mp_effort
	IniRead,Max_move_effort, Data\SAVE\setting.ini,global_variable,Max_move_effort
	IniRead,atk_effort_temp, Data\SAVE\setting.ini,global_variable,atk_effort_temp
	IniRead,mag_effort_temp, Data\SAVE\setting.ini,global_variable,mag_effort_temp
	IniRead,men_effort_temp, Data\SAVE\setting.ini,global_variable,men_effort_temp
	IniRead,int_effort_temp, Data\SAVE\setting.ini,global_variable,int_effort_temp
	IniRead,spd_effort_temp, Data\SAVE\setting.ini,global_variable,spd_effort_temp
	IniRead,hp_effort_temp, Data\SAVE\setting.ini,global_variable,hp_effort_temp
	IniRead,mp_effort_temp, Data\SAVE\setting.ini,global_variable,mp_effort_temp
	IniRead,sk1, Data\SAVE\setting.ini,global_variable,sk1
	IniRead,sk2, Data\SAVE\setting.ini,global_variable,sk2
	IniRead,sk3, Data\SAVE\setting.ini,global_variable,sk3
	IniRead,sk4, Data\SAVE\setting.ini,global_variable,sk4
	IniRead,sk5, Data\SAVE\setting.ini,global_variable,sk5
	IniRead,sk1Lv, Data\SAVE\setting.ini,global_variable,sk1Lv
	IniRead,sk2Lv, Data\SAVE\setting.ini,global_variable,sk2Lv
	IniRead,sk3Lv, Data\SAVE\setting.ini,global_variable,sk3Lv
	IniRead,sk4Lv, Data\SAVE\setting.ini,global_variable,sk4Lv
	IniRead,sk5Lv, Data\SAVE\setting.ini,global_variable,sk5Lv
	IniRead,eq1, Data\SAVE\setting.ini,global_variable,eq1
	IniRead,eq2, Data\SAVE\setting.ini,global_variable,eq2
	IniRead,eq3, Data\SAVE\setting.ini,global_variable,eq3
	IniRead,eq4, Data\SAVE\setting.ini,global_variable,eq4
	IniRead,eq5, Data\SAVE\setting.ini,global_variable,eq5
	IniRead,st, Data\SAVE\setting.ini,global_variable,st
	IniRead,s_st, Data\SAVE\setting.ini,global_variable,s_st
	IniRead,f_st, Data\SAVE\setting.ini,global_variable,f_st
	IniRead,slow_wheel_exp, Data\SAVE\setting.ini,global_variable,slow_wheel_exp
	IniRead,counter_slow_wheel, Data\SAVE\setting.ini,global_variable,counter_slow_wheel
	IniRead,hp_mp_exp_width, Data\SAVE\setting.ini,global_variable,hp_mp_exp_width
	IniRead,gui_w, Data\SAVE\setting.ini,global_variable,gui_w
	IniRead,gui_h, Data\SAVE\setting.ini,global_variable,gui_h
	IniRead,Fire_Ball,Data\SAVE\setting.ini,skill,Fire_Ball
	IniRead,fire_ball_level,Data\SAVE\setting.ini,skill,fire_ball_level
	IniRead,Curse,Data\SAVE\setting.ini,skill,Curse
	IniRead,Curse_level,Data\SAVE\setting.ini,skill,Curse_level
	IniRead,Taunt,Data\SAVE\setting.ini,skill,Taunt
	IniRead,Taunt_level,Data\SAVE\setting.ini,skill,Taunt_level
	IniRead,Invisibility, Data\SAVE\setting.ini,skill,Invisibility
	IniRead,Invisibility_level,Data\SAVE\setting.ini,skill,Invisibility_level
	IniRead,Overload,Data\SAVE\setting.ini,skill,Overload
	IniRead,Overload_level,Data\SAVE\setting.ini,skill,Overload_level
	IniRead,Fire_Ball_effort,Data\SAVE\setting.ini,skill effort,Fire_Ball_effort
	IniRead,Curse_effort,Data\SAVE\setting.ini,skill effort,Curse_effort
	IniRead, Taunt_effort,Data\SAVE\setting.ini,skill effort,Taunt_effort
	IniRead, Invisibility_effort, Data\SAVE\setting.ini,skill effort, Invisibility_effort
	IniRead, Overload_effort, Data\SAVE\setting.ini, skill effort, Overload_effort
	IniRead, hp_mp_exp_xpos,Data\SAVE\setting.ini,show hp mp exp,xpos
;---------------------------startup timer
SetTimer, strength, 1500	;88888888888888888888888888888888888888888
;----exp convert to percent
SetFormat, float, 2.3			;888888888888888888888888888888	
perc_exp := (ori_exp/Max_exp)*100       ;88888888888888888888888888888888
	;##############################set save timer
	SetTimer, finish_write_in, 1800000
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;==============================
}

IfNotExist Data\SAVE\setting.ini
{
	;##############################set save timer
	SetTimer, finish_write_in, 1800000
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;==============================
	;###############################global variable
	counter :=1 ;Experience point
	move_effort_temp :=0
	counter_move_once :=300
	total_distance := 0 ;mouse move distance
	;------------------------------- hp mp exp global
	Random,hp_ini,100,150
	Max_hp:=hp_ini
	Random,mp_ini,100,150
	Max_mp:=mp_ini
	Max_exp:=100
	;----------------original hp mp exp set
	ori_hp:=Max_hp
	ori_mp:=Max_mp
	ori_exp:=0
	;----effort hp mp
	hp_effort := 0
	mp_effort := 0
	;----exp convert to percent
	SetFormat, float, 2.3			;888888888888888888888888888888	
	perc_exp := (ori_exp/Max_exp)*100       ;88888888888888888888888888888888
	;----------------Lv
	Lv:=1
	;----------------Status
	stus:="Normal"
	excited_value := 0
	;----------------Character
	Cr:="Super Novice"
	Cr1:="Magician"
	Cr2:="Wizard"
	Cr3:="Mage"
	Cr4:="Arch Mage"
	;-------------------------------Statistics
	random, atk_ini, 15, 30
	atk:=atk_ini
	random, mag_ini, 20, 30
	mag:=mag_ini
	random, men_ini, 25,40
	men:=men_ini
	random, int_ini, 30, 50
	int:=int_ini
	random, spd_ini, 15,30
	spd:=spd_ini
	;-----------------------------Statistics effort point
	atk_effort :=0
	mag_effort :=0
	men_effort :=0
	int_effort :=0
	spd_effort :=0
	move_effort:=0
	;--------------------Max_effort point
	Max_atk_effort :=500
	Max_mag_effort :=500
	Max_men_effort :=500
	Max_int_effort :=500
	Max_spd_effort :=500
	Max_hp_effort :=500
	Max_mp_effort :=500
	Max_move_effort:=500
	;-----------------------------effort point temp
	atk_effort_temp := 0
	mag_effort_temp := 0
	men_effort_temp := 0
	int_effort_temp := 0
	spd_effort_temp := 0
	hp_effort_temp := 0
	mp_effort_temp := 0
	;-------------------------------skill
	Fire_Ball := "Fire Ball Lv."
	Fire_ball_level := 1
	Curse:= "Curse Lv. "
	Curse_level := 1
	Taunt := "Taunt Lv. "
	Taunt_level := 1
	Invisibility := "Invisibility Lv. "
	Invisibility_level := 1
	Overload := "Overload Lv. "
	Overload_level := 1

	sk1 :=Fire_Ball
	sk2 := Curse
	sk3 := Taunt
	sk4 := Invisibility
	sk5 := Overload
	

	sk1Lv:= Fire_ball_level
	sk2Lv:= Curse_level
	sk3Lv:= Taunt_level
	sk4Lv:= Invisibility_level
	sk5Lv:= Overload_level

	;-----------------------------------skill effort
	Fire_Ball_effort := 0
	Curse_effort := 0
	Taunt := 0
	Invisibility := 0
	Overload := 0
	;-------------------------------equip
	eq1 := "Laptop LV5"
	eq2 := "Keyboard LV2"
	eq3 := "Mouse LV3"
	eq4 := "Glasses LV1"
	eq5 := ""
	;-------------------------------strength
	st := 100
	;------start strenge
	s_st := 0
	;------finish strenge
	f_st := 0
	;-----------slow down wheel add exp
	slow_wheel_exp := 0
	counter_slow_wheel := 50
	;-------------set timer
	SetTimer, strength, 1500	;88888888888888888888888888888888888888888
	;-------------hp mp exp text width
	hp_mp_exp_width := 85
	;-------------gui frame
	gui_w := 230
	gui_h := 220
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;#################################	show hp mp exp outside
	hp_mp_exp_xpos :=100
	;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	;================================
	;------------------------------------write in
	gosub finish_write_in
		;=================================
	FileAppend,,Data\SAVE\Now Playing.ini
}
/*
;###############################global variable
counter :=1 ;Experience point
;IniRead,counter,Data\SAVE\temp\temp.ini,global_variable,counter
move_effort_temp :=0
;IniRead, move_effort_temp,Data\SAVE\temp\temp.ini,global_variable,move_effort_temp
counter_move_once :=300
total_distance := 0 ;mouse move distance
;------------------------------- hp mp exp global
Max_hp:=100
Max_mp:=100
Max_exp:=100
;----------------original hp mp exp set
ori_hp:=50 ;Max_hp
ori_mp:=Max_mp
ori_exp:=0
;----effort hp mp
hp_effort := 0
mp_effort := 0
;----exp convert to percent
SetFormat, float, 2.3
perc_exp := (ori_exp/Max_exp)*100
;----------------Lv
Lv:=1
;----------------Status
stus:="Normal"
excited_value := 0
;----------------Character
Cr:="Super Novice"
;Cr:="Magician"
;-------------------------------Statistics
atk:=15
mag:=26
men:=34
int:=30
spd:=20
;-----------------------------Statistics effort point
atk_effort :=0
mag_effort :=0
men_effort :=0
int_effort :=0
spd_effort :=0
move_effort:=0
;--------------------Max_effort point
Max_atk_effort :=500
Max_mag_effort :=500
Max_men_effort :=500
Max_int_effort :=500
Max_spd_effort :=500
Max_hp_effort :=500
Max_mp_effort :=500
Max_move_effort:=500
;-----------------------------effort point temp
atk_effort_temp := 0
mag_effort_temp := 0
men_effort_temp := 0
int_effort_temp := 0
spd_effort_temp := 0
hp_effort_temp := 0
mp_effort_temp := 0
;-------------------------------skill
sk1 := "Fire Ball"
sk2 := "Curse"
sk3 := "Taunt "
sk4 := "Invisibility"
sk5 := "Overload"

sk1Lv:= 1
sk2Lv:= 1
sk3Lv:= 1
sk4Lv:= 1
sk5Lv:= 1
;-------------------------------equip
eq1 := "Laptop LV5"
eq2 := "Keyboard LV2"
eq3 := "Mouse LV3"
eq4 := "Glasses LV1"
eq5 := ""
;-------------------------------strength
st := 100
;------start strenge
s_st := 0
;------finish strenge
f_st := 0
;-----------slow down wheel add exp
slow_wheel_exp := 0
counter_slow_wheel := 50
;-------------set timer
SetTimer, strength, 1500
;-------------hp mp exp text width
hp_mp_exp_width := 85
;-------------gui frame
gui_w := 230
gui_h := 220
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=================================
*/
/*

;###############################global variable
counter :=1 ;Experience point
move_effort_temp :=0
counter_move_once :=300
total_distance := 0 ;mouse move distance
;------------------------------- hp mp exp global
Max_hp:=100
Max_mp:=100
Max_exp:=100
;----------------original hp mp exp set
ori_hp:=50 ;Max_hp
ori_mp:=Max_mp
ori_exp:=0
;----effort hp mp
hp_effort := 0
mp_effort := 0
;----exp convert to percent
SetFormat, float, 2.3
perc_exp := (ori_exp/Max_exp)*100
;----------------Lv
Lv:=1
;----------------Status
stus:="Normal"
excited_value := 0
;----------------Character
Cr:="Super Novice"
;Cr:="Magician"
;-------------------------------Statistics
atk:=15
mag:=26
men:=34
int:=30
spd:=20
;-----------------------------Statistics effort point
atk_effort :=0
mag_effort :=0
men_effort :=0
int_effort :=0
spd_effort :=0
move_effort:=0
;--------------------Max_effort point
Max_atk_effort :=500
Max_mag_effort :=500
Max_men_effort :=500
Max_int_effort :=500
Max_spd_effort :=500
Max_hp_effort :=500
Max_mp_effort :=500
Max_move_effort:=500
;-----------------------------effort point temp
atk_effort_temp := 0
mag_effort_temp := 0
men_effort_temp := 0
int_effort_temp := 0
spd_effort_temp := 0
hp_effort_temp := 0
mp_effort_temp := 0
;-------------------------------skill
sk1 := "Fire Ball"
sk2 := "Curse"
sk3 := "Taunt "
sk4 := "Invisibility"
sk5 := "Overload"

sk1Lv:= 1
sk2Lv:= 1
sk3Lv:= 1
sk4Lv:= 1
sk5Lv:= 1
;-------------------------------equip
eq1 := "Laptop LV5"
eq2 := "Keyboard LV2"
eq3 := "Mouse LV3"
eq4 := "Glasses LV1"
eq5 := ""
;-------------------------------strength
st := 100
;------start strenge
s_st := 0
;------finish strenge
f_st := 0
;-----------slow down wheel add exp
slow_wheel_exp := 0
counter_slow_wheel := 50
;-------------set timer
SetTimer, strength, 1500
;-------------hp mp exp text width
hp_mp_exp_width := 85
;-------------gui frame
gui_w := 230
gui_h := 220
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=================================
*/
