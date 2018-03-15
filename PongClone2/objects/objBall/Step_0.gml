/// bounce and reset
//this takes care of the ball bouncing off of the ceiling and floor of the room

if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))		// || is the same as "or"
{
	vspeed *= -1;
}

//this takes care of resetting after the ball leaves the room (past the paddles)

if (x <= 0 || x >= room_width)
{
	x = xstart;
	y = ystart;
}

