initialization
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: self backgroundPaint;
		path: self boundsInLocal;
		draw.
		aCanvas stroke
		paint: Color white;
		path: (aCanvas shape line: (self height/2.0)@(self width/7.0) to: (self height/2.0)@(self width*6/7.0));
		draw.