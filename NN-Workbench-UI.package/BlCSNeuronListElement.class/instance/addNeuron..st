initialization
addNeuron: aNeuron

	 | neuron |
neuron := (BlCSNeuronElement new
		layer: self layer;
		neuron: aNeuron;
		constraintsDo: [ :c |
			c padding: (BlInsets bottom: 15) ];
		yourself).
		
		container addChild: neuron.	
		self updateLabelString.
		container changed.
		^neuron