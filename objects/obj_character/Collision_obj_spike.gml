global.lives -= 1;
if (global.lives <= 0) {
    room_goto(rm_gameover);
} else {
    room_restart();
}
