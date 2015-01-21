include <constants.scad>

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
module lev0Plate(h) {
	color([0.5,0.5,0.5]) scale([0.01,0.01,0.01]) linear_extrude(height = h)
	   import (file = "floor01.dxf", layer = "plate0");
}

module lev0Wall(h) {
	color([0.5,0.5,0.7])
		scale([0.01,0.01,0.01])
			translate([0,0,200])
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
			translate([0,0,1000])   
				linear_extrude(height = h)
					import (file = "floor01.dxf", layer = "plate1");
}

module lev1Wall(h) {
	color([0.5,0.5,1])
		scale([0.01,0.01,0.01])
			translate([0,0,1200])
				difference() {
					linear_extrude(height = h, convexity = 3 )
						import (file = "floor01.dxf", layer = "walls1");
					translate([0,0,-10]) linear_extrude(height = h-300, convexity = 3 )
						import (file = "floor01.dxf", layer = "doors1");
					translate([0,0,1600]) linear_extrude(height = 1000, convexity = 3)
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

lev0Plate(200);
lev0Wall(2300);
lev1Plate(200);
lev1Wall(2800);
translate ([0,0,25]) lev0Plate(200);
translate ([20,-10,27]) lev2Wall(2800);
translate ([0,0,30]) lev1Plate(200);
translate ([20,-10,42]) lev3Wall(3000);

//scale([0.01,0.01,0.01]) linear_extrude(height = 3000)
   //import (file = "perimeter.dxf", layer = "mainEnter");
/*scale([0.01,0.01,0.01]) difference() {
	 linear_extrude(height = 3000)
	   import (file = "perimeter.dxf", layer = "grWall");
	translate ([0,0,500]) color([0.5,0.5,0.5]) linear_extrude(height = 2000, convexity = 3)
	    import (file = "perimeter.dxf", layer = "grWindows");
}*/
