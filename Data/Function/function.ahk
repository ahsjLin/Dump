;#################################	Function
Level_up_value(ByRef input,ByRef input_effort)
{	
	Random, r,2,10
	floor(r)
	input +=r
	input +=input_effort
	return 
}
/*
Effort_point(ByRef input)
{
	input++
	return 
}
*/

Level_up_hp_mp_value(ByRef input, ByRef input_effort)
{
	temp := floor(input*0.01)
	temp2:= floor(input*0.02)
	Random,r,%temp%,%temp2%
	r := floor(r)
	if(input>99999)
		input := input + (input_effort * (floor(input*0.0005)))
	else if(input>9999)
		input := input + floor(r*0.1) +(input_effort * (floor(input*0.005)))
	else
		input := input + r + (input_effort * (floor(input*0.05)))
	return
}
calculator_effort(ByRef temp, ByRef Max, ByRef level_effort)
{
	temp++
	if(temp>=Max)
	{
		temp -= Max
		Max +=floor(Max*0.0001)
		level_effort++
		if(level_effort>10)
			Random,level_effort,1,%level_effort% 
	}
	return
}
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;=================================
skill_effort(ByRef effort, ByRef level)
{
	effort++
	if(effort>(500*level))
	{
		level++
		;##################	tooltip
		MouseGetPos, tempx, tempy
		loop 20
		{
			Tooltip,Skill LEVEL UP,%tempx%,%tempy%,1
			tempy--
			sleep, 25
		}
		Tooltip,,,,1
		;@@@@@@@@@@@@@@@@@@@@
		;====================
	}
	return
}
