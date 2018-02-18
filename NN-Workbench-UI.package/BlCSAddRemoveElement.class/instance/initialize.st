initialization
initialize
	| addBtn removeBtn |
	super initialize.
	self size: 30 @ 15.
	
	self layout: BlLinearLayout horizontal alignCenter.
	self background: Color veryDarkGray.
	self constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent.
		c linear horizontal alignCenter.
		c linear vertical alignCenter.].
	
	addBtn := BlCSAddButtonElement new
		addEventHandlerOn: BlClickEvent do: [ self fireEvent: (BlCSAddElementEvent new yourself) ];
		yourself.
	removeBtn := BlCSRemoveButtonElement new
		addEventHandlerOn: BlClickEvent do: [ self fireEvent: (BlCSRemoveElementEvent new yourself)  ];
		yourself.
		
	self addChild: addBtn.
	self addChild: BlCSDividerElement new.
	self addChild: removeBtn.