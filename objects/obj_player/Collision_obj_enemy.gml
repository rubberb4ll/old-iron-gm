// (take damage)
audio_play_sound(dmgSound[irandom_range(0, 2)], 1, false, 0.2);
myHp -= obj_enemy.firstHp;
x = startPos[0];
y = startPos[1];

if (myHp <= 0)
{
	audio_stop_all();
	audio_play_sound(snd_explosion, 1, false, 1);
	room_goto(rm_shop);
}