function scr_guiScale(_xScale, _yScale)
{
	var _newXscale = 0, _newYscale = 0;
	_newXscale = _xScale*720 / 270;
	_newYscale = _yScale*720 / 270;
	return [_newXscale, _newYscale];
}