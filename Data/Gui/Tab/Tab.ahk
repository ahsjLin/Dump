;###################################################Tab content
Gui, Main:Add, Tab2, w220 h100 x5 y5 AltSubmit buttons border,Statistics|Skill|Equip|
;-----------------------Tab 1 Statistics
Gui, Main:Tab,1
;Statistic y position
statistic_value_move1 :=50 ;atk mag men
	;------------------------------atk
	Gui, Main:Add, Text, x10 y30,ATK
	Gui, Main:Add, Text, x%statistic_value_move1% y30 w50 vatk_v,%atk%
	;------------------------------mag
	Gui, Main:Add, Text, x10 y45, MAG
	Gui, Main:Add, Text, x%statistic_value_move1% y45 w50 vmag_v, %mag%
	;------------------------------mental
	Gui, Main:Add, Text, x10 y75, MEN
	Gui, Main:Add, Text, x%statistic_value_move1% y75 w50 vmen_v, %men%
	;------------------------------intelligence
	Gui, Main:Add, Text, x10 y60, INT
	Gui, Main:Add, Text, x%statistic_value_move1% y60 w50 vint_v, %int%
	;------------------------------speed
	Gui, Main:Add, Text, x10 y90, SPD
	Gui, Main:Add, Text, x%statistic_value_move1% y90 w50 vspd_v, %spd%
	;---------------------------------------Blessing
	Gui, Main:Add, Text, x120 y30 c808080,Blessing:
	Gui, Main:Add, Text, x120 y45 cpurple,God Control
	Gui, Main:Add, Text, x120 y60 cred, Indomitable (Max)
	Gui, Main:Add, Text, x120 y75 cgreen, Lucky (?)
;-----------------------Tab 2 Statistics
Gui, Main:Tab,2
	;-----------------------------skill
	Gui, Main:Add, Text, x10 y30 vsk1_vbar,%sk1%%sk1Lv%
	Gui, Main:Add, Text, x10 y45 vsk2_vbar,%sk2%%sk2Lv%
	Gui, Main:Add, Text, x10 y60 vsk3_vbar,%sk3%%sk3Lv%
	Gui, Main:Add, Text, x10 y75 vsk4_vbar,%sk4%%sk4Lv%
	Gui, Main:Add, Text, x10 y90 vsk5_vbar,%sk5%%sk5Lv%
;-----------------------Tab 3 Statistics
Gui, Main:Tab,3
	;-----------------------------equip
	Gui, Main:Add, Text, x10 y30, %eq1%
	Gui, Main:Add, Text, x10 y+5, %eq2%
	Gui, Main:Add, Text, x10 y+5, %eq3%
	Gui, Main:Add, Text, x10 y+5, %eq4%
	Gui, Main:Add, Text, x10 y+5, %eq5%
	;----------------------------equip
Gui, Main:Tab,
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;===================================================
