/// @description variable creation

//code that runs once when oPlayer is created

// how many pixels per frame we want our player to move
xSpeed = 4;


//what direction the player is facing. 1 = right, -1 = left, 0 = not moving at all (facing front???)
xDirection = 0;

//Directional movement variables
xVector = xSpeed * xDirection;

yVector = 0;

//setting gravity
grv = 0.4;

jumpForce = -13;

//coin count
global.coins = 0;

//boolean for invincibility
isInvincible = false;

//health points
hp = 6;

//level timer
levelTimer = 10;