initialization
initialize
	| addRemoveBtn  |
	super initialize.
	
	self size: 150 @ 350.
	
	self layout: BlLinearLayout vertical alignCenter.
	self background: Color veryDarkGray.
	self constraintsDo: [ :c|
		c horizontal fitContent.
		c vertical fitContent.
		c padding: (BlInsets all: 15) ].
	
	addRemoveBtn := BlCSAddRemoveElement new
		addEventHandlerOn: BlCSAddElementEvent do: [ self signalAddNeuronElement ];
		addEventHandlerOn: BlCSRemoveElementEvent do: [ self signalRemoveNeuronElement ];
		yourself.
	
	container := BlElement new
		layout: BlLinearLayout vertical alignCenter;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		clipChildren: false.

	labelText := self neuronCountLabel.
		
	self addChild: addRemoveBtn.
	self addChild: labelText.
	self addChild: container 