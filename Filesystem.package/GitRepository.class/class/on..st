initialize-release
on: anFSReference
	| isClass |
	isClass := (anFSReference isKindOf: Class).
	isClass ifTrue: [self error: 'Please provide an instance of a filesystem, not a class.'].
	^self basicNew initializeOn: anFSReference
	