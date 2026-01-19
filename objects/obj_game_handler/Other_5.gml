switch (room)
{
	case rm_start:
		audio_stop_sound(snd_loop_start);
		break;
	case rm_shop:
		audio_stop_sound(snd_loop_shop);
		break;
	case rm_game:
		audio_stop_sound(snd_loop_game);
		if (currentScore > highScore) highScore = currentScore;
		break;
}