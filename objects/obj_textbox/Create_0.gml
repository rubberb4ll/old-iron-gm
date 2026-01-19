image_alpha = 0.75;
stringFile = file_text_open_read(working_directory + "strings.txt");

var _str;
var _i = 0;
do
{
	_str = file_text_readln(stringFile);
	_i++;
} until (_i == activeString);

view =
{
	w : 720,
	h : 720
};
var _coordPos = scr_guiCoord(25, 148);
text =
{
	font : fnt_courier,
	x : _coordPos[0],
	y : _coordPos[1],
	w : scr_guiCoord(135, 190)[0] - _coordPos[0],
	h : font_get_size(fnt_courier),
	str : _str,
	len : string_length(_str)
};

mouse_clear(mb_left);
charLen = 0;