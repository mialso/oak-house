include <constants.scad>
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
			[1,5,4],[1,2,5],[0,3,4],[3,4,5],
			//high faces
			[7,11,10],[7,8,11],[6,9,10],[9,10,11],
			//front faces
			[0,6,10],[0,4,10],[1,7,10],[1,4,10],
			[1,7,8],[1,2,8],
			[3,9,11],[3,5,11],[2,8,11],[2,5,11],
			[0,6,3],[6,3,9]
		]
	);
	
}

module highRoof(thick,start,out,height) {
	polyhedron
		(points = [
			//low points
			[start[0]+mainX+out,start[1]-out,start[2]],
			[start[0]+mainX+out,start[1]+mainY+out,start[2]],
			[start[0]-out,start[1]+mainY+out,start[2]],
			[start[0]-out,start[1]-out,start[2]],
			[start[0]-out,start[1]+mainY/2,start[2]+height],
			[start[0]+mainX+out,start[1]+mainY/2,start[2]+height],
			//high points
			[start[0]+mainX+out,start[1]-out,start[2]+thick],
			[start[0]+mainX+out,start[1]+mainY+out,start[2]+thick],
			[start[0]-out,start[1]+mainY+out,start[2]+thick],
			[start[0]-out,start[1]-out,start[2]+thick],
			[start[0]-out,start[1]+mainY/2,start[2]+height+thick],
			[start[0]+mainX+out,start[1]+mainY/2,start[2]+height+thick]
		],
		faces = [
			//low faces
			[0,5,3],[3,4,5],[5,4,1],[1,2,4],
			//high faces
			[6,11,9],[9,10,11],[11,10,7],[7,8,10],
			//front faces
			[0,6,5],[6,5,11],[5,11,1],[1,7,11],
			[1,7,8],[1,2,8],
			[3,9,10],[3,4,10],[2,8,10],[2,4,10],
			[0,6,3],[6,3,9]
		]
	);
}

garageRoof(2,[-50,-60,0],5,25);
highRoof(2,[-50,-20,15],5,25);
