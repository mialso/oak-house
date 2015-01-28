include <constants.scad>
use <roof.scad>
use <tools.scad>

module ugPerimeter() {
	polygon(
		points = [
			//inside points
			[0,0],[0,120],[50-inWallThick,120],[50-inWallThick,80+inWallThick],[40,80+inWallThick],
			[40,0],[40+inWallThick,0],[40+inWallThick,40],[100,40],[100,0],
			//outside points
			[100+outWallThick,0-outWallThick],[0-outWallThick,0-outWallThick],
			[0-outWallThick,120+outWallThick],[50,120+outWallThick],[50,80],[40+inWallThick,80],
			[40+inWallThick,40+inWallThick],[100+outWallThick,40+inWallThick]
		],
		paths = [
			[0,1,2,3,4,5],
			[6,7,8,9],
			[10,11,12,13,14,15,16,17]
		]
	);
}

//linear_extrude(height = 15) ugPerimeter();
module perimeter(th) {
	scale([0.01,0.01,0.01])  linear_extrude(height = th, convexity = 3)
	   import (file = "floor01.dxf", layer = "0");
}
module lev0Plate(h) {
	color([0.5,0.5,0.5]) scale([0.01,0.01,0.01]) linear_extrude(height = h, convexity = 3 )
	   import (file = "floor01.dxf", layer = "plate0");
}

module lev0Wall(h) {
	color([0.5,0.5,0.7])
		scale([0.01,0.01,0.01])
			difference() {
				linear_extrude(height = h, convexity = 3 )
					import (file = "floor01.dxf", layer = "walls0");
				linear_extrude(height = h-300, convexity = 3)
					import (file = "floor01.dxf", layer = "doors0");
			}
}

module lev1Plate(h) {
	color([0.5,0.5,0.9])
		scale([0.01,0.01,0.01])
			linear_extrude(height = h, convexity = 3)
				import (file = "floor01.dxf", layer = "plate1");
}

module lev1Wall(h) {
	color([0.5,0.5,1])
		scale([0.01,0.01,0.01])
			difference() {
				linear_extrude(height = h, convexity = 3 )
					import (file = "floor01.dxf", layer = "walls1");
				translate([0,0,-10]) linear_extrude(height = h-300, convexity = 10 )
					import (file = "floor01.dxf", layer = "doors1");
				translate([0,0,1600]) linear_extrude(height = 1000, convexity = 10)
					import (file = "floor01.dxf", layer = "windows1");
			}
}
module lev2Wall(h) {
	color([0.5,1,1])
		scale([0.01,0.01,0.01])
			/*translate([0,0,2500])*/
				difference() {
					linear_extrude(height = h, convexity = 3 )
						import (file = "floor02.dxf", layer = "walls2");
					translate([0,0,-10]) linear_extrude(height = 2100, convexity = 3 )
						import (file = "floor02.dxf", layer = "doors2");
					translate([0,0,1000]) linear_extrude(height = 1500, convexity = 3)
						import (file = "floor02.dxf", layer = "windows2");
				}
}

module lev3Wall(h) {
	color([0,0.5,1])
		scale([0.01,0.01,0.01])
			/*translate([0,0,2500])*/
				difference() {
					linear_extrude(height = h, convexity = 3 )
						import (file = "floor02.dxf", layer = "walls3");
					translate([0,0,-10]) linear_extrude(height = 2100, convexity = 3 )
						import (file = "floor02.dxf", layer = "doors3");
					translate([0,0,300]) linear_extrude(height = 2500, convexity = 3)
						import (file = "floor02.dxf", layer = "windows3");
				}
}

module lev3Plate(h) {
	color([1,0.5,0.5]) scale([0.01,0.01,0.01]) linear_extrude(height = h)
	   import (file = "floor02.dxf", layer = "plate3");
}

