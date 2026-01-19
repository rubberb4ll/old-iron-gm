x = obj_player.x;
y = obj_player.y;

myDirection = obj_player.myDirection;

// (fire)
if (mouse_check_button_pressed(mb_left))
{
	if (!burglared)
	{
		audio_play_sound(snd_gun, 1, false, 0.1);
		instance_create_layer(x, y, "Bullets", obj_projectile, { sprite_index : spr_projectile_bullet, damage : 2*obj_game_handler.playerBuff[2] });
		var _i;
		for (_i = 0; _i < obj_game_handler.playerBuff[1]; _i++)
			if (random_range(0, obj_game_handler.playerBuff[1]) >= obj_game_handler.playerBuff[1]/2)
				instance_create_layer(x, y, "Bullets", obj_projectile, { sprite_index : spr_projectile_bullet, damage : 2*obj_game_handler.playerBuff[2] });
	}
	else audio_play_sound(snd_stuck, 1, false);
}
if (obj_game_handler.dynamite)
	if (keyboard_check_pressed(vk_space))
	{
		instance_create_layer(x, y, "Bullets", obj_projectile, { sprite_index : spr_projectile_dynamite, damage : 1 });
		obj_game_handler.dynamite = false;
	}