module walls(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "cad/floor0.dxf", layer = "walls");
}
walls(1000);
