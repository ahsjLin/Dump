;####################################	show hp mp exp
Gui,hp_mp_exp:Color,White
;######################		transparent set
Gui,Margin, 0,0
wid := A_ScreenWidth/2
Gui,hp_mp_exp:Add,progress,x0 y0 w%A_ScreenWidth% h300 BackgroundWhite
;@@@@@@@@@@@@@@@@@@@@@@
;======================
Gui,hp_mp_exp:Add,progress,x%hp_mp_exp_xpos% y0 w%wid% h8 vhp_p BackgroundWhite cred range0-%Max_hp%,%ori_hp%
Gui,hp_mp_exp:Add,progress,x%hp_mp_exp_xpos% y+1 w%wid% h5 vst_p BackgroundWhite cgreen range0-100,%st%
Gui,hp_mp_exp:Add,progress,x%hp_mp_exp_xpos% y+1 w%wid% h8 vmp_p BackgroundWhite cblue range0-%Max_mp%,%ori_mp%
Gui,hp_mp_exp:Add,progress,x%hp_mp_exp_xpos% y+1 w%wid% h5 vexp_p BackgroundWhite cyellow range0-%Max_exp%,%ori_exp%

Gui,hp_mp_exp:-Caption -AlwaysOnTop +E0x20 +ToolWindow +LastFound
Gui,hp_mp_exp:show,x0 y0 w%A_ScreenWidth% ,hp_mp_exp
WinSet,TransColor,white 255, hp_mp_exp
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;====================================
