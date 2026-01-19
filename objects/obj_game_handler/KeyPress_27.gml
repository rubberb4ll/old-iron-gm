/// @description (return to shop / suicide)

if (room = rm_game)
{
	audio_stop_all();
	audio_play_sound(snd_explosion, 1, false, 1);
	room_goto(rm_shop);
}
if (room = rm_start) game_end(0);