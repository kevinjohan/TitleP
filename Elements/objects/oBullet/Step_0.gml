if(sprite_index == sPlayerExplotion){
	speed = 0;
	image_speed = 1;
	if(image_index >= 15){
		//audio_play_sound(snd_explosion,1,false);
		instance_destroy();
	}
}