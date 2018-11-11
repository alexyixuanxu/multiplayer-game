/// @description Insert description here
// You can write your code in this editor

if collision_rectangle(x-16, y-16, x+16, y+16, obj_player, false, false){
    global.player_lives -= 1
    //set the players pos back to the start of the level 
    obj_player.x = obj_player.xstart
    obj_player.y = obj_player.ystart
}
