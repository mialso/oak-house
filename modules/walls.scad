include <../constants.scad>

use <doorWind.scad>

module walls1(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/walls.dxf", layer = "walls1");
}
module walls2(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/walls.dxf", layer = "walls2");
}
module walls3(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/walls.dxf", layer = "walls3");
}
module walls4(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/walls.dxf", layer = "walls4");
}
module walls5(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/walls.dxf", layer = "walls5");
}

module lev0Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls1(h);
					walls2(h);
					walls4(h);
				}
				translate([0,0,plateThick*100]) doors0();
				translate([0,0,(groundFlHeight-floorHeight/2+plateThick)*100]) doors05();
				translate([0,0,(groundFlHeight+plateThick)*100+200]) windows0();
				translate([0,0,(groundFlHeight+plateThick)*100+200]) windows1();
			};
}

module groundWalls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick])
		rotate([0,0,90])
			scale([0.01,0.01,0.01])
				union() {
					walls1(h);
					walls2(h);
					walls4(h);
				};
}

module mainWalls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev15height])
		rotate([0,0,90])
			scale([0.01,0.01,0.01])
				union() {
					walls1(h);
					walls2(h);
					walls3(h);
				};
}

module garageRoofWalls() {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev15height])
		rotate([0,0,90])
			scale([0.01,0.01,0.01])
				union() {
					walls1(h);
				};
}

module mainRoofWalls() {

}

module verandaWalls(h) {
		translate([borderOut+outWallThick,borderOut+outWallThick,lev1height])
		rotate([0,0,90])
			scale([0.01,0.01,0.01])
				union() {
					walls5(h);
				};
}