module lev4WallA(h) {
	color([0,0.5,1])
		rotate([0,0,-90])
		intersection() {
			difference() {
			rotate([0,0,90]) translate([20,-10,0])
				scale([0.01,0.01,0.01])
					linear_extrude(height = h, convexity = 10 )
						import (file = "floor3.dxf", layer = "walls4b");
				scale([0.01,0.01,0.01])
					rotate([0,0,90]) translate([2000,-1000,1000]) linear_extrude(height = 1500, convexity = 10 )
						import (file = "floor3.dxf", layer = "windows4a");
			}
				translate([-3.7,40,0]) rotate([90,0,0]) baseRoof(15,(1.5/2),107.4,43.7);
			}
}

module lev4WallB(h) {
	color([0,0.5,1])
		scale([0.01,0.01,0.01])
			difference() {
				linear_extrude(height = h, convexity = 3 )
					import (file = "floor3.dxf", layer = "walls4a");
				linear_extrude(height = 2000, convexity = 3 )
					import (file = "floor3.dxf", layer = "doors4");
			}
}

module lev4Plate(h) {
	color([1,0.5,0.5]) scale([0.01,0.01,0.01]) linear_extrude(height = h)
	   import (file = "floor3.dxf", layer = "plate4");
}

module lev5Plate(h) {
	color([1,0.5,0.5]) scale([0.01,0.01,0.01]) linear_extrude(height = h)
	   import (file = "floor02.dxf", layer = "plate5");
}

module lev5WallA(h) {
	color([0,0.5,1])
		scale([0.01,0.01,0.01])
			/*translate([0,0,2500])*/
				difference() {
					linear_extrude(height = h, convexity = 3 )
						import (file = "floor02.dxf", layer = "walls3");
					//translate([0,0,-10]) linear_extrude(height = 2100, convexity = 3 )
						//import (file = "floor02.dxf", layer = "doors3");
					translate([0,0,300]) linear_extrude(height = 900, convexity = 3)
						import (file = "floor02.dxf", layer = "windows3");
				}
}
module lev5WallB(h) {
	color([0,0.5,1])
		//rotate([0,0,-90])
		intersection() {
			difference() {
			translate([20,-10,0])
				scale([0.01,0.01,0.01])
					linear_extrude(height = h, convexity = 10 )
						import (file = "floor3.dxf", layer = "walls5a");
				//scale([0.01,0.01,0.01])
					//rotate([0,0,90]) translate([2000,-1000,1000]) linear_extrude(height = 1500, convexity = 10 )
						//import (file = "floor3.dxf", layer = "windows4a");
			}
				translate([40,3.7,0]) rotate([90,0,0]) baseRoof(0,(1.5/2),83.7,107.4);
			}
}
module groundWalls() {
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
render(convexity = 10) {
lev0Plate(200);
lev0Wall(2700);
translate([0,0,12]) lev1Plate(200);
translate([0,0,12]) lev1Wall(3000);
translate ([0,0,25]) lev0Plate(200);
translate ([20,-10,27]) lev2Wall(3000);
translate ([0,0,40]) lev1Plate(200);
translate ([20,-10,42]) lev3Wall(3000);
translate ([0,0,55]) lev0Plate(200);
translate ([20,-10,70]) lev3Plate(200);
translate ([0,0,56.99]) lev4WallA(4500);
translate ([20,-10,57]) lev4WallB(3000);
translate ([20,-10,85]) lev4Plate(200);
translate ([123.7,-23.9,57]) circleRoof(20,30);
translate ([20,-10,72]) lev5WallA(1500);
translate ([20,-10,85]) lev5Plate(200);
translate ([0,0,86.99]) lev5WallB(3000);
translate ([101.1,-100.15,87]) circleRoof(13.5,27);
translate ([0,0,25.1]) difference() {
	translate ([-33.7,26.3,0]) rotate([0,0,-90]) ground();
	translate ([0,0,-0.5]) perimeter(3100);
}
translate([36.3,3.7,72]) rotate([0,0,-90]) fullRoof();
//rotate([0,0,-90]) coolRoof(2,[0,0,72],8.7,30,10,5,100,31);
//roof(2,[40,-100,87],5,25,83.7,100);
}
