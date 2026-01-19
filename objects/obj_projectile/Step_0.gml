x += lengthdir_x(mySpeed, myDirection);
y += lengthdir_y(mySpeed, myDirection);

if (place_meeting(x, y, obj_border_player)) instance_destroy(self);