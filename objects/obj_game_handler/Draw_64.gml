draw_set_font(fnt_vanillaWhale);
draw_set_color(c_black);
var _fntH = font_get_size(draw_get_font());

var _str;

switch (room)
{
	case rm_game:
		draw_set_color(c_black);
		_str = "current shift: $" + string(currentScore);
		draw_text((720 - string_width(_str))/2, 666, _str);
		if (dynamite)
		{
			draw_set_color(c_red);
			_str = "!!!dynamite!!!";
			draw_text((720 - string_width(_str))/2, 666 - _fntH - 5, _str);
		}
		break;
	case rm_shop:
		_str = "best shift: $" + string(highScore);
		draw_set_alpha(0.5);
		draw_set_color(make_color_rgb(7, 15, 43));
		draw_text(camera_get_view_x(view_current) + 32, camera_get_view_y(view_current) + _fntH + 10 + 5, _str);
		
		draw_set_alpha(1);
		draw_set_color(make_color_rgb(241, 239, 239));
		draw_text(camera_get_view_x(view_current) + 32, camera_get_view_y(view_current) + _fntH + 10, _str);
		
		draw_set_alpha(0.5);
		draw_set_color(make_color_rgb(241, 239, 239));
		draw_text(camera_get_view_x(view_current) + 32, camera_get_view_y(view_current) + _fntH + 10 - 1, _str);
		
		draw_set_alpha(1);
		break;
	default: break;
}