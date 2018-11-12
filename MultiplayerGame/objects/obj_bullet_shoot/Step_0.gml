/// @description Insert description here
// You can write your code in this editor
x += xspd
y += yspd

// if get in contact with any kind of enemy, freeze them for 3 seconds 
near_enemy = instance_nearest(x, y, obj_enemy)
if collision_circle(x, y, 8, obj_enemy, false, false){
	audio_play_sound(snd_pick_coin, 0, false);
	near_enemy.mspd = near_enemy.froze_spd;
	obj_enemy.alarm[0] = 3 * room_speed
	instance_destroy()
}

// if get in contact with wall, destroy self
if collision_circle(x, y, 8, obj_wall, false, false){
	audio_play_sound(snd_hit, 0, false);
	instance_destroy()
}