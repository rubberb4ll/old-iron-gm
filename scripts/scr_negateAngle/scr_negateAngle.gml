function scr_negateAngle( _angle)
{
	var _newAngle = 0;
	_newAngle = _angle + 180;
	if (_newAngle > 360) _newAngle -= 360;
	return _newAngle;
}