/*
#singleinstance, force
property:
	tooltip, property
	file := fileopen("property.txt", "w")
	file.write(A_Year)
	file.write("-")
	file.write(A_MM)
	file.write("-")
	file.write(A_DD)
	file.write("_")
	file.write(A_Hour)
	file.write(":")
	file.write(A_Min)
	file.write(":")
	file.write(A_Sec)
	file.write("`n")

	file.write("Name: LinSheng`n")
	file.write("Race: ")
	file.write("Human")
	file.write("`n")
	iniread, character, setting.ini, global_variable, Cr
	file.write("Character: ")
	file.write(character)
	file.write("`n")
	iniread, level, setting.ini, global_variable, Lv
	file.write("Level: ")
	file.write(level)
	file.write("`n")
	iniread, status, setting.ini, global_variable, stus
	file.write("status: ")
	file.write(status)
	file.write("`n")
	iniread, mhp, setting.ini, global_variable, Max_hp
	iniread, ohp, setting.ini, global_variable, ori_hp
	file.write("Hp: ")
	file.write(ohp)
	file.write("/")
	file.write(mhp)
	file.write("`n")
	iniread, mmp, setting.ini, global_variable, Max_mp
	iniread, omp, setting.ini, global_variable, ori_mp
	file.write("Mp: ")
	file.write(omp)
	file.write("/")
	file.write(mmp)
	file.write("`n")
	iniread, mexp, setting.ini, global_variable, Max_exp
	iniread, oexp, setting.ini, global_variable, ori_exp
	file.write("Exp: ")
	file.write(oexp)
	file.write("/")
	file.write(mexp)
	file.write("`n")


	file.write("`n")
	
	iniread, atk, setting.ini, global_variable, atk
	file.write("ATK: ")
	file.write(atk)
	file.write("`n")
	iniread, mag, setting.ini, global_variable, mag
	file.write("MAG: ")
	file.write(mag)
	file.write("`n")
	iniread, int, setting.ini, global_variable, int
	file.write("INT: ")
	file.write(int)
	file.write("`n")
	iniread, men, setting.ini, global_variable, men
	file.write("MEN: ")
	file.write(men)
	file.write("`n")
	iniread, spd, setting.ini, global_variable, spd
	file.write("SPD: ")
	file.write(spd)
	file.write("`n")

	file.write("`n")
	file.write("Blessing:`n")
	file.write(" ")
	file.write("God Control`n")
	file.write(" ")
	file.write("Indomitable(Max)`n")
	file.write(" ")
	file.write("Lucky(?)`n")

	file.write("`n")
	file.write("Skill:`n")
	file.write(" ")
	iniread, skill1, setting.ini, global_variable, sk1
	iniread, skill1lv, setting.ini, global_variable, sk1Lv
	file.write(skill1)
	file.write(skill1lv)
	file.write("`n")
	file.write(" ")
	iniread, skill2, setting.ini, global_variable, sk2
	iniread, skill2lv, setting.ini, global_variable, sk2Lv
	file.write(skill2)
	file.write(skill2lv)
	file.write("`n")
	file.write(" ")
	iniread, skill3, setting.ini, global_variable, sk3
	iniread, skill3lv, setting.ini, global_variable, sk3Lv
	file.write(skill3)
	file.write(skill3lv)
	file.write("`n")
	file.write(" ")
	iniread, skill4, setting.ini, global_variable, sk4
	iniread, skill4lv, setting.ini, global_variable, sk4Lv
	file.write(skill4)
	file.write(skill4lv)
	file.write("`n")
	file.write(" ")
	iniread, skill5, setting.ini, global_variable, sk5
	iniread, skill5lv, setting.ini, global_variable, sk5Lv
	file.write(skill5)
	file.write(skill5lv)
	file.write("`n")

	file.write("`n")

	file.write("Equip:`n")
	file.write(" ")

	iniread, equip1, setting.ini, global_variable, eq1
	file.write(equip1)
	file.write("`n")

	iniread, equip2, setting.ini, global_variable, eq2
	file.write(" ")
	file.write(equip2)
	file.write("`n")

	iniread, equip3, setting.ini, global_variable, eq3
	file.write(" ")
	file.write(equip3)
	file.write("`n")

	iniread, equip4, setting.ini, global_variable, eq4
	file.write(" ")
	file.write(equip4)
	file.write("`n")
	iniread, equip5, setting.ini, global_variable, eq5
	file.write(" ")
	file.write(equip5)
	file.write("`n")

	file.write("`n")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; title
	file.write("Title: ")
	file.write("`n")

	file.write(" ")
	file.write("The man of sealed")
	file.write("`n")

	file.write(" ")
	file.write("Man in the chair")
	file.write("`n")

	file.write(" ")
	file.write("Spider Maze Explorer")
	file.write("`n")

	file.write(" ")
	file.write("zZz Snooze Button")
	file.write("`n")

	file.write(" ")
	file.write("Carelessness")
	file.write("`n")

	file.write(" ")
	file.write("A Night Owl")
	file.write("`n")

	file.write(" ")
	file.write("Pinocchio")
	file.write("`n")

	file.write(" ")
	file.write("Peter Pan")
	file.write("`n")

	file.write(" ")
	file.write("Dungeon Dungeon Dungeon")
	file.write("`n")

	file.write(" ")
	file.write("Grandpa's Card")
	file.write("`n")

	file.write(" ")
	file.write("Bob the Builder")
	file.write("`n")

	file.write(" ")
	file.write("Creeper")
	file.write("`n")

	file.write(" ")
	file.write("Coffeine Slayer")
	file.write("`n")

	file.write(" ")
	file.write("Night's Watch")
	file.write("`n")
/*
	file.write(" ")
	file.write("")
	file.write("`n")
;*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	;run, property,txt
	file.Close()
	;sleep, 2000
	clipboard := ""
	tooltip, Copying
	FileRead, clipboard, property.txt
	clipwait, 5
	;run, copy.ahk
	tooltip, Finish
	send, ^v
	;sleep, 2000
	;send, {enter}
	return
/*
runtext:
	tooltip
	return
;*/
*/
