/// @description Insert description here
// You can write your code in this editor
if room == rm_start{
	draw_set_color(c_white)
	draw_set_font(font_title)
	draw_text(300, 70, "Double - Two Souls in One Body")
	
	draw_set_font(font_text)
	draw_text(135, 175, "Redie, press W and S to move up and down")
	draw_text(135, 240, "Blu, press LEFT and RIGHT to move...well, you know.")
	
	draw_text(100, 305, "Your goal is to reach")
	draw_text(350, 305, "within time.")
	
	draw_text(100, 365, "Remember to avoid blackhole")
	draw_text(465, 365, "or you may end up who knows where")
	
	draw_text(100, 415, "You don't wanna touch those spiky things,")
	draw_text(570, 415, ", no.")
	
	draw_text(100, 465, "And watch out for those crazies...")
	
	draw_text(100, 525, "Shoot them moving ones with bullets")
	draw_text(500, 525, ", if you got any.")
	
	draw_text(100, 575, "You can shoot 8 ways! Yayyyy! Just press A/D/UP/DOWN.")
	
	draw_text(100, 625, "By the way, you two need to collect your own coins")
	draw_text(620, 625, "Let's see who's the BETTER one.")
	
	draw_text(400, 710, "Press SPACE and let's go!")
} else if room == rm_level1 
or room == rm_level2
or room == rm_level3
or room == rm_level4
or room == rm_level5{
	draw_set_font(font_text)
	draw_set_color(c_purple)
	// common values
	draw_text(400, 50, "Time Remaining: "+string(global.timer/room_speed))
	draw_text(250, 50, "Lives: "+string(global.player_lives))
	draw_text(700, 50, "Bullets: "+string(global.bullet))
	// for each player
	draw_set_color(c_red)
	draw_text(30, 50, "Redie's coins: "+string(global.player1_coin))
	draw_set_color(c_blue)
	draw_text(820, 50, "Blu's coins: "+string(global.player2_coin))

	

}

else if room == rm_end{
	draw_set_color(c_white)
	draw_set_font(font_title)
	if global.player_lives==0{
		draw_text(100, 80, "You lost!")
	}
	// if remain any life, win!!
	else{
		draw_text(100, 80, "You made it!")
	}
	
	draw_text(100, 200, "Let's do some counting...")
	draw_set_color(c_red)
	draw_text(100, 280, "Redie, you have "+string(global.player1_coin)+" coins.")
	draw_set_color(c_blue)
	draw_text(100, 360, "Blu, you have "+string(global.player2_coin)+" coins.")
	if global.player1_coin > global.player2_coin{
		draw_set_color(c_red)
		draw_text(100, 440, "Redie is clearly superior.")
	}
	else if global.player1_coin < global.player2_coin{
		draw_set_color(c_blue)
		draw_text(100, 440, "Blu is obviously the better one.")
	}
	else{
		draw_set_color(c_purple)
		draw_text(100, 440, "You are both equally lame...just kidding!")
	}
	draw_set_color(c_white)
	draw_text(100, 600, "SPACE to go again!")
}