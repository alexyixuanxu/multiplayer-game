/// @description Insert description here
// You can write your code in this editor
xspd = 0
yspd = 0

// if get in contact with any kind of enemy, kill them
near_enemy = instance_nearest(x, y, obj_enemy)
if collision_circle(x, y, 8, obj_enemy, false, false){
	instance_destroy(near_enemy);
}