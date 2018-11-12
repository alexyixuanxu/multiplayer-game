/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// check top spike collsion with player
if collision_circle(x, y, 2, obj_player, false, false){
	audio_play_sound(snd_die, 0, false)
	obj_player.x = obj_player.xstart
	obj_player.y = obj_player.ystart
	global.player_lives -= 1
	global.timer = global.timerMax
}