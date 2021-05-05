low:
	ori_hp_temp_low := floor(ori_hp/20)
	ori_mp_temp_low := floor(ori_mp/20)
	if(ori_hp<(ori_hp_temp_low) && ori_mp<(ori_mp_temp_low))
		tooltip, Tired,,,10
	else if(ori_mp<(ori_mp_temp_low))
		tooltip, Mp warning,,,10
	else if(ori_hp<(ori_hp_temp_low)){
		tooltip, HP warning,,,10
	}
	;cancel tooltip
	if(ori_hp>(ori_hp_temp_low) && ori_mp>(ori_mp_temp_low))
		tooltip,,,,10
	return
