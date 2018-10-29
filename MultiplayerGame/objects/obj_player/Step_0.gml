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


