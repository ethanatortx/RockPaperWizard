/// scrWhatAmIDoing(distance, freq)


var direct = obj_player_overworld.direction; //Gets the direct the player is going when the space key is pressed
var dist = argument0; //Distance the player will move
var freq = argument1; // distibution of dash over time

if(direct == 0) // Directly Right
{
    obj_player_overworld.x = obj_player_overworld.x + dist;    
}

if(direct == 45) //Right and up
{
    global.playerPositionX = global.playerPositionX + dist;
    global.playerPositionY = global.playerPositionY - dist;
}
if(direct == 90) // Directly up
{
    global.playerPositionY = global.playerPositionY - dist;
}
if(direct == 135) //Up and to the left
{
    global.playerPositionX = global.playerPositionX - dist;
    global.playerPositionY = global.playerPositionY - dist;
}
if(direct == 180) // /Directly Left
{
    global.playerPositionX = global.playerPositionX - dist;
}
if(direct == 225) // Down and to the left
{
    global.playerPositionX = global.playerPositionX - dist;
    global.playerPositionY = global.playerPositionY + dist;
}
if(direct == 270) // Directly Down
{
    global.playerPositionY = global.playerPositionY + dist;
}
if(direct == 315) // Down and to the right
{
    global.playerPositionX = global.playerPositionX + dist;
    global.playerPositionY = global.playerPositionY + dist;
}

