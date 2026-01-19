draw_set_font(fnt_courier);
var _coord = scr_guiCoord(x + 27, y + 10);

draw_set_alpha(0.5);
draw_set_color(make_color_rgb(241, 239, 239));
draw_text(_coord[0], _coord[1] + 2, "$" + string(obj_shop_handler.price[type - 1]));
		
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(_coord[0], _coord[1], "$" + string(obj_shop_handler.price[type - 1]));
		
draw_set_alpha(1);