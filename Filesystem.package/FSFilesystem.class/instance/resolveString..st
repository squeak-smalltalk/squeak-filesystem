navigating
resolveString: aString 
	^ workingDirectory resolvePath: (self pathFromString: aString)