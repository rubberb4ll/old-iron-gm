event_inherited();

mySpeed = obj_player.mySpeed/3;
spawnArea = [0, 0, room_width, 27];
// x1 y1 x2 y2

x = random_range(spawnArea[0], spawnArea[2]);
y = random_range(spawnArea[1], spawnArea[3]);

image_blend = make_color_rgb(irandom_range(0, 255), irandom_range(0, 255), irandom_range(0, 255));
image_alpha = 0;
myHp = 2*hpMult;
firstHp = myHp;