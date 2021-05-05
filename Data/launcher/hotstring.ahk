/*
	Fire Ball
	gosub skfireball

	Curse
	gosub skcurse

	Overload
	gosub skoverload

	Invisibility
	gosub skinvisibility

	Taunt
	gosub sktaunt

	;mp
	GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
	GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%

		toolname1 := 
		loop %temp_sk%
		{
			ori_mp--
			GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
			GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
			Sleep 10
		}


	gosub refresh_skill_bar
*/
;############################################################################################# HotString
:?:hide..::
	Gui,hp_mp_exp:-Caption -AlwaysOnTop +E0x20 +ToolWindow +LastFound
	;Gui,hp_mp_exp:hide, hp_mp_exp
	;winset, tansparent, 0,hp_mp_exp
	stemp := 1
	spell_ok := 1
	;SetCapsLockState,ON
	return
:?:show..::
	Gui,hp_mp_exp:-Caption +AlwaysOnTop +E0x20 +ToolWindow +LastFound
	;Gui,hp_mp_exp:show,
	stemp := 1
	spell_ok := 1
	;SetCapsLockState,ON
	return
:?:property..::
	Gui, Main:+AlwaysOnTop -Caption +ToolWindow
	return
:?:close..::
	Gui, Main:-AlwaysOnTop -Caption +ToolWindow
	return
:?:closeall..::
	Gui, Main:-AlwaysOnTop -Caption +ToolWindow
	Gui,hp_mp_exp:-Caption -AlwaysOnTop +E0x20 +ToolWindow +LastFound
	return
;############################	poison
:*B0?:red100::	;red +100
	stemp := 1
	spell_ok := 1
	Gui,spell:destroy
	toolname1:="Red poison 100"
	st-=70
	gosub tooltip_remind1
	loop 100
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
		sleep,70
	}
	return
:?:bigred.::	;red
	stemp := 1
	spell_ok := 1
	Gui,spell:destroy
	toolname1:="Red poison(Big)"
	gosub tooltip_remind1
	loop 1000
	{
		ori_hp++
		GuiControl,hp_mp_exp:,hp_p,%ori_hp%
	}
	return
:?:bigblue.::	;blue
	stemp := 1
	spell_ok := 1
	Gui,spell:destroy
	toolname1:="Blue poison(Big)"
	gosub tooltip_remind1
	if(ori_mp<0)
		ori_mp := 0
	recover := Max_mp - ori_mp
	loop recover
	{
		ori_mp += 1
		GuiControl,hp_mp_exp:,mp_p,%ori_mp%
	}
	return
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
;###########################	Search
:*B0?:autohotkey::
	gosub skoverload
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	return
:*B0?:vim::
	gosub skoverload
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	return
:*B0?:youtube::
	gosub skoverload
	gosub skinvisibility
	st-=30
	return

;@@@@@@@@@@@@@@@@@@@@@@@@@@
;==========================
;#############################	C
:*B0:c language::
	gosub skfireball
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	return
:*B0?:#include::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=20
	ori_mp -= 1000
	return	
:*BO?:define::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=14
	ori_mp -= 100
	return
:*B0?:int::
	gosub skfireball
	gosub sktaunt
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=3
	ori_mp -= 30
	return
:*B0?:float::
	gosub skfireball
	gosub sktaunt
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=4
	ori_mp -= 40
	return
:*B0?:double::
	gosub skfireball
	gosub sktaunt
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=4
	ori_mp -= 70
	return
:*B0?:printf::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=4
	ori_mp -= 60
	return
:*B0?:scanf::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=7
	ori_mp -= 120
	return
:*B0?:""::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=2
	ori_mp -= 20
	return
:*B0?:main::
	gosub skfireball
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=3
	ori_mp -= 300
	return
:*B0?:()::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=4
	ori_mp -= 29
	return
:*B0?:{}::
	gosub skfireball
	gosub skcurse
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=4
	ori_mp -= 20
	return
:*B0:return::
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=1
	ori_mp -= 500
	return
:*B0:stdio.h::
	gosub skfireball
	gosub skoverload
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	ori_mp -= 2000
	temp := floor(ori_hp/6)
	loop %temp%
	{
		ori_hp -= 3
		gosub, refresh
	}
	return
:*B0:/*::
	gosub skfireball
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	ori_mp -= 30
	return
:*B0:*/::
	gosub skfireball
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	ori_mp -= 30
	return
:*B0://::
	gosub skfireball
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	ori_mp -= 80
	return
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=============================
;##############################	vim
:*B0::w::
	gosub skfireball
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	ori_mp -= 400
	return

;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ latex
:*B0:\ll::
	gosub skfireball
	gosub skinvisibility
	calculator_effort(int_effort_temp,Max_int_effort,int_effort)
	st-=5
	ori_hp := floor(ori_hp*0.2)
	ori_mp -= 5000
	return
;==============================
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=============================================================================================	
;;;;;;;;;;;;;;;;;;;;;; python
:*B0:python::
	
	ori_mp -= 800
	return
