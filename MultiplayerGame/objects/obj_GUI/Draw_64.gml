/// @description Insert description here
// You can write your code in this editor
if room == rm_start{
	draw_set_color(c_white)
	draw_set_font(font_title)
	draw_text(room_width/2, room_height/3, "TITLE")
	
	draw_set_font(font_text)
	draw_text(room_width/5, room_height/2, "Player 1: W & S Player 2: <- & ->")
	draw_text(room_width/5, room_height/2+50, "SPACE to play")
}
else if room == rm_level1 
or room == rm_level2
or room == rm_level3
or room == rm_level4
or room == rm_level5{
	draw_set_color(c_red)
	draw_set_font(font_text)
	// common values
	draw_text(50, 50, "Lives: "+string(global.player_lives))
	draw_text(room_width/2, 50, "Bullets: "+string(global.bullet))
	// for each player
	draw_text(50, 100, "Player 1 coins: "+string(global.player1_coin))
	draw_text(room_width/2, 100, "Player 2 coins: "+string(global.player2_coin))
}

else if room == rm_end{
	draw_set_color(c_white)
	draw_set_font(font_title)
	if global.lose == true{
		draw_text(room_width/3, room_height/3-100, "Lost!")
	}
	draw_text(room_width/3, room_height/3, "The End")
	draw_text(room_width/3, room_height/3+100, "SPACE to replay")
}