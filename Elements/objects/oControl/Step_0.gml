var keyAccept, keyAnykey, keyUp, keyDown, keyRestart;

keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
keyAccept = keyboard_check_pressed(vk_enter);
keyAnykey = keyboard_check_pressed(vk_anykey);

keyRestart = keyboard_check_pressed(ord("R"));
if(keyRestart) game_restart();

switch(global.strGameState){
	
	case "start":
		if(keyAnykey) global.strGameState = "start_menu";
	break;
	
	case "start_menu": 
		if(keyUp){
			if(numOption > 0) numOption --;
		}
		if(keyDown){
			if(numOption < array_length_1d(arrMenu) - 1) numOption++;
		}
		if(keyAccept){
			switch(numOption)
			{
				case 0:
					room_goto(roomNew);
					global.strGameState = "game_new";
				break;
				case 1:
					room_goto(roomHelp);
					global.strGameState = "game_help";
				break;
				case 2:
					game_end();
				break;
			}	
		}
}