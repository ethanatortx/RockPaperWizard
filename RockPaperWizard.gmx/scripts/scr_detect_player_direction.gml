/// scr_detect_player_direction(signsArray)

var signs = argument0;

var spr = sprite_index;

if (signs[0] == 0 && signs[1] == 0) { // no input
    spr = sprite_index;
}

if (signs[0] == 1 && signs[1] == 0) { // straight right
    spr = spr_player_right;
}

if (signs[0] == 1 && signs[1] == -1) { // right and up diagonal
    spr = spr_player_up;
}

if (signs[0] == 0 && signs[1] == -1) { // straight up
    spr = spr_player_up;
}

if (signs[0] == -1 && signs[1] == -1) { // left and up diagonal
    spr = spr_player_up;
}

if (signs[0] == -1 && signs[1] == 0) { // straight left
    spr = spr_player_left;
}

if (signs[0] == -1 && signs[1] == 1) { // bottom and left diagonal
    spr = spr_player_down;
}

if (signs[0] == 0 && signs[1] == 1) { // straight down
    spr = spr_player_down;
}

if (signs[0] == 1 && signs[1] == 1) { // down and right diagonal
    spr = spr_player_down;
}

return spr;
