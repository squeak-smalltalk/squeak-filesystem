converting
asAbsolute
	^ self isAbsolute
		ifTrue: [self]
		ifFalse: [filesystem referenceTo: (filesystem resolve: path)]