/// scrUpdateSpeedFromSlope(id, x1, y1, x2, y2)
var x1, y1, x2, y2;
x1 = argument1;
y1 = argument2;
x2 = argument3;
y2 = argument4;
var ID = argument0;
ID.speed = scrDeltaApply(sqrt(sqr(x2 - x1) + sqr(y2 - y1)), true);
ID.direction = scrCorrectAngle(x1, y1, x2, y2);

