switch(room)
{	
	case rm_game:
	draw_text(20,20,"SCORE:  "+string(score));
	draw_text(20,40,"LIVES:  "+string(lives));
	break;
	
	case rm_start:
	draw_set_halign(fa_center);	
	var c = c_navy;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS"
			,3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2, 200,
			@"  Score 1,000 points to win!

      W to accelerate
       A/D to rotate 
     SPACEBAR to shoot

>> PRESS ENTER TO START <<"
			
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);	
	var c = c_teal;
		draw_text_transformed_color(
			room_width/2, 200, "A WINNER IS YOU!"
			,3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
			
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_game_over:
		draw_set_halign(fa_center);	
	var c = c_maroon;
		draw_text_transformed_color(
			room_width/2, 150, "YOU IS DEAD"
			,3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2, 250,
			"FINAL SCORE:  "+string(score)
			
		);
		draw_text(
			room_width/2, 300,
			"PRESS ENTER TO RESTART"
			
		);
		draw_set_halign(fa_left);
		break;
	
}



