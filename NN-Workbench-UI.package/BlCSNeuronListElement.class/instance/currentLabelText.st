initialization
currentLabelText

	^(BrRopedText string: self currentLabelString)
	 attributes: {
		BrTextForegroundAttribute paint: Color white.
		BrFontSizeAttribute size: 36.
		BrFontFamilyAttribute named: 'Bauhaus 93' "'Curlz MT'" "'Calibri'" };
		yourself.