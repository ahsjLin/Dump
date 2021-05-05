Menu, Tray, Icon, pumpkin.ico

#SingleInstance, force
CoordMode, ToolTip, Screen
CoordMode, Mouse, Screen
#MaxHotKeysPerInterval 200

;###########################	variable
#include Data\var\variable.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;===================================

;###########################	Tab
#include Data\Gui\Tab\Tab.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;===================================

;############################	Progress HP MP EXP
#include Data\Gui\Progress\progress.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================

;###############################	Property LV name character status
#include Data\Gui\Property\property.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=========================================

;############################	startup label
;gosub mouse_move
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;==========================================
#include Data\Gui\Frame\showhpmpexp.ahk
;############################	Gui Setting
#include Data\Gui\Frame\frame.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;==========================================
#include Data\tooltip\tooltip.ahk



;Startup   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Startup$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Startup
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=============================================================================================
shift & f1::
	return

;############################	hotkey
#include Data\launcher\hotkey.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
;############################	hotstring
#include Data\launcher\hotstring.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
;############################	label
#include Data\label\label.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
;############################
#include Data\skill\skill.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
;############################	function
#include Data\Function\function.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================

;############################	variable write in 
#include Data\Write\write.ahk
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
;############################	call spell
/*
~Shift & F3::
	suspend
	return
~sc03A & enter::
	Gui,spell:destroy
	Gui,spell:-Caption +ToolWindow ;+AlwaysOnTop
	Gui,spell:Add, Edit, vspell_text
	PostMessage, 0x50, 0, 0x4090409,, A ;英文輸入
	Gui, spell:Show,, Spell
	SetCapsLockState,on
	stemp:=0
	spell_ok := 0
	Settimer, stop_spell, -10000
	loop
	{
		if(GetKeyState("Enter")==1 || stemp==1)
		{	
			spell_ok:=1
			SetCapsLockState,off
			Gui,spell:destroy
			break
		}
	}
	return
stop_spell:
	if(spell_ok==0)
	{
		stemp:=1
		SetCapsLockState,on
		Gui, spell_failure: -Caption +E0x20 +ToolWindow
		Gui,spell_failure:Add, Text,, Construction Failure
		Gui,spell_failure:Color, White
		Gui,spell_failure:Show, 
		Sleep, 3000
		Gui, spell_failure:destroy
	}
	return
*/
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;============================
/*
~Shift & F2::
	Gui, Main:hide,
	return
~Shift & F1::
	Gui, Main:show,
	return
~Shift & F4::
	IfExist, Data\SAVE\Now Playing.ini
	{
		gosub finish_write_in
		FileDelete Data\SAVE\Now Playing.ini
		ExitApp
	}
	IfNotExist, Data\SAVE\Now Playing.ini
		msgbox, something wrong
	
	return
*/
GuiClose:
	IfExist, Data\SAVE\Now Playing.ini
	{
		gosub finish_write_in
		FileDelete Data\SAVE\Now Playing.ini
		ExitApp
	}
	IfNotExist, Data\SAVE\Now Playing.ini
		msgbox, something wrong
	
	return
