/// @description Insert description here
// You can write your code in this editor

if collision_circle(x,y,20,obj_player,false,true) {
	global.player_lives -= 1
	//set the players pos back to the start of the level 
	obj.player.x = obj.player.xstart
	obj.player.y = obj.player.ystart
}
