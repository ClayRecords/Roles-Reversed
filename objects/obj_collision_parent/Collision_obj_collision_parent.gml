if (pushable && speed != 0) {
	if (other.id != obj_player.id) {
		get_close_to_collision(self);
	}
}