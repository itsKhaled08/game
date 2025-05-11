for (var i = 0; i < global.lives; i++) {
    draw_sprite(spr_heart, 0, 20 + i * 40, 20);
}
draw_text(600, 20, "Time: " + string(ceil(global.timer)));
