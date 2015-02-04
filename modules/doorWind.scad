include <../constants.scad>

module doors0() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors0");
}

module doors05() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors1");
}

module windows0() {
	linear_extrude(height = 1000, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows3");
}

module windows1() {
	linear_extrude(height = 1000, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows001");
}

/*translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick])
		rotate([0,0,90]) scale([0.01,0.01,0.01]) doors0();*/
