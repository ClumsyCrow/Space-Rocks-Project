if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game)
			break;
			
		case rm_win:
		case rm_game_over:
			game_restart();
			break;
	}
}
if(room == rm_game){
	if (score >= 500){
		room_goto(rm_win);
	}

	if (lives <= 0){
		room_goto(rm_game_over);
	}
}