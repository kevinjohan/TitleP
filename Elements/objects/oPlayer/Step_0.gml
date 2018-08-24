#region //controles
	up = keyboard_check(k_up);
	down = keyboard_check(k_down);
	left = keyboard_check(k_left);
	right = keyboard_check(k_right);
	shoot = keyboard_check(k_shoot);
#endregion

#region //movimiento
	if(up && y > 32) y -= vel;
	if(left && x > 32) x -= vel;
	if(down && y < (room_height - 32) ) y += vel;
	if(right && x < (room_width - 32) ) x += vel;
#endregion


#region //skills
	#region //Shoot
		if(shoot){
			if(bullet_delay == bullet_inic_delay){ //se crea bala
				bullet_delay = 0;
				//audio_play_sound(sound_shoot,1,false);  SONIDO BALA
				bullet = instance_create_layer(x, y - (sprite_height / 2), "player", oBullet);
				bullet.damage = bullet_damage;
				bullet.speed = bullet_speed;
				bullet.direction = 90;
			}
			else{
				bullet_delay ++;
			}
		}else{
			bullet_delay = 0; 
		}

	#endregion

#endregion

#region //muerte
	if(sprite_index == sPlayerExplotion){
	hspeed = 0;
	image_speed = 1;
	
	if(image_index == 13){
		//audio_play_sound(snd_explosion,1,false);
	}
	if(image_index >= 15){
		game_restart();
	}
}

#endregion
