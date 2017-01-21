/// scr_keyboard_movement(keyarr)


/*
    KEYARR = array conatining four movement keys
*/

var keyarr = argument0;
var checkarr;

for( i = 0; i < keyarr.length; i++ ) {
    if (keyboard_check(keyarr[i])) checkarr[i] = 1;
    else checkarr[i] = 0;
}

