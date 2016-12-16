/*
 ----------------------------------------------------------------------------
 "THE BEER-WARE LICENSE":
 <pieis2pi@u.washington.edu> wrote this file.  As long as you retain this
 notice you can do whatever you want with this stuff. If we meet some day,
 and you think this stuff is worth it, you can buy me a beer in return.
 -Evan Thomas
 ----------------------------------------------------------------------------
*/


syringe_diameter = 5;
puck_diameter = 40;
puck_height = 10;
grip_radius = 9;
fillet = 1;

rotate_extrude(angle=360,convexity=10,$fn=64)
    minkowski(){
        difference(){
            translate([syringe_diameter/2+fillet,fillet,0])
                square([puck_diameter/2-2*fillet,
                        puck_height/2+2*grip_radius-2*fillet]);
            union(){
                translate([syringe_diameter+grip_radius+fillet,
                            puck_height-2*fillet,0])
                    square([puck_diameter/2,grip_radius]);
                translate([syringe_diameter+grip_radius+fillet,
                            puck_height+grip_radius-fillet,0])
                    circle(r=grip_radius+fillet,$fn=36);}}
        circle(r=fillet,$fn=36);}
