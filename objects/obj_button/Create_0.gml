shadow = instance_create_layer(x, y + 2, "Deco", obj_shadow,
{ sprite_index : shadowSpr,
	image_xscale : self.image_xscale,
	image_yscale : self.image_yscale,
	depth : self.depth-- }
);

startY = y;
hover =
{
	active : false,
	bounds : [startY - 3, startY + 3],
	dir : -1
};

myWidth = sprite_width * image_xscale;
myHeight = sprite_height * image_yscale;

draw_set_font(fnt_vanillaWhale);
draw_set_color(c_white);