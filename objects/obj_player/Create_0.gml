event_inherited();

dmgSound = [snd_oof, snd_ouch, snd_ugh];
myHp = (2 + obj_game_handler.playerBuff[0]) * obj_game_handler.difficulty;

startPos = [x, y];
mySpeed = 1.5;
collisionObj = array_concat(collisionObj, [obj_border_player]);

weapon = instance_create_layer(x, y, "Entities", obj_weapon,
{ image_xscale : self.image_xscale,
	image_yscale : self.image_yscale,
	fireRate : 1,
	damage : 1,
	type : "simple"}
);