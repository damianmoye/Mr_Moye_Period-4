/// @description enemy patrol collision
// You can write your code in this editor

//check to see if there is a collision between my player and the enemies head
if (y <= other.y - other.sprite_height*0.9)
//destroy enemy and bounce in the air
{
	EnemyHurt();
	yVector = 0.5*jumpForce;
}

//collide with enemy and restart level
else
{
	PlayerHurt();	
}