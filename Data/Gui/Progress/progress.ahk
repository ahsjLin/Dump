;----------------------------	HP MP EXP
Gui, Main:Add, Edit,x10 y155 w25 h20 vhp_text ReadOnly, HP
Gui, Main:Add, Progress,x+1 y160 w100 h10  BackGroundBlack cRed vhp Range0-100, %ori_hp% ;HP
;----------------------------strength
Gui, Main:Add, Progress, y+1 w100 h5 BackGroundBlack cGreen vst_gui Range0-100,%st% ;Strength
;--------------------------------------
Gui, Main:Add, Edit,x10 y175 w25 h20 vmp_text ReadOnly, MP
Gui, Main:Add, Progress,x+1 y180 w100 h10  BackGroundBlack cBlue vmp Range0-100,%ori_mp%	;MP
Gui, Main:Add, Edit,x10 y195 w25 h20 ReadOnly, Exp
Gui, Main:Add, Progress,x+1 y200 w100 h10  BackGroundBlack cYellow vexp Range0-100,%perc_exp%	;Exp
;-----------------------------hp mp exp text
Gui, Main:Add, Edit, x140 y155 w%hp_mp_exp_width% h20 vhp_text_v ReadOnly right, %ori_hp%/%Max_hp%
Gui, Main:Add, Edit, x140 y175 w%hp_mp_exp_width% h20 vmp_text_v ReadOnly right, %ori_mp%/%Max_mp%
Gui, Main:Add, Edit, x140 y195 w%hp_mp_exp_width% h20 vexp_text ReadOnly right, %perc_exp%`%
