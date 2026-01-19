if (!instance_exists(obj_textbox))
{
	if (obj_shop_handler.cash < obj_shop_handler.price[type - 1])
		instance_create_layer(obj_secretary.x, obj_secretary.y, "Textbox", obj_textbox, { activeString : irandom_range(10, 12) });
	else
	{
		audio_play_sound(snd_kaching, 1, false);
		instance_create_layer(obj_secretary.x, obj_secretary.y, "Textbox", obj_textbox, { activeString : irandom_range(14, 17) });
		obj_shop_handler.cash -= obj_shop_handler.price[type - 1];
		obj_game_handler.playerBuff[type - 1]++;
		obj_shop_handler.price[type - 1] *= obj_game_handler.playerBuff[type - 1];
	}
}