initialization
addNeuron: aNeuron
	
	container children do:[:each | 
		each neuronElements do: [:element| |line|
	
	aNeuron layer = (element layer - 1) 
		ifTrue:[ line := self connectorLine.
					line fromAnchor: (BlElementCenterAnchor element: aNeuron attachOut).
					line toAnchor: (BlElementCenterAnchor element: element attachIn).
					self addChild: line].
	element layer = (aNeuron layer - 1)
		ifTrue:[ line := self connectorLine.
					line fromAnchor: (BlElementCenterAnchor element: element attachOut).
					line toAnchor: (BlElementCenterAnchor element: aNeuron attachIn).
					self addChild: line].
	line notNil
		ifTrue:[(aNeuron userData at: #lines) add: line.
				  (element userData at: #lines) add: line]
	]].

	