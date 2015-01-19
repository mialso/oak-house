

use <roof.scad> 
use <tools.scad>
module garage(height) {
	cube([100,40,height]);
}

module kitchen(height) {
	translate([0,40,0]) cube([40,80,height]);
	translate([40,40,0]) cube([30,20,height]);
}

module hall(height) {
	translate([70,40,10]) cube([30,40,height]);
}

module large(height) {
	translate([40,80,10]) cube([60,40,height]);
	translate([100,100,10]) rotate([0,0,90]) cylinder(h=height,r=20,$fn=6);
}

module lowLev(height) {
	union() {
		garage(height);
		kitchen(height);
	}
}

module high(height) {
	union() {
		hall(30);
		large(30);
	}
}

module ugr() {
	color([0.5, 0.5, 0.5])
		lowLev(25);
}

module gr() {
	color([0.5,0.5,1])
		high(30);
}

module zero() {
	color([0.5,0.5,0])
		translate([0,0,25]) lowLev(30);
}

module first() {
	color([0.5,1,0.5])
		union() {
			translate([0,0,30]) high(30);
			translate([0,0,60]) large(15);
		}
}

module second() {
	color([0.5,0,0.5])
		union() {
			translate([0,0,55]) garage(15);
			translate([0,0,55]) kitchen(30);
		}
}

module third() {
	color([0,0.5,0.5]) translate([0,0,60]) hall(15);
}

ugr();
gr();
zero();
first();
second();
third();
//garageRoof(2,[0,0,70],5,35);
highRoof(2,[0,40,85],5,35,100,80);
//translate ([-30,-30,22]) ground();
