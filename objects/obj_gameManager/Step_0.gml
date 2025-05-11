if (global.timer > 0) {
    global.timer -= 1 / room_speed;
} else {
    global.lives -= 1;
    if (global.lives <= 0) {
        room_goto(rm_gameover);
    } else {
        room_restart();
    }
}
