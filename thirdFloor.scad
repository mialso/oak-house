use <roof.scad> 
module thirdFloor() {
	difference() {
		translate([70,40,70]) cube([30,40,30]);
		#highRoof(20,[0,40,85],5,35,100,80);
	}
}

thirdFloor();
