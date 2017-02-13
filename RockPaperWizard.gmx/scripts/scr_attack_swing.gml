/// scrAttackSwing(cx,cy,px,py,angle,arc,range)

var cx,cy,a,l,px,py;

// origin of the arc
cx = argument0;
cy = argument1;

// point to check
px = argument2;
py = argument3;

// angle offset for hit detection
a = argument4;

// length of swing arc
arcl = argument5;

// range of attack
range = argument6;

arca = radtodeg(arcl/range);

var temp;
list = ds_list_create();

for (i = 0; i < 4; i++) {
    switch (i) {
        case 0: temp[0] = 0; temp[1] = 0; break;
        case 1: temp = scr_rotate_point(a,range,0); break;
        case 2: temp = scr_rotate_point(a+(arca/2),range,0); break;
        case 3: temp = scr_rotate_point(a+arca,range,0); break;
    }
    ds_list_insert(list,i,cx+temp[0]);
    ds_list_add(list,cy+temp[1]);
}

if (scr_point_in_polygon(px,py,list)) {
    //ds_list_destroy(list);
    return true;
} else {
    //ds_list_destroy(list);
    return false;
}
