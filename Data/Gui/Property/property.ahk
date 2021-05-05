;###########################	Lv
Gui, Main:Add, Text, x10 y140 c808080, Level:
Gui, Main:Add, Text, x60 y140 w100 vlv cBlue,%Lv%
;@@@@@@@@@@@@@@@@@@@@@@@@@@@
;---------------------------
;##########################	Status
Gui, Main:Add, Text, x130 y110 c808080, Status:
Gui, Main:Add, Text, x170 y110 w100 vstatus_text cGreen, %stus%
;@@@@@@@@@@@@@@@@@@@@@@@@@@
;==========================
;##########################	Character
Gui, Main:Add, Text, x10 y125 c808080, Character:
	if(Lv<30)
		Gui, Main:Add, Text, x60 y125 w150 vcr cbfbfbf, %Cr%
	else if(Lv>=30 && Lv<60)
		Gui, Main:Add, Text, x60 y125 w150 vcr c3333cc, %Cr1%
	else if(Lv>=60 && Lv<120)
		Gui, Main:Add, Text, x60 y125 w150 vcr cb3b300, %Cr2%
	else if(Lv>=120 && Lv<200)
		Gui, Main:Add, Text, x60 y125 w150 vcr ccc66ff, %Cr3%
	else if(Lv>=200)
		Gui, Main:Add, Text, x60 y125 w150 vcr cff0000, %Cr4%
;@@@@@@@@@@@@@@@@@@@@@@@@@@
;==========================
;##########################	Name
Gui, Main:Add, Text, x10 y110 c808080, Name:
Gui, Main:Add, Text, x60 y110 ,LinSheng
;@@@@@@@@@@@@@@@@@@@@@@@@@@
;==========================
