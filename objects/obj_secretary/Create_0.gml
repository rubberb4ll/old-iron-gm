if (!obj_game_handler.gameStarted)
{
	instance_create_layer(x, y, "Textbox", obj_textbox, { activeString : 2 });
	obj_game_handler.gameStarted = true;
}
else instance_create_layer(x, y, "Textbox", obj_textbox, { activeString : irandom_range(4, 8) });