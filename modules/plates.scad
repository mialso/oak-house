include <../constants.scad>

module fundPlate(h) {
	scale([0.01,0.01,0.01]) linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/plates.dxf", layer = "plateGr");
}

module verandaPlate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev1height-h/100]) 
		rotate([0,0,90]) scale([0.01,0.01,0.01]) 
			linear_extrude(height = h, convexity = 3 )
	   			import (file = "../cad/plates.dxf", layer = "plate7");
}

module lev0Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate1");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate2");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate3");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate4");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate55");
		}
}
module lev05Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev15height-h/100-floorHeight]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate4");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate55");
		}
}
module lev1Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev1height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate1");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate2");
		}
}

module lev15Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev15height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate4");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate55");
		}
}

module lev2Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev2height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate1");
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate2");
		}
}

module lev25Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev25height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			linear_extrude(height = h, convexity = 3 ) 
				import (file = "../cad/plates.dxf", layer = "plate6");
		}
}
