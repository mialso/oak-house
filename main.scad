include <constants.scad>
use <modules/tools.scad>
use <modules/walls.scad>
use <modules/plates.scad>
use <modules/fundament.scad>

cotlovan();

fundament();
//echo(floor0Height);
color([1,0,0]) lev0Walls((lev15height-(fundamentLow+fundamentThick))*100);
color([0,1,0]) lev0Plate(200);
lev05Plate(200);
lev1Plate(200);
color([1,0,1]) verandaPlate(200);
lev15Plate(200);
//color([1,0,0]) mainWalls(3000);
//color([1,0,0]) verandaWalls(3000);
//lev2Plate(200);
//lev25Plate(200);
