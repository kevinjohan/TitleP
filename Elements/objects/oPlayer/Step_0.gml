#region //controles
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
#endregion

#region
	if(up && y > 32) y -= vel;
	if(left && x > 32) x -= vel;
	if(down && y < (room_height - 32) ) y += vel;
	if(right && x < (room_width - 32) ) x += vel;
#endregion
