initialization
initialize

	super initialize.
	
	self
		layout: BlFlowLayout new horizontal ;
		background: Color veryDarkGray;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent.
			"will take 100% of the parent"
			c linear weight: 1 ].
	
	container := BlElement new
		layout: BlFlowLayout new horizontal;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		clipChildren: false.	
	
	self addChild: container. 