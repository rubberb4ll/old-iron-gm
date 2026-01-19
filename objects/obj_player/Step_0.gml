// (movement)
movingX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
movingY = keyboard_check(ord("S")) - keyboard_check(ord("W"));
xSpeed = mySpeed * movingX;
ySpeed = mySpeed * movingY;
x += xSpeed;
y += ySpeed;

// (sprite)
if (movingX != 0 || movingY != 0)
{
	sprite_index = spr_player_walk;
	if (!audio_is_playing(snd_walk)) audio_play_sound(snd_walk, 0, false);
}
else
{
	sprite_index = spr_player_idle;
	audio_stop_sound(snd_walk);
}

// (direction)
myDirection = point_direction(x, y, mouse_x, mouse_y);

event_inherited();