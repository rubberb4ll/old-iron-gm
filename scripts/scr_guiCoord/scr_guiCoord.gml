function scr_guiCoord(_x, _y)
{
	var _newX = 0, _newY = 0;
	_newX = _x*720 / 270;
	_newY = _y*720 / 270;
	return [_newX, _newY];
}