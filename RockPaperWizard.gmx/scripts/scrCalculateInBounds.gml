/// scrCalculateInBounds(px, py, pQueue)
var cx, cy, lx, ly;
var bit = 0, px = argument0, py = argument1, pQueue = argument2;
lx = ds_queue_dequeue(pQueue);
ly = ds_queue_dequeue(pQueue);

for(i = 2; i < ds_list_size(pQueue); i+=2)
{
    cx = ds_queue_dequeue(pQueue);
    cy = ds_queue_dequeue(pQueue);
    if((py > cy && py < ly) && (px > cx && px < lx)) 
    { bit = 1; }
    else
    { return 0; }
    lx = cx;
    ly = cy;
}

return bit;
