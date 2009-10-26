navigating
resolveString: aString
	| filesystem thePath |
	filesystem := (Resolver resolve: origin) filesystem.
	thePath := filesystem stringToPath: aString.
	^ self withPath: (path resolvePath: thePath)