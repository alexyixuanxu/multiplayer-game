/// @description Insert description here
// You can write your code in this editor

event_inherited()


x += mspd
if collision_circle(x,y,20,obj_wall,false,false) {
	mspd *= -1
}
	