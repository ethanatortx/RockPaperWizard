/// scr_keyboard_movement(keyarr)


/*
    KEYARR = array conatining four movement keys
*/

var keyarr = argument0;
var checkarr;

for( i = 0; i < array_length_1d(keyarr); i++ ) {
    if (keyboard_check(keyarr[i])) checkarr[i] = 1;
    else checkarr[i] = 0;
}

