skoverload:
	skill_effort(Overload_effort,Overload_level)
	temp_sk := Overload_level*12
	;-------tooltip remind
	toolname1 := "Overload"
	gosub tooltip_remind1
	loop %temp_sk%
	{
		ori_mp--
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
		Sleep 10
	}
	gosub refresh_skill_bar
	return
skinvisibility:
	skill_effort(Invisibility_effort,Invisibility_level)
	toolname1 := "Invisibility"
	gosub tooltip_remind1
	temp_sk := Invisibility_level*7
	loop %temp_sk%
	{
		ori_mp--
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
		Sleep 10
	}
	gosub refresh_skill_bar
	return
skfireball:
	skill_effort(Fire_Ball_effort,Fire_Ball_level)
	temp_sk := Fire_Ball_level*12
	;-------tooltip remind
	toolname1 := "Fire Ball"
	gosub tooltip_remind1
	loop %temp_sk%
	{
		ori_mp--
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
		Sleep 10
	}
	gosub refresh_skill_bar
	return
sktaunt:
	skill_effort(Taunt_effort,Taunt_level)
	temp_sk := Taunt_level*12
	;-------tooltip remind
	toolname1 := "Taunt"
	gosub tooltip_remind1
	loop %temp_sk%
	{
		ori_mp--
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
		;########################################################	refresh property
				GuiControl,hp_mp_exp:, hp_p, %ori_hp%
				GuiControl,hp_mp_exp:, st_p, %st%
				GuiControl,hp_mp_exp:, mp_p, %ori_mp%
				GuiControl, hp_mp_exp:, exp_p, %ori_exp%
		;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		;========================================================
		Sleep 10
	}
	gosub refresh_skill_bar
	return
skcurse:
	skill_effort(Curse_effort,Curse_level)
	temp_sk := Curse_level*12
	;-------tooltip remind
	toolname1 := "Curse"
	gosub tooltip_remind1
	loop %temp_sk%
	{
		ori_mp--
		GuiControl,Main:,mp,% floor((ori_mp/Max_mp)*100)
		GuiControl,Main:,mp_text_v,%ori_mp%/%Max_mp%
		;########################################################	refresh property
				GuiControl,hp_mp_exp:, hp_p, %ori_hp%
				GuiControl,hp_mp_exp:, st_p, %st%
				GuiControl,hp_mp_exp:, mp_p, %ori_mp%
				GuiControl, hp_mp_exp:, exp_p, %ori_exp%
		;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		;========================================================
		Sleep 10
	}
	gosub refresh_skill_bar
	return
