initialization
removeNeuron: aNeuron

	 | neuronElement |
    container children size = 0 ifTrue:[^self].
	 neuronElement := container children last.
	 neuronElement removeFromParent.
	 self updateLabelString.
	 container changed.
	 ^neuronElement