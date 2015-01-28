include <../constants.scad>

module groundWalls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,-fundamentLow+fundamentThick])
		rotate([0,0,90])
			scale([0.01,0.01,0.01])
				linear_extrude(height = h, convexity = 3)
					import (file = "../cad/base.dxf", layer = "walls00");
}

module mainWalls() {

}

module garageRoofWalls() {

}

module mainRoofWalls() {

}
