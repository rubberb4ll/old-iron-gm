image_xscale = 2;
image_yscale = 2;

collisionObj = [obj_border];

myWidth = image_xscale * sprite_width;
myHeight = image_yscale * sprite_height;
myDirection = 0;

depth = 0;
shadow = instance_create_layer(x, y, "Entities", obj_shadow,
{ sprite_index : spr_shadow_entity,
	image_xscale : self.image_xscale,
	image_yscale : self.image_yscale }
);
shadow.depth = depth--;