initialization
addNeuron: aTarget

	| neuron |
	neuron := aTarget addNeuron: NNNeuron new.
	
	container children do:[:each | 
		each neuronElements do: [:element| |line|
	
	neuron layer = (element layer - 1) 
		ifTrue:[ line := self connectorLine.
					line fromAnchor: (BlElementCenterAnchor element: neuron attachOut).
					line toAnchor: (BlElementCenterAnchor element: element attachIn).
					self addChild: line].
	element layer = (neuron layer - 1)
		ifTrue:[ line := self connectorLine.
					line fromAnchor: (BlElementCenterAnchor element: element attachOut).
					line toAnchor: (BlElementCenterAnchor element: neuron attachIn).
					self addChild: line].
	line notNil
		ifTrue:[(neuron userData at: #lines) add: line.
				  (element userData at: #lines) add: line]
	]].

	