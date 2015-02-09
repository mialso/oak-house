include <constants.scad>

module roof(thick,start,out,height,sizeX,sizeY) {
	polyhedron
		(points = [
			//low points
			[start[0]-out,start[1]-out,start[2]],
			[start[0]+sizeX+out,start[1]-out,start[2]],
			[start[0]+sizeX+out,start[1]+sizeY+out,start[2]],
			[start[0]-out,start[1]+sizeY+out,start[2]],
			[start[0]+sizeX/2,start[1]-out,start[2]+height],
			[start[0]+sizeX/2,start[1]+sizeY+out,start[2]+height],
			//high points
			[start[0]-out,start[1]-out,start[2]+thick],
			[start[0]+sizeX+out,start[1]-out,start[2]+thick],
			[start[0]+sizeX+out,start[1]+sizeY+out,start[2]+thick],
			[start[0]-out,start[1]+sizeY+out,start[2]+thick],
			[start[0]+sizeX/2,start[1]-out,start[2]+height+thick],
			[start[0]+sizeX/2,start[1]+sizeY+out,start[2]+height+thick],
		],
		faces = [
			//low faces
			[1,5,4],[1,2,5],[0,4,3],[3,4,5],
			//high faces
			[7,10,11],[7,11,8],[6,9,10],[9,11,10],
			//front faces
			[0,6,10],[0,10,4],[1,10,7],[1,4,10],
			[1,7,8],[1,8,2],
			[3,11,9],[3,5,11],[2,8,11],[2,11,5],
			[0,3,6],[6,3,9]
		]
	);
}

module garageRoof(thick,start,out,height) {
	polyhedron
		(points = [
			//low points
			[start[0]-out,start[1]-out,start[2]],
			[start[0]+garageX+out,start[1]-out,start[2]],
			[start[0]+garageX+out,start[1]+garageY+out,start[2]],
			[start[0]-out,start[1]+garageY+out,start[2]],
			[start[0]+garageX/2,start[1]-out,start[2]+height],
			[start[0]+garageX/2,start[1]+garageY+out,start[2]+height],
			//high points
			[start[0]-out,start[1]-out,start[2]+thick],
			[start[0]+garageX+out,start[1]-out,start[2]+thick],
			[start[0]+garageX+out,start[1]+garageY+out,start[2]+thick],
			[start[0]-out,start[1]+garageY+out,start[2]+thick],
			[start[0]+garageX/2,start[1]-out,start[2]+height+thick],
			[start[0]+garageX/2,start[1]+garageY+out,start[2]+height+thick],
		],
		faces = [
			//low faces
			[1,5,4],[1,2,5],[0,4,3],[3,4,5],
			//high faces
			[7,10,11],[7,11,8],[6,9,10],[9,11,10],
			//front faces
			[0,6,10],[0,10,4],[1,10,7],[1,4,10],
			[1,7,8],[1,8,2],
			[3,11,9],[3,5,11],[2,8,11],[2,11,5],
			[0,3,6],[6,3,9]
		]
	);
	
}

module coolRoof(thick,start,out,height,heightV,weightV,sizeX,sizeY) {
	polyhedron
		(points = [
			//low points
			[start[0]-out,start[1]-out,start[2]],
			[start[0]+sizeX+out,start[1]-out,start[2]],
			[start[0]+sizeX+out,start[1]+sizeY+out,start[2]],
			[start[0]-out,start[1]+sizeY+out,start[2]],
			[start[0]+sizeX/2-(heightV*(sizeX/2)/height),start[1]-out,start[2]+height-heightV],
			[start[0]+sizeX/2+(heightV*(sizeX/2)/height),start[1]-out,start[2]+height-heightV],
			[start[0]+sizeX/2,start[1]+weightV,start[2]+height],
			[start[0]+sizeX/2,start[1]+sizeY+out,start[2]+height],
			//high points
			[start[0]-out,start[1]-out,start[2]+thick],
			[start[0]+sizeX+out,start[1]-out,start[2]+thick],
			[start[0]+sizeX+out,start[1]+sizeY+out,start[2]+thick],
			[start[0]-out,start[1]+sizeY+out,start[2]+thick],
			[start[0]+sizeX/2-(heightV*(sizeX/2)/height),start[1]-out,start[2]+height-heightV+thick],
			[start[0]+sizeX/2+(heightV*(sizeX/2)/height),start[1]-out,start[2]+height-heightV+thick],
			
			
			[start[0]+sizeX/2,start[1]+weightV,start[2]+height+thick],
			[start[0]+sizeX/2,start[1]+sizeY+out,start[2]+height+thick],
		],
		faces = [
			//low faces
			[3,0,4],[3,4,6],[3,6,7],[2,7,6],[2,6,5],[2,5,1],[6,4,5],[12,14,13],
			//high faces
			[11,12,8],[11,14,12],[11,15,14],[10,9,13],[10,13,14],[10,14,15],
			//front faces
			[0,8,12],[0,12,4],[4,12,13],[4,13,5],[1,5,13],[1,13,9],
			[1,9,10],[1,10,2],
			[10,15,7],[10,7,2],[15,11,3],[15,3,7],
			[8,0,3],[8,3,11]
		]
	);
}

module highRoof(thick,start,out,height,sizeX,sizeY) {
	/**/translate([start[0]+sizeX/2,start[1]+sizeY/2]) rotate([0,0,90]) roof(thick,[-sizeY/2,-sizeX/2,start[2]],out,height,sizeY,sizeX);
}

