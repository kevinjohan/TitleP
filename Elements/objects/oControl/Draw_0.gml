draw_set_font(global.fntGlobal);
draw_set_halign(fa_center);

switch(global.strGameState){
	
	case "start":	
		draw_sprite(sprTitle, 0, room_width div 2, room_height div 3);
	
		draw_set_color(c_black)
		draw_text(room_width div 2, 100, strStart);
		draw_set_color(c_white);
		draw_text(room_width div 2 - 1, 100 - 1, strStart);
	break;
	
	case "start_menu":
	draw_sprite(sprTitle, 0, room_width div 2, room_height div 3);
	
	for(var i = 0; i < array_length_1d(arrMenu); i++){
		draw_set_color(c_black)
		draw_text(room_width div 2 + 1, 100 + i, arrMenu[i]);
		draw_set_color(c_white);
		draw_text(room_width div 2, 100 - 1 + i * 17, arrMenu[i]);
		
		if(numOption == i) draw_sprite(sprFace, 0, 100, 100 + i * 17)
	}
	break;
}