include <../constants.scad>

use <plates.scad>

module fundament() {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow])
		rotate([0,0,90]) fundPlate(fundamentThick*100);
}

/*module fundamentWalls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick])
		rotate([0,0,90])
			scale([0.01,0.01,0.01])
				linear_extrude(height = h, convexity = 3)
					import (file = "../cad/base.dxf", layer = "walls00");
}*/
