/// scrMoveGamepad(hspd, vspd, haxis, vaxis, walkThreshold);


// assign parameters to local variables to increase readability;
var hspd = argument0;
var vspd = argument1;

var haxis = argument2;
var vaxis = argument3;

var r = argument4; // circle radius

// checking inside radius
var circleCheckFloat = (sqr(haxis) + sqr(vaxis) - sqr(r)); // gives float for whether the axis movement is inside or outside the circle

var angle = scr_correct_angle(0,0,haxis,vaxis);

// if circleCheckFloat is < 0, it is inside the radius of defined movement
if (circleCheckFloat < 0) {
    var newHorizontalSpd = hspd * global.walkSpeedMod;
    var newVerticalSpd = vspd * global.walkSpeedMod;
}

// if circleCheckFloat is = 0, it is on the radius of defined movement; if it is > 0, it is outside the radius of defined movement
else if (circleCheckFloat >= 0) {
    var newHorizontalSpd = hspd;
    var newVerticalSpd = vspd;
}

var relativeSpeed; // speed at angle
relativeSpeed = sqrt(sqr(newHorizontalSpd) + sqr(newVerticalSpd));

direction = angle; // set angle to angle of joystick
speed = relativeSpeed; // set speed to hypotenuse of joystick angle and both axes
