/// scrPlayerDash(distance)


var direct = obj_player_overworld.direction; //Gets the direct the player is going when the space key is pressed
var dist = argument0; //Distance the player will move

if(ds_grid_get(clock, 0, 0) > 0)
{
    var realSpdX = dcos(direct) * dist;
    var realSpdY = -dsin(direct) * dist;
    
    obj_player_overworld.x += realSpdX;
    obj_player_overworld.y += realSpdY;
    
    scrDeltaClockStep();
}
else
{
    ds_grid_destroy(clock);
    dash_active = false;
}

