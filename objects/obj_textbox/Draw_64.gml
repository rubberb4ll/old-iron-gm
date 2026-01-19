myTimer += 0.5;
draw_set_font(fnt_courier);
draw_set_color(c_black);

var _textPart
_textPart = string_copy(text.str, 1, charLen);
draw_text_ext(text.x, text.y, _textPart, text.h, text.w);

if (myTimer >= 2)
{
	if (charLen < text.len)
	{
		audio_play_sound(snd_talk, 1, false, 1, random_range(0, 0.5));
		charLen++;
	}
	myTimer = 0;
}

// interaction
if (keyboard_check_pressed(vk_space))
{
	if (charLen < text.len) charLen = text.len;
	else instance_destroy(self);
}