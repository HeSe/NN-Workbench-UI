initialization
neuronCountLabel
	
	| text |
	
	text := self currentLabelText.
	
	^ BlTextElement new
		text: text;
		padding: (BlInsets all: 10);
		constraintsDo: [ :c |
			c vertical fitContent.
			c frame vertical alignCenter. ];
		yourself
 