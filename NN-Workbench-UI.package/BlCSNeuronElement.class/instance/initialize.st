accessing
initialize

	super initialize.
	self size: 80 @ 80.
	self userData at: #lines put: OrderedCollection new.
	container := BlElement new
		layout: BlFrameLayout new;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		clipChildren: false.	
	
	self addChild: container. 
	
	attachOut := self attachPoint.
	attachOut
		constraintsDo: [ :c |
			c frame horizontal alignRight.
			c frame vertical alignCenter ].
		
	attachIn := self attachPoint.
	attachIn
		constraintsDo: [ :c |
			c frame horizontal alignLeft.
			c frame vertical alignCenter ].
	
	container addChild: attachOut.	
	container addChild: attachIn.