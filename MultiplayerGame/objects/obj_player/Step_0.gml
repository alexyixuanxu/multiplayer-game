/// @description Insert description here
// You can write your code in this editor




// up and dowm
if keyboard_check(ord("W")){
	y-=playerSpeed
}
else if keyboard_check(ord("S")){
	y+=playerSpeed
}
// left and right
if keyboard_check(ord("J")){
	x-=playerSpeed
}
else if keyboard_check(ord("L")){
	x+=playerSpeed
}

// blackhole
// check collsion with player
if collision_circle(x, y, 16, obj_blackhole, false, false){
	x = obj_blackhole_end.x
	y = obj_blackhole_end.y
}

/*
// check collision with wall
// up
if collision_line(x-16, y-16, x+16, y-16, obj_wall, false, false){
	obj_player.y = y-32
}
// down
else if collision_line(x-16, y+16, x+16, y+16, obj_wall, false, false){
	obj_player.y = y+32
}
// left
else if collision_line(x-16, y-16, x-16, y+16, obj_wall, false, false){
	obj_player.x = x-32
}
// right
else if collision_line(x+16, y-16, x+16, y+16, obj_wall, false, false){
	obj_player.x = x+32
}
*/

if collision_rectangle(x-16, y-16, x+16, y+16, obj_wall, false, false){
	x = xprevious
	y = yprevious
}


