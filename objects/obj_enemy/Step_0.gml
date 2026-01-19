// (move toward player)
if (image_alpha < 1)
 image_alpha += 0.02;
myDirection = point_direction(x, y, obj_player.x, obj_player.y);
move_towards_point(obj_player.x, obj_player.y, mySpeed);

event_inherited();

// (check health)
if (myHp <= 0) instance_destroy(self);