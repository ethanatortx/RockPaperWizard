/// scrMoveKeyboard(hspd, vspd, keyArr);

// key array format must be [left, right, up, down]

// assign input parameters to local variables for readability
var hspd = argument0;
var vspd = argument1;
var keyArr = argument2; // which keys to check for input

var lkey = keyboard_check(keyArr[0]);
var rkey = keyboard_check(keyArr[1]);
var ukey = keyboard_check(keyArr[2]);
var dkey = keyboard_check(keyArr[3]);

var haxis = 0;
var vaxis = 0;

if (lkey and !rkey) {
    haxis = -1;
} else if (!lkey and rkey) {
    haxis = 1;
} else {
    haxis = 0;
}

if (ukey and !dkey) {
    vaxis = -1;
} else if (!ukey and dkey) {
    vaxis = 1;
} else {
    vaxis = 0;
}

var angle;
var hactual, vactual;
hactual = 0;
vactual = 0;

if(haxis != 0 || vaxis != 0)
{
    hactual = hspd * haxis;
    vactual = vspd * vaxis;
    
    if (haxis == 1 && vaxis == 0) { // straight right
        angle = 0;
    }
    else if (haxis == 1 && vaxis == -1) { // right and up diagonal
        angle = 45;
    }
    else if (haxis == 0 && vaxis == -1) { // straight up
        angle = 90;
    }
    else if (haxis == -1 && vaxis == -1) { // left and up diagonal
        angle = 135;
    }
    else if (haxis == -1 && vaxis == 0) { // straight left
        angle = 180;
    }
    else if (haxis == -1 && vaxis == 1) { // bottom and left diagonal
        angle = 225;
    }
    else if (haxis == 0 && vaxis == 1) { // straight down
        angle = 270;
    }    
    else if (haxis == 1 && vaxis == 1) { // down and right diagonal
        angle = 315;
    }
}
else
{
    var s = scrGetCurrentPlayerSprite();
    if(s == "spr_player_down") angle = 270;
    else if(s == "spr_player_up") angle = 90;
    else if(s == "spr_player_left") angle = 180;
    else if(s == "spr_player_right") angle = 0;
    else angle = 0;
}

scrUpdateSpeedFromSlope(obj_player_overworld, global.playerPositionX, global.playerPositionY, global.playerPositionX+hactual, global.playerPositionY+vactual);
scrUpdateOverworldPlayerSprite(angle);
