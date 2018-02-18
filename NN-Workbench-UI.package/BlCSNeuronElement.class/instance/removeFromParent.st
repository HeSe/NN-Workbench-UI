accessing
removeFromParent

	(self userData at: #lines)
		do:[:each| each removeFromParent ].
	attachIn removeFromParent.
	attachOut removeFromParent. 
	container removeChildren.
	container removeFromParent.
	super removeFromParent. 