initialization
drawCircle: aCanvas

	aCanvas stroke
		paint: Color white;
		path: (aCanvas shape circleAt: (self height/2.0)@(self width/2.0) radius: (self width/2.0) - 1);
		draw.