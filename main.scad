include <constants.scad>
use <modules/tools.scad>
use <modules/walls.scad>
use <modules/plates.scad>
use <modules/fundament.scad>
use <modules/roof.scad>

cotlovan();

fundament();
//echo(floor0Height);
color([1,0,0]) lev0Walls((lev15height-(fundamentLow+fundamentThick))*100);
color([0,1,0]) lev0Plate(200);
lev05Plate(200);
lev1Plate(200);
color([1,0,1]) verandaPlate(200);
lev15Plate(200);

lev1Walls(floorHeight*100);
lev2Plate(200);
lev25Plate(200);
lev3Plate(200);
lev2Walls(floorHeight*100);
lev3Walls(3500);

render() translate([30,70,46])full2Roof();
render() translate([137.4,133.7,61]) circleRoof(18,23.7);
render() translate([30+3.7+23.9,30+7.4+120,lev2height]) rotate([0,0,90]) circleRoof(21,27.6);

