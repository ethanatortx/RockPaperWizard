/// scr_move(keyarr)

var xmov = 0;

if(keyboard_check(keyarr[0]))
{
    --xmov;
}
if(keyboard_check(keyarr[1]))
{
    ++xmov;
}

xmov = xmov * global.player_xspd * global.player_move_xmod;

