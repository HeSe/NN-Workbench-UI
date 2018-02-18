initialization
drawSymbolOnCanvas: aCanvas

	self drawCircle: aCanvas.
	
	aCanvas stroke
		paint: Color white;
		path: (aCanvas shape line: (self height/4.0)@(self width/2.0) to: (self height*3/4.0)@(self width/2.0));
		draw.