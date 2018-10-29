/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

/*
if reached_up or reached_down or reached_left or reached_up{
	can_move = false
	pause_timer += 1
	if pause_timer == pause_time {
		// reset timer
		pause_timer = 0
	}
	else if pause_timer = 0{
		can_move = true
	}
}


if can_move{
	if dir == "up" or dir == "down"{
		if y>move_range_up{
			reached_up = false
			y-=spd
		}
		else if y == move_range_up{
			reached_up = true
		}
		
		if y<move_range_down{
			reached_down = false
			y+=spd
		}
		else if y == move_range_down{
			reached_down = true
		}
	}
	else if dir == "left" or dir == "right"{	
		if x>move_range_left{
			reached_left = false
			x-=spd
		}
		else if x == move_range_left{
			reached_left = true
		}
		
		if x<move_range_right{
			reached_right = false
			x+=spd
		}
		else if x == move_range_right{
			reached_right = true
		}
	}
}
*/
if dir == "ver"{
	if y>move_range_up and reached_up = false{
		y-=spd
		if y <= move_range_up{
			reached_up = true
			reached_down = false
		}
	}
	else if y<move_range_down and reached_down = false{
		y+=spd
		if y >= move_range_down{
			reached_down = true
			reached_up = false
		}
	}
}
else if dir == "hor"{	
	if x>move_range_left and reached_left = false{
		x-=spd
		if x <= move_range_left{
			reached_left = true
			reached_right = false
		}
	}		
	else if x<move_range_right and reached_right = false{
		x+=spd
		if x >= move_range_right{
			reached_right = true
			reached_left = false
		}
	}
}


