/// @description Insert description here
// You can write your code in this editor
if room == rm_start{
	draw_set_color(c_white)
	draw_set_font(font_title)
	draw_text(room_width/2, room_height/3, "TITLE")
	
	draw_set_font(font_text)
	draw_text(room_width/5, room_height/2, "Player 1: W & S Player 2: J & L")
	draw_text(room_width/5, room_height/2+50, "SPACE to play")
}
else if room == rm_level1{
	draw_set_color(c_white)
	draw_text(50,50,alarm[0])
}

else if room == rm_end{
	draw_set_color(c_white)
	draw_set_font(font_title)
	draw_text(room_width/2, room_height/3, "The End")
	draw_text(room_width/2, room_height/3+50, "SPACE to replay")
}