/// @description Insert description here
// You can write your code in this editor
xspd = 0
yspd = 0

// if get in contact with any kind of enemy, freeze them for 3 seconds 
near_enemy = instance_nearest(x, y, obj_enemy)
if collision_circle(x, y, 8, obj_enemy, false, false){
	obj.near_enemy.mspd = obj.near_enemy.froze_spd;
	obj_enemy.alarm[0] = 3 * room_speed
	instance_destroy()
}