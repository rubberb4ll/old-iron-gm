xSpeed = movingX * mySpeed;
ySpeed = movingY * mySpeed;

image_angle = myDirection;

// (collision)
if (place_meeting(x, y, collisionObj))
{
	if (instance_place(prevX, y, collisionObj) != noone)
		x = prevX;
	else if (instance_place(x, prevY, collisionObj) != noone)
		y = prevY;
	//else
	{
		x = prevX;
		y = prevY;
	}
}

shadow.x = x;
shadow.y = y;