/// @description Insert description here
// You can write your code in this editor

// check if player reached here
if collision_circle(x, y, 32, obj_player, false, false){
	audio_play_sound(snd_blackhole, 0, false)
	global.next_level = true
}