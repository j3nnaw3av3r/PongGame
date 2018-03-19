/// @description Draw score

// set draw color
draw_set_color(c_white)

// draw score for player 1 
draw_text_transformed(254, 64, string(global.player1_score), 2, 2, 0); //get x and y from room by hovering mouse

//draw score for player 2
draw_text_transformed(766, 64, string(global.player2_score), 2, 2, 0); 


