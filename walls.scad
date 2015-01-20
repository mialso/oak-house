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
	   import (file = "perimeter.dxf", layer = "lev0Floor");
}

module lev0Wall(h) {
	color([0.5,0.5,0.7])
		scale([0.01,0.01,0.01])
			translate([0,0,200])
				difference() {
					linear_extrude(height = h, convexity = 3 )
						import (file = "perimeter.dxf", layer = "lev0Wall");
					linear_extrude(height = h-300, convexity = 3)
						import (file = "perimeter.dxf", layer = "lev0Doors");
				}
}

module lev1Plate(h) {
	color([0.5,0.5,0.9])
		scale([0.01,0.01,0.01])
			translate([0,0,1000])   
				linear_extrude(height = h)
					import (file = "perimeter.dxf", layer = "lev1Floor");
}

module lev1Wall(h) {
	color([0.5,0.5,1])
		scale([0.01,0.01,0.01])
			translate([0,0,1200])
				difference() {
					linear_extrude(height = h, convexity = 3 )
						import (file = "perimeter.dxf", layer = "lev1Wall");
					translate([0,0,-10]) linear_extrude(height = h-300, convexity = 3 )
						import (file = "perimeter.dxf", layer = "lev1Doors");
					translate([0,0,1600]) linear_extrude(height = 1000, convexity = 3)
						import (file = "perimeter.dxf", layer = "lev3Wind");
				}
}
lev0Plate(200);
lev0Wall(2300);
lev1Plate(200);
lev1Wall(2800);

//scale([0.01,0.01,0.01]) linear_extrude(height = 3000)
   //import (file = "perimeter.dxf", layer = "mainEnter");
/*scale([0.01,0.01,0.01]) difference() {
	 linear_extrude(height = 3000)
	   import (file = "perimeter.dxf", layer = "grWall");
	translate ([0,0,500]) color([0.5,0.5,0.5]) linear_extrude(height = 2000, convexity = 3)
	    import (file = "perimeter.dxf", layer = "grWindows");
}*/
