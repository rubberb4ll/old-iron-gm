draw_set_font(fnt_vanillaWhale);
draw_set_color(c_black);

if (room == rm_shop)
{
	var _str = "savings: $" + string(cash);
	draw_set_alpha(0.5);
	draw_set_color(make_color_rgb(7, 15, 43));
	draw_text(camera_get_view_x(view_current) + 32, camera_get_view_y(view_current) + 10 + 5, _str);
		
	draw_set_alpha(1);
	draw_set_color(make_color_rgb(241, 239, 239));
	draw_text(camera_get_view_x(view_current) + 32, camera_get_view_y(view_current) + 10, _str);
		
	draw_set_alpha(0.5);
	draw_set_color(make_color_rgb(241, 239, 239));
	draw_text(camera_get_view_x(view_current) + 32, camera_get_view_y(view_current) + 10 - 1, _str);
		
	draw_set_alpha(1);
}