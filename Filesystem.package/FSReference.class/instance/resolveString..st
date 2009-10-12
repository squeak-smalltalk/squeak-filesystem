navigating
resolveString: aString
	| thePath |
	thePath := filesystem stringToPath: aString.
	^ filesystem referenceTo: (path resolve: thePath)