initialization
initialize
	super initialize.
	self layout: BlLinearLayout horizontal alignCenter.
	self size: 30 @ 30.
	self addEventHandler: BlSelectionHandler new.