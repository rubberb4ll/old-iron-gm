if (hover.dir == -1)
{
		y -= 0.33;
		if (y <= hover.bounds[0]) hover.dir = 1;
}
if (hover.dir == 1)
{
		y += 0.33;
		if (y >= hover.bounds[1]) hover.dir = -1;
}