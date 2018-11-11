/// @description Insert description here
// You can write your code in this editor



if room == rm_start{
	if keyboard_check_pressed(vk_space){
		room_goto(rm_level1)
	}
}
else if room == rm_level1{
	
	if global.next_level == true{
		global.next_level = false
		room_goto(rm_level2)
	}
}
else if room == rm_level2{
	if global.next_level == true{
		global.next_level = false
		room_goto(rm_level3)
	}
}
else if room == rm_level3{
	if global.next_level == true{
		global.next_level = false
		room_goto(rm_level4)
	}	
}
else if room == rm_level4{
	if global.next_level == true{
		global.next_level = false
		room_goto(rm_level5)
	}	
}
else if room == rm_level5{
	if global.next_level == true{
		global.next_level = false
		room_goto(rm_end)
	}	
}
else if room == rm_end{
	if keyboard_check_pressed(vk_space){
		room_goto(rm_start)
	}	
}


