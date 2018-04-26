/// @description bounce and reset
//this takes care of the ball bouncing off of the ceiling and floor of the room

if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))		// || is the same as "or"
{
	vspeed *= -1;
}

// check to see if player scored
if (x <= 0) || (x >= 1024)		//0 is left side boundary, 1024 is right side boundary of screen
{
	// which player scored?
	if (x >= 1024)
	global.player1_score += 1;
	else
	global.player2_score += 1;

	// check if winning score is reached, if so, show new room (win message)
	if (global.player1_score = 10) //change number to 10 after testing
	{
		room_goto(rmP1Win)
	}
	
	if (global.player2_score = 10) //change number to 10 after testing
	{
		room_goto(rmP2Win)
	}
}

//this takes care of resetting after the ball leaves the room (past the paddles)

if (x <= 0 || x >= room_width)
{
	x = xstart;
	y = ystart;
}


