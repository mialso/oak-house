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

module highRoof(thick,start,out,height,sizeX,sizeY) {
	/**/translate([start[0]+sizeX/2,start[1]+sizeY/2]) rotate([0,0,90]) roof(thick,[-sizeY/2,-sizeX/2,start[2]],out,height,sizeY,sizeX);
}

roof(2,[-50,-60,0],5,25,100,40);
translate ([0,30,0]) rotate([0,0,90]) roof(2,[-50,-50,15],5,25,100,80);