module circleRoof(h,radius) {
	difference() {
		union() {
			translate([0,0,2]) linear_extrude(height = h, convexity = 10, scale=0)
		circle(r=radius, $fn = 8);
			linear_extrude(height = 2, convexity = 10)
		circle(r=radius, $fn = 8);
		}
	linear_extrude(height = h, convexity = 10, scale=0)
		circle(r=radius, $fn = 8);
	translate([-radius-1,0,0]) cube(radius*2+2,radius+2,radius+2, center= true);
	}
}

module baseRoof(thick,k,width,long) {
	linear_extrude(height = long, convexity = 10)
		polygon(
			points = [
				[0,0],[0,thick],[width/2,(thick+k*width/2)],[width,thick],[width,0]
			],
			paths = [
				[0,1,2,3,4]
			],
			convexity = 5
		);
}

module base2Roof(thick,k,width,long,Vsize,Vdegr) {
	difference() {
		linear_extrude(height = long, convexity = 10)
			polygon(
				points = [
					[0,0],[0,thick],[width/2,(thick+k*width/2)],[width,thick],[width,0]
				],
				paths = [
					[0,1,2,3,4]
				],
				convexity = 5
			);
		 translate([0,k*width/2+thick,long-Vsize]) rotate([Vdegr,0,0]) cube(size=[width,width,long]);
	}
}

module viewRoof(thick,k,width,long) {
	difference () {
		baseRoof(thick,k,width,long);
		translate([0,-thick,-1]) scale([1,1,1.5]) baseRoof(thick,k,width,long);
	}
}

module view2Roof(thick,k,width,long,Vsize,Vdegr) {
	difference () {
		base2Roof(thick,k,width,long,Vsize,Vdegr);
		translate([0,-thick,-0.10]) scale([1,1,1.01]) base2Roof(thick,k,width,long,Vsize,Vdegr);
	}
}
module fullRoof() {
	difference() {
		translate([0,40,0]) rotate([90,0,0]) viewRoof(2,(1/2),107.4,80);
		translate([0,3.7,15]) rotate([90,0,90]) baseRoof(0,(1.5/2),83.7,108);
		translate([-1,4,-1]) cube([109,60,16.01]);
	}
	difference() {
		translate([0,3.7,15]) rotate([90,0,90]) viewRoof(2,(1.5/2),83.7,107.4);
		translate([0,40,0]) rotate([90,0,0]) baseRoof(0,(1/2),107.4,80);
		translate([50-20+3.7,87.4+1,15]) rotate([90,0,0]) scale([1,1,1.1]) baseRoof(13,(1.5/2),40,40);
	}
	difference() {
		translate([50-20+3.7,87.4,28]) rotate([90,0,0]) viewRoof(2,(1.5/2),40,40);
		translate([0,3.7,15]) rotate([90,0,90]) baseRoof(0,(1.5/2),83.7,107.4);
	}

}
module full2Roof() {
	difference() {
		translate([0,40,0]) rotate([90,0,0]) view2Roof(2,(1/2),107.4,80,20,30);
		translate([0,3.7,15]) rotate([90,0,90]) baseRoof(0,(1.5/2),83.7,108);
		translate([-1,4,-1]) cube([109,60,16.01]);
	}
	difference() {
		union() {
			translate([53.7,3.7,15]) rotate([90,0,90]) view2Roof(2,(1.5/2),83.7,53.7,15,30);
			translate([53.7,87.4,15]) rotate([90,0,-90]) view2Roof(2,(1.5/2),83.7,53.7,15,30);
		}
		translate([0,40,0]) rotate([90,0,0]) baseRoof(0,(1/2),107.4,80);
		translate([50-20+3.7,87.4+1,15]) rotate([90,0,0]) scale([1,1,1.1]) baseRoof(13,(1.5/2),40,40);
	}
	difference() {
		translate([50-20+3.7,87.4,28]) rotate([90,0,0]) viewRoof(2,(1.5/2),40,40);
		translate([0,3.7,15]) rotate([90,0,90]) baseRoof(0,(1.5/2),83.7,107.4);
	}

}
/*
//garageRoof
difference() {
	translate([0,40,0]) rotate([90,0,0]) viewRoof(2,(1.5/2),100,80);
	translate([0,0,15]) rotate([90,0,90]) baseRoof(2,(1.5/2),80,100);
	translate([-1,4,-1]) cube([102,60,16.01]);
}
//center Roof
difference() {
	translate([0,0,15]) rotate([90,0,90]) viewRoof(2,(1.5/2),80,100);
	translate([0,40,0]) rotate([90,0,0]) baseRoof(2,(1.5/2),100,80);
	translate([50-20,81,14]) rotate([90,0,0]) scale([1,1,1.1]) baseRoof(13,(1.5/2),40,40);
}

difference() {
	translate([50-20,80,25]) rotate([90,0,0]) viewRoof(2,(1.5/2),40,40);
	translate([0,0,15]) rotate([90,0,90]) baseRoof(2,(1.5/2),80,100);
}
*/
//circleRoof(30,25);
//roof(2,[-50,-60,0],5,25,100,40);
//translate ([0,30,0]) rotate([0,0,90]) roof(2,[-50,-50,15],5,25,80,100);
//coolRoof(50,[0,0,15],8.7,30,10,5,100,32.3);
full2Roof();
