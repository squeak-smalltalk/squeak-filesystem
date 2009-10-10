navigating
resolveString: aString
	^ workingDirectory resolvePath: (self stringToPath: aString)