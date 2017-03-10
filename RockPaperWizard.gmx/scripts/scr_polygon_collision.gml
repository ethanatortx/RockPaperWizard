/// scr_polygon_collision(pointListOne, pointListTwo)

// grid of points making up polygon one
var poly_one = argument0;
var poly_two = argument1;

var points_in_one, points_in_two;
points_in_one = ds_list_size(poly_one)/2;
points_in_two = ds_list_size(poly_two)/2;

var px, py;

// loop through points of polygon two
for(i = 0; i < points_in_two; ++i)
{
    // loop through points of polygon one
    for(k = 0; k < (points_in_one*2); ++k)
    {
        // grap points
        px = poly_one[k];
        py = poly_one[++k]; // and iterate one extra
        if (scr_point_in_polygon(px, py, poly_two))
        {
            return true;
        }
    }
}

return false;
