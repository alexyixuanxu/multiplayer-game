/// @description Insert description here
// You can write your code in this editor
global.player_lives = 5
global.next_level = false
global.player1_coin = 0
global.player2_coin = 0
global.bullet = 0

global.timerMax = room_speed * 30
global.timer = global.timerMax

audio_play_sound(snd_bgm, 1, true)
