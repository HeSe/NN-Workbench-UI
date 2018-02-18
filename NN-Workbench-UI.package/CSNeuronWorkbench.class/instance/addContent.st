initialization
addContent
	
	self nnetwork layers withIndexDo: [ :each :idx| |child| 
		  child := 
				(BlCSNeuronListElement new
					nnlayer: each;
					layer: idx;
					padding: (BlInsets top: 5 right: 50 bottom: 5 left: 50);
					addEventHandlerOn: BlCSAddNeuronElementEvent do: [:anEvent | self addNeuron: anEvent target ];
					addEventHandlerOn: BlCSRemoveNeuronElementEvent do: [ :anEvent | self removeNeuron: anEvent target ];
					yourself) .
				each neurons do:[:neuron | self addNeuron: (child addNeuron: neuron)].	
		
				container addChild: child].
	
	