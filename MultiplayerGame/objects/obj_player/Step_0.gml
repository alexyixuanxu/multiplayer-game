/// @description Insert description here
// You can write your code in this editor

image_speed = 0

// up and dowm
if keyboard_check(ord("W")){
	y-=playerSpeed
}
else if keyboard_check(ord("S")){
	y+=playerSpeed
}
// left and right
if keyboard_check(vk_left){
	x-=playerSpeed
}
else if keyboard_check(vk_right){
	x+=playerSpeed
}

// show sprites!
// if both player are pressing, purple
if (keyboard_check(ord("W")) or keyboard_check(ord("S"))) and 
(keyboard_check(vk_left) or keyboard_check(vk_right)){
	sprite_index = spr_players
}
// if only up or down pressing, red
else if keyboard_check(ord("W")) or keyboard_check(ord("S")){
	sprite_index = spr_player1
}
// if only left and right pressing, blue
else if keyboard_check(vk_left) or keyboard_check(vk_right){
	sprite_index = spr_player2
}
else{
	sprite_index = spr_players
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

// the wall stuff
if collision_rectangle(x-16, y-16, x+16, y+16, obj_wall, false, false){
	x = xprevious
	y = yprevious
}

//////////////////////// pick up bullets /////////////////////////////////
near_bullet = instance_nearest(x, y, obj_bullet)
if collision_rectangle(x-16, y-16, x+16, y+16, obj_bullet, false, false){
	instance_destroy(near_bullet)
	global.bullet += 1
}

/////////////////////// pick up coins ////////////////////////////////////
near_coin = instance_nearest(x, y, obj_coin)
if sprite_index == spr_player1{
	if collision_rectangle(x-16, y-16, x+16, y+16, obj_coin, false, false){
		instance_destroy(near_coin)
		global.player1_coin += 1
	}
}
else if sprite_index == spr_player2{
	if collision_rectangle(x-16, y-16, x+16, y+16, obj_coin, false, false){
		instance_destroy(near_coin)
		global.player2_coin += 1
	}
}
// else no one gets the coin!
else{
	if collision_rectangle(x-16, y-16, x+16, y+16, obj_coin, false, false){
		instance_destroy(near_coin)
	}
}




