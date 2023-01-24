lives -= 1;

with(obj_Game){
	alarm[1] = room_speed;
}
audio_play_sound(snd_death, 1, false);

instance_destroy();

repeat(10)
{
	instance_create_layer(x,y,"Instances",obj_Debris)
}

