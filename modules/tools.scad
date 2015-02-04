include <../constants.scad>

module ground() {
	translate([0,0,-50]) cube([200,750,50]);
}
module cotlovan() {
	difference() {
		ground();
		translate([borderOut+outWallThick,borderOut+outWallThick, fundamentLow])
			rotate([0,0,90])
				scale([0.01,0.01,0.01])
					linear_extrude(height = -fundamentLow*100+100, convexity = 3)
						import (file = "cad/base.dxf", layer = "perimeter");
	}
}
