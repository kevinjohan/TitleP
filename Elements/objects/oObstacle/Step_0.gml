if(y > room_height + sprite_width) instance_destroy();

if(hp <= 0){
	sprite_index = sExplosion
	instance_destroy();
	
}

if(sprite_index == sExplosion){
	speed = 0;
	image_speed = 1;
	if(image_index >= 15){
		//audio_play_sound(snd_explosion,1,false);
		instance_destroy();
	}
}