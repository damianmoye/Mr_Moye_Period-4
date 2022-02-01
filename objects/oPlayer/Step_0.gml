/// @description movement code

//code that runs every frame

levelTimer -= 1/room_speed;

if (levelTimer <= 0)
{
	room_restart();	
}


//keyyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//Horizontal Movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if there is a wall, and if there is, stop mevement, if there isn't continue movement

if (place_meeting(x + xVector, y, oWall))
	{
		//check one pixel to the left or right of us until we collide with a oWall
		// ! meants "not"
		while(!place_meeting(x + xVector, y, oWall))
			{
			//only move 1 pixel at a time until you hit a oWall
			x = x + xDirection;
			}
			xVector = 0;
	}
//otherwise move normal
x = x + xVector;

//Vertical Movement
yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check one pixel to the up or down of us until we collide with a oWall
		// ! meants "not"
		//"sign" is going to return the positive or nagative sign for a value (-1, +1)
		//sign(yVector) if yVector is positive it will return a postive 1, and if our yVector is negative, it will return a -1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			//only move 1 pixel at a time until you hit a oWall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press the jump key, fly like an eagle
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}


//die in a pit
if (y >= room_height)
	{
		PlayerDeath();
	}