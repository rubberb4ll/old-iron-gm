/// @description (music)

switch (room)
{
	case rm_start:
		audio_play_sound(snd_loop_start, 1, true, 0.5);
		break;
	case rm_shop:
	case rm_thanks:
		audio_play_sound(snd_loop_shop, 1, true, 0.5);
		break;
	case rm_game:
		audio_play_sound(snd_loop_game, 1, true, 0.5);
		break;
}