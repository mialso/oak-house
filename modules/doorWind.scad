include <../constants.scad>

module doors01() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "doors01");
}

module doors02() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "doors02");
}

module windows01() {
	linear_extrude(height = 1000, convexity = 3)
					import (file = "../cad/floor0.dxf", layer = "windows01");
}

module doors10() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "doors10");
}

module doors11() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "doors11");
}

module doors12() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "doors12");
}

module doors13() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "doors13");
}

module windows1() {
	linear_extrude(height = 1500, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "windows1");
}

module windows10() {
	linear_extrude(height = 500, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "windows10");
}

module windows11() {
	linear_extrude(height = 1500, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "windows11");
}

module windows12(h) {
	linear_extrude(height = h, convexity = 3)
					import (file = "../cad/floor1.dxf", layer = "windows12");
}

module doors21() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor2.dxf", layer = "doors21");
}

module doors20() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor2.dxf", layer = "doors20");
}

module doors22() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor2.dxf", layer = "doors22");
}

module windows20() {
	linear_extrude(height = 1500, convexity = 3)
					import (file = "../cad/floor2.dxf", layer = "windows1");
}

module windows21() {
	linear_extrude(height = 1500, convexity = 3)
					import (file = "../cad/floor2.dxf", layer = "windows21");
}

module windows30() {
	linear_extrude(height = 1200, convexity = 3)
					import (file = "../cad/floor3.dxf", layer = "windows30");
}

module doors30() {
	linear_extrude(height = doorsHeight*100, convexity = 3)
					import (file = "../cad/floor3.dxf", layer = "doors30");
}

module doors31() {
	linear_extrude(height = 2500, convexity = 3)
					import (file = "../cad/floor3.dxf", layer = "doors31");
}

