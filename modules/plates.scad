include <../constants.scad>

module plate00(h) {
	linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor0.dxf", layer = "plate00");
}

module plate01(h) {
	linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor0.dxf", layer = "plate01");
}

module plate02(h) {
	linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor0.dxf", layer = "plate02");
}

module plate03(h) {
	linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor0.dxf", layer = "plate03");
}

module plate04(h) {
	linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor0.dxf", layer = "plate04");
}

module fundPlate(h) {
	scale([0.01,0.01,0.01]) linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor0.dxf", layer = "plateF");
}

module verandaPlate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev1height-h/100]) 
		rotate([0,0,90]) scale([0.01,0.01,0.01]) 
			linear_extrude(height = h, convexity = 3 )
	   			import (file = "../cad/floor1.dxf", layer = "plate11");
}

module lev0Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			plate00(h);
			plate01(h);
			plate02(h);
			plate03(h);
		}
}
module lev05Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev15height-h/100-floorHeight]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			plate02(h);
			plate03(h);
		}
}
module lev1Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev1height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		plate01(h);
}

module lev15Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev15height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		union() {
			plate02(h);
			plate03(h);
		}
}

module lev2Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev2height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		plate01(h);
}

module lev25Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev25height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		plate04(h);
}

module lev3Plate(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev3height-h/100]) rotate([0,0,90])
	scale([0.01,0.01,0.01]) 
		plate02(h);
}
