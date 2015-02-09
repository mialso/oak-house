include <../constants.scad>

use <doorWind.scad>
use <roof.scad>

module walls01(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "walls01");
}

module walls02(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "walls02");
}

module walls03(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "walls03");
}

module walls04(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "walls04");
}

module walls11(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "walls11");
}

module walls12(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "walls12");
}

module walls13(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "walls13");
}

module walls21(h) {
	intersection() {
		linear_extrude(height = h, convexity = 3)
						import (file = "../cad/floor2.dxf", layer = "walls21");
		scale([100,100,100]) translate([40,3.7,0]) rotate([90,0,-90])  base2Roof(15,(1/2),107.4,43.7,20,30);
	}
}

module walls22(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor2.dxf", layer = "walls22");
}

module walls30(h) {
	intersection() {
		linear_extrude(height = h, convexity = 3)
						import (file = "../cad/floor3.dxf", layer = "walls30");
		scale([100,100,100]) translate([40,3.7,0]) rotate([90,0,0])  base2Roof(0,(1.5/2),83.7,107.4,15,30);
	}
}

module walls31(h) {
	union() {
		intersection() {
			linear_extrude(height = h, convexity = 3)
							import (file = "../cad/floor3.dxf", layer = "walls31");
			scale([100,100,100]) translate([75,-(50+20),0]) rotate([90,0,90]) baseRoof(13,(1.5/2),40,50);
		}
		intersection() {
			linear_extrude(height = h, convexity = 3)
							import (file = "../cad/floor3.dxf", layer = "walls31");
			scale([100,100,100]) translate([40,0,0]) rotate([90,0,0]) baseRoof(0,(1.5/2),83.7,107.4);
		}
	}
}

module lev0Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,fundamentLow+fundamentThick])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls01(h-1500);
					walls02(h-1500);
					walls03(h);
					walls04(h);
				}
				translate([0,0,plateThick*100]) doors01();
				translate([0,0,(groundFlHeight-floorHeight/2+plateThick)*100]) doors02();
				translate([0,0,(groundFlHeight+plateThick)*100+200]) windows01();
			};
}

module lev1Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev1height])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls01(h);
					walls02(h);
					walls11(h);
					translate([0,0,1500]) walls12(h);
					translate([0,0,1500]) walls13(h);
				}
				doors10();
				doors11();
				doors12();
				doors13();
				translate([0,0,floorHeight*100/2]) doors12();
				translate([0,0,1500+400]) windows12(2000);
				translate([0,0,1000]) windows11();
				translate([0,0,1000]) windows1();
				translate([0,0,2000]) windows10();
			};
}

module lev2Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev2height])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls21(h*2);
					walls02(h);
					translate([0,0,1500]) walls12(h-1500);
					translate([0,0,1500]) walls22(h-1500);
				}
				doors20();
				doors21();
				translate([0,0,1500]) doors22();
				translate([0,0,2000]) windows10();
				translate([0,0,1000]) windows11();
				translate([0,0,1000]) windows20();
				translate([0,0,1000+1500]) windows21();
				translate([0,0,1500+200]) windows12(1000);
			};
}
module lev3Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev3height])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls30(h);
					walls31(h);
				}
				doors30();
				doors31();
				translate([0,0,-1500]) doors22();
				translate([0,0,-500]) windows21();
				translate([0,0,400]) windows30();
			};
}
/*
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
}*/
linear_extrude(height = 3000, convexity = 3)
							import (file = "../cad/floor3.dxf", layer = "walls31");
			scale([100,100,100]) translate([40,0,0]) rotate([90,0,0]) baseRoof(0,(1.5/2),83.7,107.4);
