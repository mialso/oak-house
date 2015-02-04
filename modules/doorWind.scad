include <../constants.scad>

module doors0() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors0");
}

module doors05() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors1");
}

module doors2() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors2");
}

module doors3() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors3");
}

module doors4() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors4");
}

module doors5() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "doors5");
}

module windows0(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows3");
}

module windows1() {
	linear_extrude(height = 1000, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows001");
}

module windows2() {
	linear_extrude(height = 1500, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows2");
	translate([0,0,1000]) linear_extrude(height = 500, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows21");
}

module windows3() {
	linear_extrude(height = 1500, convexity = 3)
					import (file = "../cad/doorWind.dxf", layer = "windows1");
}

/*translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick])
		rotate([0,0,90]) scale([0.01,0.01,0.01]) doors0();*/
