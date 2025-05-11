if (!variable_global_exists("lives")) {
    global.lives = 3;
}

switch (room) {
    case rm_level1: global.timer = 60; break;
    case rm_level2: global.timer = 45; break;
    case rm_level3: global.timer = 30; break;
}
