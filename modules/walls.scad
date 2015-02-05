include <../constants.scad>

use <doorWind.scad>

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
					import (file = "../cad/walls.dxf", layer = "walls11");
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
					walls01(h-1500);
					walls02(h-1500);
					walls03(h);
					walls04(h);
				}
				translate([0,0,plateThick*100]) doors01();
				translate([0,0,(groundFlHeight-floorHeight/2+plateThick)*100]) doors02();
				//translate([0,0,(plateThick)*100]) doors3();
				//translate([0,0,(groundFlHeight+plateThick)*100]) doors2();
				//translate([0,0,(groundFlHeight+plateThick)*100]) doors3();
				translate([0,0,(groundFlHeight+plateThick)*100+200]) windows01();
				//translate([0,0,(groundFlHeight+plateThick)*100+200]) windows1();
			};
}

module lev1Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev1height])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls1(h);
					walls11(h);
					walls5(h);
					translate([0,0,1500]) walls2(h);
					translate([0,0,1500]) walls3(h);
				}
				translate([0,0,0]) doors0();
				//translate([0,0,(groundFlHeight-floorHeight/2+plateThick)*100]) doors05();
				//translate([0,0,(plateThick)*100]) doors3();
				translate([0,0,0]) doors2();
				translate([0,0,floorHeight*100/2]) doors4();
				translate([0,0,floorHeight*100/2]) doors5();
				translate([0,0,1500+400]) windows0(2000);
				translate([0,0,1000]) windows2();
				translate([0,0,1000]) windows3();
			};
}

module lev2Walls(h) {
	translate([borderOut+outWallThick,borderOut+outWallThick,lev2height])
		rotate([0,0,90]) scale([0.01,0.01,0.01])
			difference() {
				union() {
					walls1(h);
					walls11(h);
					//walls5(h);
					translate([0,0,1500]) walls2(h-1500);
					translate([0,0,1500]) walls3(h-1500);
				}
				translate([0,0,0]) doors0();
				//translate([0,0,(groundFlHeight-floorHeight/2+plateThick)*100]) doors05();
				//translate([0,0,(plateThick)*100]) doors3();
				//translate([0,0,0]) doors2();
				translate([0,0,floorHeight*100/2]) doors4();
				//translate([0,0,floorHeight*100/2]) doors5();
				translate([0,0,1500+200]) windows0(1000);
				translate([0,0,1000]) windows2();
				translate([0,0,1000]) windows3();
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
