/// scrUpdateOverworldPlayerSprite(angle)

var angle = argument0;
var spr = obj_player_overworld.sprite_index;

angle = angle % 360;

if(angle >= 0 && angle < 45)
{
    spr = global.playerSprArr[3];
}    
else if(angle >= 45 && angle < 90)
{
    spr = global.playerSprArr[1];
}    
else if(angle >= 90 && angle < 135)
{
    spr = global.playerSprArr[1];
}
else if(angle >= 135 && angle < 180)
{
    spr = global.playerSprArr[1];
}
else if(angle >= 180 && angle < 225)
{
    spr = global.playerSprArr[2];
}
else if(angle >= 225 && angle < 270)
{
    spr = global.playerSprArr[0];
}
else if(angle >= 270 && angle < 315)
{
    spr = global.playerSprArr[0];
}
else if(angle >= 315 && angle < 360)
{
    spr = global.playerSprArr[0];
}

return spr;
