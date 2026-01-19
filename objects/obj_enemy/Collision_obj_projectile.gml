if (obj_projectile.sprite_index == spr_projectile_bullet)
{
	audio_play_sound(snd_explosion, 1, false, 0.5);
	myHp -= obj_projectile.damage;
}
else
{
	audio_play_sound(snd_explosion, 1, false, 2);
	myHp = 0;
}