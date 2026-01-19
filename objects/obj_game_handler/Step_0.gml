// spawn enemies
if (room == rm_game)
{
	myTimer++;
	if (myTimer == 50)
	{
		myTimer = 0;
		if (random_range(0, 1) >= 1 - 10/difficulty)
		{
			instance_create_layer(0, 0, "Entities", obj_enemy, { hpMult : difficulty });
			difficulty += 1;
		}
		if (random_range(0, 1) >= 1 - 5/difficulty)
			obj_weapon.burglared = !obj_weapon.burglared;
		if (random_range(0, 1) >= 1 - 1/difficulty - 1/playerBuff[1])
		{
			audio_play_sound(snd_beep, 1, 0, 1);
			dynamite = true;
		}
	}
}

if (difficulty >= 2147483647) difficulty = 0;