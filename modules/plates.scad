
module lev0Plate(h) {
	color([0.5,0.5,0.5]) scale([0.01,0.01,0.01]) linear_extrude(height = h, convexity = 3 )
	   import (file = "../cad/floor01.dxf", layer = "plate0");
}
