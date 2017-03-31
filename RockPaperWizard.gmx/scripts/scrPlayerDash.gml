/// scrPlayerDash(distance)


var direct = obj_player_overworld.direction; //Gets the direct the player is going when the space key is pressed
var dist = argument0; //Distance the player will move

if(ds_grid_get(clock, 0, 0) > 0)
{
    if(direct == 0) // Directly Right
    {
        obj_player_overworld.x = obj_player_overworld.x + dist;    
    }
    
    if(direct == 45) //Right and up
    {
        obj_player_overworld.x = obj_player_overworld.x + dist;
        obj_player_overworld.y = obj_player_overworld.y - dist;
    }
    if(direct == 90) // Directly up
    {
        obj_player_overworld.y = obj_player_overworld.y - dist;
    }
    if(direct == 135) //Up and to the left
    {
       obj_player_overworld.x = obj_player_overworld.x - dist;
        obj_player_overworld.y = obj_player_overworld.y - dist;
    }
    if(direct == 180) // /Directly Left
    {
        obj_player_overworld.x = obj_player_overworld.x - dist;
    }
    if(direct == 225) // Down and to the left
    {
        obj_player_overworld.x = obj_player_overworld.x - dist;
        obj_player_overworld.y = obj_player_overworld.y + dist;
    }
    if(direct == 270) // Directly Down
    {
        obj_player_overworld.y = obj_player_overworld.y + dist;
    }
    if(direct == 315) // Down and to the right
    {
        obj_player_overworld.x = obj_player_overworld.x + dist;
        obj_player_overworld.y = obj_player_overworld.y + dist;
    }
    
    scrDeltaClockStep();
}
else
{
    ds_grid_destroy(clock);
    dash_active = false;
}

