accessing
drawOnSpartaCanvas: aCanvas
	| roundedRectangle |
	roundedRectangle := aCanvas shape
		roundedRectangle: (self boundsInLocal insetBy: 2)
		radii: (BlCornerRadii radius: self cornerRadius).
			
	aCanvas clip
		by: roundedRectangle
		during: [ aCanvas fill
				paint: self backgroundPaint;
				path: self boundsInLocal;
				draw ].
	aCanvas stroke
		paint: Color white;
		path: roundedRectangle;
		width: 2;
		draw.		
