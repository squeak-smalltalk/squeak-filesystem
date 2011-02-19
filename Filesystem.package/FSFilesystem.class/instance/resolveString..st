navigating
resolveString: aString
	^ workingDirectory resolvePath: (store pathFromString: aString)